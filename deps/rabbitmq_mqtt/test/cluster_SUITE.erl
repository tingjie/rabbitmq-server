%% This Source Code Form is subject to the terms of the Mozilla Public
%% License, v. 2.0. If a copy of the MPL was not distributed with this
%% file, You can obtain one at https://mozilla.org/MPL/2.0/.
%%
%% Copyright (c) 2007-2022 VMware, Inc. or its affiliates.  All rights reserved.
%%
-module(cluster_SUITE).
-compile([export_all, nowarn_export_all]).

-include_lib("common_test/include/ct.hrl").
-include_lib("eunit/include/eunit.hrl").
-import(util, [expect_publishes/2]).

-import(rabbit_ct_broker_helpers,
        [setup_steps/0,
         teardown_steps/0,
         get_node_config/3,
         rabbitmqctl/3,
         rpc/5,
         stop_node/2,
         drain_node/2,
         revive_node/2]).

all() ->
    [
     {group, cluster_size_3},
     {group, cluster_size_5}
    ].

groups() ->
    [
     {cluster_size_3, [], [
                           maintenance
                          ]},
     {cluster_size_5, [], [
                           connection_id_tracking,
                           connection_id_tracking_on_nodedown,
                           connection_id_tracking_with_decommissioned_node
                          ]}
    ].

suite() ->
    [{timetrap, {minutes, 5}}].

%% -------------------------------------------------------------------
%% Testsuite setup/teardown.
%% -------------------------------------------------------------------

merge_app_env(Config) ->
    rabbit_ct_helpers:merge_app_env(Config,
                                    {rabbit, [
                                              {collect_statistics, basic},
                                              {collect_statistics_interval, 100}
                                             ]}).

init_per_suite(Config) ->
    rabbit_ct_helpers:log_environment(),
    rabbit_ct_helpers:run_setup_steps(Config).

end_per_suite(Config) ->
    rabbit_ct_helpers:run_teardown_steps(Config).

init_per_group(cluster_size_3, Config) ->
    case rabbit_ct_helpers:is_mixed_versions() of
        true ->
            {skip, "maintenance mode wrongly closes cluster-wide MQTT connections "
             " in RMQ < 3.11.2 and < 3.10.10"};
        false ->
            set_cluster_size(3, Config)
    end;
init_per_group(cluster_size_5, Config) ->
    set_cluster_size(5, Config).

set_cluster_size(NodesCount, Config) ->
    rabbit_ct_helpers:set_config(
      Config, [{rmq_nodes_count, NodesCount}]).

end_per_group(_, Config) ->
    Config.

init_per_testcase(Testcase, Config) ->
    rabbit_ct_helpers:testcase_started(Config, Testcase),
    rabbit_ct_helpers:log_environment(),
    Config1 = rabbit_ct_helpers:set_config(Config, [
        {rmq_nodename_suffix, Testcase},
        {rmq_extra_tcp_ports, [tcp_port_mqtt_extra,
                               tcp_port_mqtt_tls_extra]},
        {rmq_nodes_clustered, true}
      ]),
    rabbit_ct_helpers:run_setup_steps(Config1,
      [ fun merge_app_env/1 ] ++
      setup_steps() ++
      rabbit_ct_client_helpers:setup_steps()).

end_per_testcase(Testcase, Config) ->
    rabbit_ct_helpers:run_teardown_steps(Config,
      rabbit_ct_client_helpers:teardown_steps() ++
      teardown_steps()),
    rabbit_ct_helpers:testcase_finished(Config, Testcase).

%% -------------------------------------------------------------------
%% Test cases
%% -------------------------------------------------------------------

maintenance(Config) ->
    {ok, MRef0, C0} = connect_to_node(Config, 0, <<"client-0">>),
    {ok, MRef1a, C1a} = connect_to_node(Config, 1, <<"client-1a">>),
    {ok, MRef1b, C1b} = connect_to_node(Config, 1, <<"client-1b">>),
    timer:sleep(500),

    ok = drain_node(Config, 2),
    ok = revive_node(Config, 2),
    timer:sleep(500),
    [?assert(erlang:is_process_alive(C)) || C <- [C0, C1a, C1b]],

    ok = drain_node(Config, 1),
    [await_disconnection(Ref) || Ref <- [MRef1a, MRef1b]],
    ok = revive_node(Config, 1),
    ?assert(erlang:is_process_alive(C0)),

    ok = drain_node(Config, 0),
    await_disconnection(MRef0),
    ok = revive_node(Config, 0).

