load("@rules_erlang//:erlang_bytecode2.bzl", "erlang_bytecode")
load("@rules_erlang//:filegroup.bzl", "filegroup")

def all_beam_files(name = "all_beam_files"):
    filegroup(
        name = "beam_files",
        srcs = ["ebin/rabbit_peer_discovery_k8s.beam", "ebin/rabbitmq_peer_discovery_k8s.beam", "ebin/rabbitmq_peer_discovery_k8s_app.beam", "ebin/rabbitmq_peer_discovery_k8s_node_monitor.beam", "ebin/rabbitmq_peer_discovery_k8s_sup.beam"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_peer_discovery_k8s_beam",
        srcs = ["src/rabbit_peer_discovery_k8s.erl"],
        outs = ["ebin/rabbit_peer_discovery_k8s.beam"],
        hdrs = ["include/rabbit_peer_discovery_k8s.hrl"],
        app_name = "rabbitmq_peer_discovery_k8s",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app", "//deps/rabbitmq_peer_discovery_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbitmq_peer_discovery_k8s_app_beam",
        srcs = ["src/rabbitmq_peer_discovery_k8s_app.erl"],
        outs = ["ebin/rabbitmq_peer_discovery_k8s_app.beam"],
        app_name = "rabbitmq_peer_discovery_k8s",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbitmq_peer_discovery_k8s_beam",
        srcs = ["src/rabbitmq_peer_discovery_k8s.erl"],
        outs = ["ebin/rabbitmq_peer_discovery_k8s.beam"],
        app_name = "rabbitmq_peer_discovery_k8s",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbitmq_peer_discovery_k8s_node_monitor_beam",
        srcs = ["src/rabbitmq_peer_discovery_k8s_node_monitor.erl"],
        outs = ["ebin/rabbitmq_peer_discovery_k8s_node_monitor.beam"],
        app_name = "rabbitmq_peer_discovery_k8s",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbitmq_peer_discovery_k8s_sup_beam",
        srcs = ["src/rabbitmq_peer_discovery_k8s_sup.erl"],
        outs = ["ebin/rabbitmq_peer_discovery_k8s_sup.beam"],
        hdrs = ["include/rabbit_peer_discovery_k8s.hrl"],
        app_name = "rabbitmq_peer_discovery_k8s",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )

def all_test_beam_files(name = "all_test_beam_files"):
    filegroup(
        name = "test_beam_files",
        testonly = True,
        srcs = ["test/rabbit_peer_discovery_k8s.beam", "test/rabbitmq_peer_discovery_k8s.beam", "test/rabbitmq_peer_discovery_k8s_app.beam", "test/rabbitmq_peer_discovery_k8s_node_monitor.beam", "test/rabbitmq_peer_discovery_k8s_sup.beam"],
    )
    erlang_bytecode(
        name = "test_rabbit_peer_discovery_k8s_beam",
        testonly = True,
        srcs = ["src/rabbit_peer_discovery_k8s.erl"],
        outs = ["test/rabbit_peer_discovery_k8s.beam"],
        hdrs = ["include/rabbit_peer_discovery_k8s.hrl"],
        app_name = "rabbitmq_peer_discovery_k8s",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app", "//deps/rabbitmq_peer_discovery_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbitmq_peer_discovery_k8s_app_beam",
        testonly = True,
        srcs = ["src/rabbitmq_peer_discovery_k8s_app.erl"],
        outs = ["test/rabbitmq_peer_discovery_k8s_app.beam"],
        app_name = "rabbitmq_peer_discovery_k8s",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbitmq_peer_discovery_k8s_beam",
        testonly = True,
        srcs = ["src/rabbitmq_peer_discovery_k8s.erl"],
        outs = ["test/rabbitmq_peer_discovery_k8s.beam"],
        app_name = "rabbitmq_peer_discovery_k8s",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbitmq_peer_discovery_k8s_node_monitor_beam",
        testonly = True,
        srcs = ["src/rabbitmq_peer_discovery_k8s_node_monitor.erl"],
        outs = ["test/rabbitmq_peer_discovery_k8s_node_monitor.beam"],
        app_name = "rabbitmq_peer_discovery_k8s",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbitmq_peer_discovery_k8s_sup_beam",
        testonly = True,
        srcs = ["src/rabbitmq_peer_discovery_k8s_sup.erl"],
        outs = ["test/rabbitmq_peer_discovery_k8s_sup.beam"],
        hdrs = ["include/rabbit_peer_discovery_k8s.hrl"],
        app_name = "rabbitmq_peer_discovery_k8s",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
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
        srcs = ["priv/schema/rabbitmq_peer_discovery_k8s.schema"],
    )
    filegroup(
        name = "private_hdrs",
        srcs = [],
    )
    filegroup(
        name = "srcs",
        srcs = ["src/rabbit_peer_discovery_k8s.erl", "src/rabbitmq_peer_discovery_k8s.erl", "src/rabbitmq_peer_discovery_k8s_app.erl", "src/rabbitmq_peer_discovery_k8s_node_monitor.erl", "src/rabbitmq_peer_discovery_k8s_sup.erl"],
    )
    filegroup(
        name = "public_hdrs",
        srcs = ["include/rabbit_peer_discovery_k8s.hrl"],
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
        name = "rabbitmq_peer_discovery_k8s_SUITE_beam_files",
        testonly = True,
        srcs = ["test/rabbitmq_peer_discovery_k8s_SUITE.erl"],
        outs = ["test/rabbitmq_peer_discovery_k8s_SUITE.beam"],
        erlc_opts = "//:test_erlc_opts",
    )
