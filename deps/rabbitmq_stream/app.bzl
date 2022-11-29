load("@rules_erlang//:erlang_bytecode2.bzl", "erlang_bytecode")
load("@rules_erlang//:filegroup.bzl", "filegroup")

def all_beam_files(name = "all_beam_files"):
    filegroup(
        name = "beam_files",
        srcs = ["ebin/Elixir.RabbitMQ.CLI.Ctl.Commands.AddSuperStreamCommand.beam", "ebin/Elixir.RabbitMQ.CLI.Ctl.Commands.DeleteSuperStreamCommand.beam", "ebin/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamConnectionsCommand.beam", "ebin/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamConsumerGroupsCommand.beam", "ebin/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamConsumersCommand.beam", "ebin/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamGroupConsumersCommand.beam", "ebin/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamPublishersCommand.beam", "ebin/rabbit_stream.beam", "ebin/rabbit_stream_connection_sup.beam", "ebin/rabbit_stream_manager.beam", "ebin/rabbit_stream_metrics.beam", "ebin/rabbit_stream_metrics_gc.beam", "ebin/rabbit_stream_reader.beam", "ebin/rabbit_stream_sup.beam", "ebin/rabbit_stream_utils.beam"],
    )
    erlang_bytecode(
        name = "ebin_Elixir_RabbitMQ_CLI_Ctl_Commands_AddSuperStreamCommand_beam",
        srcs = ["src/Elixir.RabbitMQ.CLI.Ctl.Commands.AddSuperStreamCommand.erl"],
        outs = ["ebin/Elixir.RabbitMQ.CLI.Ctl.Commands.AddSuperStreamCommand.beam"],
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbitmq_cli:erlang_app", "//deps/rabbitmq_stream_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_Elixir_RabbitMQ_CLI_Ctl_Commands_DeleteSuperStreamCommand_beam",
        srcs = ["src/Elixir.RabbitMQ.CLI.Ctl.Commands.DeleteSuperStreamCommand.erl"],
        outs = ["ebin/Elixir.RabbitMQ.CLI.Ctl.Commands.DeleteSuperStreamCommand.beam"],
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbitmq_cli:erlang_app", "//deps/rabbitmq_stream_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_Elixir_RabbitMQ_CLI_Ctl_Commands_ListStreamConnectionsCommand_beam",
        srcs = ["src/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamConnectionsCommand.erl"],
        outs = ["ebin/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamConnectionsCommand.beam"],
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbitmq_cli:erlang_app", "//deps/rabbitmq_stream_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_Elixir_RabbitMQ_CLI_Ctl_Commands_ListStreamConsumerGroupsCommand_beam",
        srcs = ["src/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamConsumerGroupsCommand.erl"],
        outs = ["ebin/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamConsumerGroupsCommand.beam"],
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbitmq_cli:erlang_app", "//deps/rabbitmq_stream_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_Elixir_RabbitMQ_CLI_Ctl_Commands_ListStreamConsumersCommand_beam",
        srcs = ["src/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamConsumersCommand.erl"],
        outs = ["ebin/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamConsumersCommand.beam"],
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbitmq_cli:erlang_app", "//deps/rabbitmq_stream_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_Elixir_RabbitMQ_CLI_Ctl_Commands_ListStreamGroupConsumersCommand_beam",
        srcs = ["src/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamGroupConsumersCommand.erl"],
        outs = ["ebin/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamGroupConsumersCommand.beam"],
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbitmq_cli:erlang_app", "//deps/rabbitmq_stream_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_Elixir_RabbitMQ_CLI_Ctl_Commands_ListStreamPublishersCommand_beam",
        srcs = ["src/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamPublishersCommand.erl"],
        outs = ["ebin/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamPublishersCommand.beam"],
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbitmq_cli:erlang_app", "//deps/rabbitmq_stream_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_stream_beam",
        srcs = ["src/rabbit_stream.erl"],
        outs = ["ebin/rabbit_stream.beam"],
        hdrs = ["include/rabbit_stream_metrics.hrl"],
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit:erlang_app", "//deps/rabbit_common:erlang_app", "//deps/rabbitmq_stream_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_stream_connection_sup_beam",
        srcs = ["src/rabbit_stream_connection_sup.erl"],
        outs = ["ebin/rabbit_stream_connection_sup.beam"],
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app", "@ranch//:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_stream_manager_beam",
        srcs = ["src/rabbit_stream_manager.erl"],
        outs = ["ebin/rabbit_stream_manager.beam"],
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit:erlang_app", "//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_stream_metrics_beam",
        srcs = ["src/rabbit_stream_metrics.erl"],
        outs = ["ebin/rabbit_stream_metrics.beam"],
        hdrs = ["include/rabbit_stream_metrics.hrl"],
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_stream_metrics_gc_beam",
        srcs = ["src/rabbit_stream_metrics_gc.erl"],
        outs = ["ebin/rabbit_stream_metrics_gc.beam"],
        hdrs = ["include/rabbit_stream_metrics.hrl"],
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_stream_reader_beam",
        srcs = ["src/rabbit_stream_reader.erl"],
        outs = ["ebin/rabbit_stream_reader.beam"],
        hdrs = ["include/rabbit_stream_metrics.hrl"],
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit:erlang_app", "//deps/rabbit_common:erlang_app", "//deps/rabbitmq_stream_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_stream_sup_beam",
        srcs = ["src/rabbit_stream_sup.erl"],
        outs = ["ebin/rabbit_stream_sup.beam"],
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbitmq_stream_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_stream_utils_beam",
        srcs = ["src/rabbit_stream_utils.erl"],
        outs = ["ebin/rabbit_stream_utils.beam"],
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app", "//deps/rabbitmq_stream_common:erlang_app"],
    )

