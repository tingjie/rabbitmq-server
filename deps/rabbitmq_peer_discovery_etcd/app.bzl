load("@rules_erlang//:erlang_bytecode2.bzl", "erlang_bytecode")
load("@rules_erlang//:filegroup.bzl", "filegroup")

def all_beam_files(name = "all_beam_files"):
    filegroup(
        name = "beam_files",
        srcs = ["ebin/rabbit_peer_discovery_etcd.beam", "ebin/rabbitmq_peer_discovery_etcd.beam", "ebin/rabbitmq_peer_discovery_etcd_app.beam", "ebin/rabbitmq_peer_discovery_etcd_sup.beam", "ebin/rabbitmq_peer_discovery_etcd_v3_client.beam"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_peer_discovery_etcd_beam",
        srcs = ["src/rabbit_peer_discovery_etcd.erl"],
        outs = ["ebin/rabbit_peer_discovery_etcd.beam"],
        hdrs = ["include/rabbit_peer_discovery_etcd.hrl"],
        app_name = "rabbitmq_peer_discovery_etcd",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app", "//deps/rabbitmq_peer_discovery_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbitmq_peer_discovery_etcd_app_beam",
        srcs = ["src/rabbitmq_peer_discovery_etcd_app.erl"],
        outs = ["ebin/rabbitmq_peer_discovery_etcd_app.beam"],
        app_name = "rabbitmq_peer_discovery_etcd",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbitmq_peer_discovery_etcd_beam",
        srcs = ["src/rabbitmq_peer_discovery_etcd.erl"],
        outs = ["ebin/rabbitmq_peer_discovery_etcd.beam"],
        app_name = "rabbitmq_peer_discovery_etcd",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbitmq_peer_discovery_etcd_sup_beam",
        srcs = ["src/rabbitmq_peer_discovery_etcd_sup.erl"],
        outs = ["ebin/rabbitmq_peer_discovery_etcd_sup.beam"],
        hdrs = ["include/rabbit_peer_discovery_etcd.hrl"],
        app_name = "rabbitmq_peer_discovery_etcd",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbitmq_peer_discovery_etcd_v3_client_beam",
        srcs = ["src/rabbitmq_peer_discovery_etcd_v3_client.erl"],
        outs = ["ebin/rabbitmq_peer_discovery_etcd_v3_client.beam"],
        hdrs = ["include/rabbit_peer_discovery_etcd.hrl"],
        app_name = "rabbitmq_peer_discovery_etcd",
        erlc_opts = "//:erlc_opts",
    )

def all_test_beam_files(name = "all_test_beam_files"):
    filegroup(
        name = "test_beam_files",
        testonly = True,
        srcs = ["test/rabbit_peer_discovery_etcd.beam", "test/rabbitmq_peer_discovery_etcd.beam", "test/rabbitmq_peer_discovery_etcd_app.beam", "test/rabbitmq_peer_discovery_etcd_sup.beam", "test/rabbitmq_peer_discovery_etcd_v3_client.beam"],
    )
    erlang_bytecode(
        name = "test_rabbit_peer_discovery_etcd_beam",
        testonly = True,
        srcs = ["src/rabbit_peer_discovery_etcd.erl"],
        outs = ["test/rabbit_peer_discovery_etcd.beam"],
        hdrs = ["include/rabbit_peer_discovery_etcd.hrl"],
        app_name = "rabbitmq_peer_discovery_etcd",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app", "//deps/rabbitmq_peer_discovery_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbitmq_peer_discovery_etcd_app_beam",
        testonly = True,
        srcs = ["src/rabbitmq_peer_discovery_etcd_app.erl"],
        outs = ["test/rabbitmq_peer_discovery_etcd_app.beam"],
        app_name = "rabbitmq_peer_discovery_etcd",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbitmq_peer_discovery_etcd_beam",
        testonly = True,
        srcs = ["src/rabbitmq_peer_discovery_etcd.erl"],
        outs = ["test/rabbitmq_peer_discovery_etcd.beam"],
        app_name = "rabbitmq_peer_discovery_etcd",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbitmq_peer_discovery_etcd_sup_beam",
        testonly = True,
        srcs = ["src/rabbitmq_peer_discovery_etcd_sup.erl"],
        outs = ["test/rabbitmq_peer_discovery_etcd_sup.beam"],
        hdrs = ["include/rabbit_peer_discovery_etcd.hrl"],
        app_name = "rabbitmq_peer_discovery_etcd",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbitmq_peer_discovery_etcd_v3_client_beam",
        testonly = True,
        srcs = ["src/rabbitmq_peer_discovery_etcd_v3_client.erl"],
        outs = ["test/rabbitmq_peer_discovery_etcd_v3_client.beam"],
        hdrs = ["include/rabbit_peer_discovery_etcd.hrl"],
        app_name = "rabbitmq_peer_discovery_etcd",
        erlc_opts = "//:test_erlc_opts",
    )

def all_srcs(name = "all_srcs"):
    filegroup(
        name = "all_srcs",
        srcs = [":public_and_private_hdrs", ":srcs"],
    )
    filegroup(
        name = "public_and_private_hdrs",
        srcs = [":private_hdrs", ":public_hdrs"],
    )
    filegroup(
        name = "licenses",
        srcs = ["LICENSE", "LICENSE-MPL-RabbitMQ"],
    )
    filegroup(
        name = "priv",
        srcs = ["priv/schema/rabbitmq_peer_discovery_etcd.schema"],
    )
    filegroup(
        name = "private_hdrs",
        srcs = [],
    )
    filegroup(
        name = "srcs",
        srcs = ["src/rabbit_peer_discovery_etcd.erl", "src/rabbitmq_peer_discovery_etcd.erl", "src/rabbitmq_peer_discovery_etcd_app.erl", "src/rabbitmq_peer_discovery_etcd_sup.erl", "src/rabbitmq_peer_discovery_etcd_v3_client.erl"],
    )
    filegroup(
        name = "public_hdrs",
        srcs = ["include/rabbit_peer_discovery_etcd.hrl"],
    )

def test_suite_beam_files(name = "test_suite_beam_files"):
    erlang_bytecode(
        name = "config_schema_SUITE_beam_files",
        testonly = True,
        srcs = ["test/config_schema_SUITE.erl"],
        outs = ["test/config_schema_SUITE.beam"],
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "system_SUITE_beam_files",
        testonly = True,
        srcs = ["test/system_SUITE.erl"],
        outs = ["test/system_SUITE.beam"],
        hdrs = ["include/rabbit_peer_discovery_etcd.hrl"],
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "unit_SUITE_beam_files",
        testonly = True,
        srcs = ["test/unit_SUITE.erl"],
        outs = ["test/unit_SUITE.beam"],
        hdrs = ["include/rabbit_peer_discovery_etcd.hrl"],
        erlc_opts = "//:test_erlc_opts",
    )