%% Note about running this testsuite in a mixed-versions cluster:
%% All even-numbered nodes will use the same code base when using a
%% secondary Umbrella. Odd-numbered nodes might use an incompatible code
%% base. When cluster-wide client ID tracking was introduced, it was not
%% put behind a feature flag because there was no need for one. Here, we
%% don't have a way to ensure that all nodes participate in client ID
%% tracking. However, those using the same code should. That's why we
%% limit our RPC calls to those nodes.
%%
%% That's also the reason why we use a 5-node cluster: with node 2 and
%% 4 which might not participate, it leaves nodes 1, 3 and 5: thus 3
%% nodes, the minimum to use Ra in proper conditions.

connection_id_tracking(Config) ->
    ID = <<"duplicate-id">>,
    {ok, MRef1, C1} = connect_to_node(Config, 0, ID),
    {ok, _, _} = emqtt:subscribe(C1, <<"TopicA">>, qos0),
    ok = emqtt:publish(C1, <<"TopicA">>, <<"Payload">>),
    ok = expect_publishes(<<"TopicA">>, [<<"Payload">>]),

    %% there's one connection
    assert_connection_count(Config, 4, 2, 1),

    %% connect to the same node (A or 0)
    {ok, MRef2, _C2} = connect_to_node(Config, 0, ID),
    %% C1 is disconnected
    await_disconnection(MRef1),
    assert_connection_count(Config, 4, 2, 1),

    %% connect to a different node (C or 2)
    {ok, _, C3} = connect_to_node(Config, 2, ID),
    %% C2 is disconnected
    await_disconnection(MRef2),
    assert_connection_count(Config, 4, 2, 1),
    ok = emqtt:disconnect(C3).

connection_id_tracking_on_nodedown(Config) ->
    Server = get_node_config(Config, 0, nodename),
    {ok, MRef, C} = connect_to_node(Config, 0, <<"simpleClient">>),
    {ok, _, _} = emqtt:subscribe(C, <<"TopicA">>, qos0),
    ok = emqtt:publish(C, <<"TopicA">>, <<"Payload">>),
    ok = expect_publishes(<<"TopicA">>, [<<"Payload">>]),
    assert_connection_count(Config, 4, 2, 1),
    ok = stop_node(Config, Server),
    await_disconnection(MRef),
    assert_connection_count(Config, 4, 2, 0),
    ok.

connection_id_tracking_with_decommissioned_node(Config) ->
    case rpc(Config, 0, rabbit_mqtt_ff, track_client_id_in_ra, []) of
        false ->
            {skip, "This test requires client ID tracking in Ra"};
        true ->
            Server = get_node_config(Config, 0, nodename),
            {ok, MRef, C} = connect_to_node(Config, 0, <<"simpleClient">>),
            {ok, _, _} = emqtt:subscribe(C, <<"TopicA">>, qos0),
            ok = emqtt:publish(C, <<"TopicA">>, <<"Payload">>),
            ok = expect_publishes(<<"TopicA">>, [<<"Payload">>]),

            assert_connection_count(Config, 4, 2, 1),
            {ok, _} = rabbitmqctl(Config, 0, ["decommission_mqtt_node", Server]),
            await_disconnection(MRef),
            assert_connection_count(Config, 4, 2, 0),
            ok
    end.

%%
%% Helpers
%%

assert_connection_count(_Config, 0,  _, NumElements) ->
    ct:fail("failed to match connection count ~b", [NumElements]);
assert_connection_count(Config, Retries, NodeId, NumElements) ->
    case util:all_connection_pids(Config) of
        Pids
          when length(Pids) =:= NumElements ->
            ok;
        _ ->
            timer:sleep(500),
            assert_connection_count(Config, Retries-1, NodeId, NumElements)
    end.

connect_to_node(Config, Node, ClientID) ->
  Port = get_node_config(Config, Node, tcp_port_mqtt),
  {ok, C} = connect(Port, ClientID),
  MRef = erlang:monitor(process, C),
  {ok, MRef, C}.

connect(Port, ClientID) ->
    {ok, C} = emqtt:start_link([{host, "localhost"},
                                {port, Port},
                                {clientid, ClientID},
                                {proto_ver, v4},
                                {connect_timeout, 1},
                                {ack_timeout, 1}]),
    {ok, _Properties} = emqtt:connect(C),
    unlink(C),
    {ok, C}.

await_disconnection(Ref) ->
    receive
        {'DOWN', Ref, _, _, _} -> ok
    after
        20_000 -> exit(missing_down_message)
    end.