def all_test_beam_files(name = "all_test_beam_files"):
    erlang_bytecode(
        name = "test_Elixir_RabbitMQ_CLI_Ctl_Commands_AddSuperStreamCommand_beam",
        testonly = True,
        srcs = ["src/Elixir.RabbitMQ.CLI.Ctl.Commands.AddSuperStreamCommand.erl"],
        outs = ["test/Elixir.RabbitMQ.CLI.Ctl.Commands.AddSuperStreamCommand.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbitmq_cli:erlang_app", "//deps/rabbitmq_stream_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_Elixir_RabbitMQ_CLI_Ctl_Commands_DeleteSuperStreamCommand_beam",
        testonly = True,
        srcs = ["src/Elixir.RabbitMQ.CLI.Ctl.Commands.DeleteSuperStreamCommand.erl"],
        outs = ["test/Elixir.RabbitMQ.CLI.Ctl.Commands.DeleteSuperStreamCommand.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbitmq_cli:erlang_app", "//deps/rabbitmq_stream_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_Elixir_RabbitMQ_CLI_Ctl_Commands_ListStreamConnectionsCommand_beam",
        testonly = True,
        srcs = ["src/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamConnectionsCommand.erl"],
        outs = ["test/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamConnectionsCommand.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbitmq_cli:erlang_app", "//deps/rabbitmq_stream_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_Elixir_RabbitMQ_CLI_Ctl_Commands_ListStreamConsumerGroupsCommand_beam",
        testonly = True,
        srcs = ["src/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamConsumerGroupsCommand.erl"],
        outs = ["test/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamConsumerGroupsCommand.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbitmq_cli:erlang_app", "//deps/rabbitmq_stream_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_Elixir_RabbitMQ_CLI_Ctl_Commands_ListStreamConsumersCommand_beam",
        testonly = True,
        srcs = ["src/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamConsumersCommand.erl"],
        outs = ["test/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamConsumersCommand.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbitmq_cli:erlang_app", "//deps/rabbitmq_stream_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_Elixir_RabbitMQ_CLI_Ctl_Commands_ListStreamGroupConsumersCommand_beam",
        testonly = True,
        srcs = ["src/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamGroupConsumersCommand.erl"],
        outs = ["test/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamGroupConsumersCommand.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbitmq_cli:erlang_app", "//deps/rabbitmq_stream_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_Elixir_RabbitMQ_CLI_Ctl_Commands_ListStreamPublishersCommand_beam",
        testonly = True,
        srcs = ["src/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamPublishersCommand.erl"],
        outs = ["test/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamPublishersCommand.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbitmq_cli:erlang_app", "//deps/rabbitmq_stream_common:erlang_app"],
    )
    filegroup(
        name = "test_beam_files",
        testonly = True,
        srcs = ["test/Elixir.RabbitMQ.CLI.Ctl.Commands.AddSuperStreamCommand.beam", "test/Elixir.RabbitMQ.CLI.Ctl.Commands.DeleteSuperStreamCommand.beam", "test/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamConnectionsCommand.beam", "test/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamConsumerGroupsCommand.beam", "test/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamConsumersCommand.beam", "test/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamGroupConsumersCommand.beam", "test/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamPublishersCommand.beam", "test/rabbit_stream.beam", "test/rabbit_stream_connection_sup.beam", "test/rabbit_stream_manager.beam", "test/rabbit_stream_metrics.beam", "test/rabbit_stream_metrics_gc.beam", "test/rabbit_stream_reader.beam", "test/rabbit_stream_sup.beam", "test/rabbit_stream_utils.beam"],
    )
    erlang_bytecode(
        name = "test_rabbit_stream_beam",
        testonly = True,
        srcs = ["src/rabbit_stream.erl"],
        outs = ["test/rabbit_stream.beam"],
        hdrs = ["include/rabbit_stream_metrics.hrl"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit:erlang_app", "//deps/rabbit_common:erlang_app", "//deps/rabbitmq_stream_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_stream_connection_sup_beam",
        testonly = True,
        srcs = ["src/rabbit_stream_connection_sup.erl"],
        outs = ["test/rabbit_stream_connection_sup.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app", "@ranch//:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_stream_manager_beam",
        testonly = True,
        srcs = ["src/rabbit_stream_manager.erl"],
        outs = ["test/rabbit_stream_manager.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit:erlang_app", "//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_stream_metrics_beam",
        testonly = True,
        srcs = ["src/rabbit_stream_metrics.erl"],
        outs = ["test/rabbit_stream_metrics.beam"],
        hdrs = ["include/rabbit_stream_metrics.hrl"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_stream_metrics_gc_beam",
        testonly = True,
        srcs = ["src/rabbit_stream_metrics_gc.erl"],
        outs = ["test/rabbit_stream_metrics_gc.beam"],
        hdrs = ["include/rabbit_stream_metrics.hrl"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_stream_reader_beam",
        testonly = True,
        srcs = ["src/rabbit_stream_reader.erl"],
        outs = ["test/rabbit_stream_reader.beam"],
        hdrs = ["include/rabbit_stream_metrics.hrl"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit:erlang_app", "//deps/rabbit_common:erlang_app", "//deps/rabbitmq_stream_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_stream_sup_beam",
        testonly = True,
        srcs = ["src/rabbit_stream_sup.erl"],
        outs = ["test/rabbit_stream_sup.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbitmq_stream_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_stream_utils_beam",
        testonly = True,
        srcs = ["src/rabbit_stream_utils.erl"],
        outs = ["test/rabbit_stream_utils.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app", "//deps/rabbitmq_stream_common:erlang_app"],
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
        srcs = ["priv/schema/rabbitmq_stream.schema"],
    )
    filegroup(
        name = "private_hdrs",
        srcs = [],
    )
    filegroup(
        name = "srcs",
        srcs = ["src/Elixir.RabbitMQ.CLI.Ctl.Commands.AddSuperStreamCommand.erl", "src/Elixir.RabbitMQ.CLI.Ctl.Commands.DeleteSuperStreamCommand.erl", "src/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamConnectionsCommand.erl", "src/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamConsumerGroupsCommand.erl", "src/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamConsumersCommand.erl", "src/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamGroupConsumersCommand.erl", "src/Elixir.RabbitMQ.CLI.Ctl.Commands.ListStreamPublishersCommand.erl", "src/rabbit_stream.erl", "src/rabbit_stream_connection_sup.erl", "src/rabbit_stream_manager.erl", "src/rabbit_stream_metrics.erl", "src/rabbit_stream_metrics_gc.erl", "src/rabbit_stream_reader.erl", "src/rabbit_stream_sup.erl", "src/rabbit_stream_utils.erl"],
    )
    filegroup(
        name = "public_hdrs",
        srcs = ["include/rabbit_stream_metrics.hrl"],
    )

def test_suite_beam_files(name = "test_suite_beam_files"):
    erlang_bytecode(
        name = "commands_SUITE_beam_files",
        testonly = True,
        srcs = ["test/commands_SUITE.erl"],
        outs = ["test/commands_SUITE.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/amqp_client:erlang_app", "//deps/rabbitmq_ct_helpers:erlang_app", "//deps/rabbitmq_stream_common:erlang_app"],
    )
    erlang_bytecode(
        name = "config_schema_SUITE_beam_files",
        testonly = True,
        srcs = ["test/config_schema_SUITE.erl"],
        outs = ["test/config_schema_SUITE.beam"],
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "rabbit_stream_SUITE_beam_files",
        testonly = True,
        srcs = ["test/rabbit_stream_SUITE.erl"],
        outs = ["test/rabbit_stream_SUITE.beam"],
        hdrs = ["include/rabbit_stream_metrics.hrl"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit:erlang_app", "//deps/rabbit_common:erlang_app", "//deps/rabbitmq_ct_helpers:erlang_app", "//deps/rabbitmq_stream_common:erlang_app"],
    )
    erlang_bytecode(
        name = "rabbit_stream_manager_SUITE_beam_files",
        testonly = True,
        srcs = ["test/rabbit_stream_manager_SUITE.erl"],
        outs = ["test/rabbit_stream_manager_SUITE.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/amqp_client:erlang_app"],
    )
    erlang_bytecode(
        name = "rabbit_stream_utils_SUITE_beam_files",
        testonly = True,
        srcs = ["test/rabbit_stream_utils_SUITE.erl"],
        outs = ["test/rabbit_stream_utils_SUITE.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
