load("@rules_erlang//:erlang_bytecode2.bzl", "erlang_bytecode")
load("@rules_erlang//:filegroup.bzl", "filegroup")

def all_beam_files(name = "all_beam_files"):
    filegroup(
        name = "beam_files",
        srcs = ["ebin/Elixir.RabbitMQ.CLI.Ctl.Commands.ResetStatsDbCommand.beam", "ebin/exometer_slide.beam", "ebin/rabbit_mgmt_agent_app.beam", "ebin/rabbit_mgmt_agent_config.beam", "ebin/rabbit_mgmt_agent_sup.beam", "ebin/rabbit_mgmt_agent_sup_sup.beam", "ebin/rabbit_mgmt_data.beam", "ebin/rabbit_mgmt_data_compat.beam", "ebin/rabbit_mgmt_db_handler.beam", "ebin/rabbit_mgmt_external_stats.beam", "ebin/rabbit_mgmt_ff.beam", "ebin/rabbit_mgmt_format.beam", "ebin/rabbit_mgmt_gc.beam", "ebin/rabbit_mgmt_metrics_collector.beam", "ebin/rabbit_mgmt_metrics_gc.beam", "ebin/rabbit_mgmt_storage.beam"],
    )
    erlang_bytecode(
        name = "ebin_Elixir_RabbitMQ_CLI_Ctl_Commands_ResetStatsDbCommand_beam",
        srcs = ["src/Elixir.RabbitMQ.CLI.Ctl.Commands.ResetStatsDbCommand.erl"],
        outs = ["ebin/Elixir.RabbitMQ.CLI.Ctl.Commands.ResetStatsDbCommand.beam"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbitmq_cli:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_exometer_slide_beam",
        srcs = ["src/exometer_slide.erl"],
        outs = ["ebin/exometer_slide.beam"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbit_mgmt_agent_app_beam",
        srcs = ["src/rabbit_mgmt_agent_app.erl"],
        outs = ["ebin/rabbit_mgmt_agent_app.beam"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbit_mgmt_agent_config_beam",
        srcs = ["src/rabbit_mgmt_agent_config.erl"],
        outs = ["ebin/rabbit_mgmt_agent_config.beam"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbit_mgmt_agent_sup_beam",
        srcs = ["src/rabbit_mgmt_agent_sup.erl"],
        outs = ["ebin/rabbit_mgmt_agent_sup.beam"],
        hdrs = ["include/rabbit_mgmt_agent.hrl", "include/rabbit_mgmt_metrics.hrl"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_mgmt_agent_sup_sup_beam",
        srcs = ["src/rabbit_mgmt_agent_sup_sup.erl"],
        outs = ["ebin/rabbit_mgmt_agent_sup_sup.beam"],
        hdrs = ["include/rabbit_mgmt_agent.hrl"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_mgmt_data_beam",
        srcs = ["src/rabbit_mgmt_data.erl"],
        outs = ["ebin/rabbit_mgmt_data.beam"],
        hdrs = ["include/rabbit_mgmt_metrics.hrl", "include/rabbit_mgmt_records.hrl"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_mgmt_data_compat_beam",
        srcs = ["src/rabbit_mgmt_data_compat.erl"],
        outs = ["ebin/rabbit_mgmt_data_compat.beam"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbit_mgmt_db_handler_beam",
        srcs = ["src/rabbit_mgmt_db_handler.erl"],
        outs = ["ebin/rabbit_mgmt_db_handler.beam"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_mgmt_external_stats_beam",
        srcs = ["src/rabbit_mgmt_external_stats.erl"],
        outs = ["ebin/rabbit_mgmt_external_stats.beam"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_mgmt_ff_beam",
        srcs = ["src/rabbit_mgmt_ff.erl"],
        outs = ["ebin/rabbit_mgmt_ff.beam"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbit_mgmt_format_beam",
        srcs = ["src/rabbit_mgmt_format.erl"],
        outs = ["ebin/rabbit_mgmt_format.beam"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit:erlang_app", "//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_mgmt_gc_beam",
        srcs = ["src/rabbit_mgmt_gc.erl"],
        outs = ["ebin/rabbit_mgmt_gc.beam"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_mgmt_metrics_collector_beam",
        srcs = ["src/rabbit_mgmt_metrics_collector.erl"],
        outs = ["ebin/rabbit_mgmt_metrics_collector.beam"],
        hdrs = ["include/rabbit_mgmt_metrics.hrl"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_mgmt_metrics_gc_beam",
        srcs = ["src/rabbit_mgmt_metrics_gc.erl"],
        outs = ["ebin/rabbit_mgmt_metrics_gc.beam"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_mgmt_storage_beam",
        srcs = ["src/rabbit_mgmt_storage.erl"],
        outs = ["ebin/rabbit_mgmt_storage.beam"],
        hdrs = ["include/rabbit_mgmt_metrics.hrl"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )

def all_test_beam_files(name = "all_test_beam_files"):
    erlang_bytecode(
        name = "test_Elixir_RabbitMQ_CLI_Ctl_Commands_ResetStatsDbCommand_beam",
        testonly = True,
        srcs = ["src/Elixir.RabbitMQ.CLI.Ctl.Commands.ResetStatsDbCommand.erl"],
        outs = ["test/Elixir.RabbitMQ.CLI.Ctl.Commands.ResetStatsDbCommand.beam"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbitmq_cli:erlang_app"],
    )
    filegroup(
        name = "test_beam_files",
        testonly = True,
        srcs = ["test/Elixir.RabbitMQ.CLI.Ctl.Commands.ResetStatsDbCommand.beam", "test/exometer_slide.beam", "test/rabbit_mgmt_agent_app.beam", "test/rabbit_mgmt_agent_config.beam", "test/rabbit_mgmt_agent_sup.beam", "test/rabbit_mgmt_agent_sup_sup.beam", "test/rabbit_mgmt_data.beam", "test/rabbit_mgmt_data_compat.beam", "test/rabbit_mgmt_db_handler.beam", "test/rabbit_mgmt_external_stats.beam", "test/rabbit_mgmt_ff.beam", "test/rabbit_mgmt_format.beam", "test/rabbit_mgmt_gc.beam", "test/rabbit_mgmt_metrics_collector.beam", "test/rabbit_mgmt_metrics_gc.beam", "test/rabbit_mgmt_storage.beam"],
    )
    erlang_bytecode(
        name = "test_exometer_slide_beam",
        testonly = True,
        srcs = ["src/exometer_slide.erl"],
        outs = ["test/exometer_slide.beam"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbit_mgmt_agent_app_beam",
        testonly = True,
        srcs = ["src/rabbit_mgmt_agent_app.erl"],
        outs = ["test/rabbit_mgmt_agent_app.beam"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbit_mgmt_agent_config_beam",
        testonly = True,
        srcs = ["src/rabbit_mgmt_agent_config.erl"],
        outs = ["test/rabbit_mgmt_agent_config.beam"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbit_mgmt_agent_sup_beam",
        testonly = True,
        srcs = ["src/rabbit_mgmt_agent_sup.erl"],
        outs = ["test/rabbit_mgmt_agent_sup.beam"],
        hdrs = ["include/rabbit_mgmt_agent.hrl", "include/rabbit_mgmt_metrics.hrl"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_mgmt_agent_sup_sup_beam",
        testonly = True,
        srcs = ["src/rabbit_mgmt_agent_sup_sup.erl"],
        outs = ["test/rabbit_mgmt_agent_sup_sup.beam"],
        hdrs = ["include/rabbit_mgmt_agent.hrl"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_mgmt_data_beam",
        testonly = True,
        srcs = ["src/rabbit_mgmt_data.erl"],
        outs = ["test/rabbit_mgmt_data.beam"],
        hdrs = ["include/rabbit_mgmt_metrics.hrl", "include/rabbit_mgmt_records.hrl"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_mgmt_data_compat_beam",
        testonly = True,
        srcs = ["src/rabbit_mgmt_data_compat.erl"],
        outs = ["test/rabbit_mgmt_data_compat.beam"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbit_mgmt_db_handler_beam",
        testonly = True,
        srcs = ["src/rabbit_mgmt_db_handler.erl"],
        outs = ["test/rabbit_mgmt_db_handler.beam"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_mgmt_external_stats_beam",
        testonly = True,
        srcs = ["src/rabbit_mgmt_external_stats.erl"],
        outs = ["test/rabbit_mgmt_external_stats.beam"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_mgmt_ff_beam",
        testonly = True,
        srcs = ["src/rabbit_mgmt_ff.erl"],
        outs = ["test/rabbit_mgmt_ff.beam"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbit_mgmt_format_beam",
        testonly = True,
        srcs = ["src/rabbit_mgmt_format.erl"],
        outs = ["test/rabbit_mgmt_format.beam"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit:erlang_app", "//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_mgmt_gc_beam",
        testonly = True,
        srcs = ["src/rabbit_mgmt_gc.erl"],
        outs = ["test/rabbit_mgmt_gc.beam"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_mgmt_metrics_collector_beam",
        testonly = True,
        srcs = ["src/rabbit_mgmt_metrics_collector.erl"],
        outs = ["test/rabbit_mgmt_metrics_collector.beam"],
        hdrs = ["include/rabbit_mgmt_metrics.hrl"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_mgmt_metrics_gc_beam",
        testonly = True,
        srcs = ["src/rabbit_mgmt_metrics_gc.erl"],
        outs = ["test/rabbit_mgmt_metrics_gc.beam"],
        app_name = "rabbitmq_management_agent",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_mgmt_storage_beam",
        testonly = True,
        srcs = ["src/rabbit_mgmt_storage.erl"],
        outs = ["test/rabbit_mgmt_storage.beam"],
        hdrs = ["include/rabbit_mgmt_metrics.hrl"],
        app_name = "rabbitmq_management_agent",
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
        srcs = ["priv/schema/rabbitmq_management_agent.schema"],
    )
    filegroup(
        name = "private_hdrs",
        srcs = [],
    )
    filegroup(
        name = "srcs",
        srcs = ["src/Elixir.RabbitMQ.CLI.Ctl.Commands.ResetStatsDbCommand.erl", "src/exometer_slide.erl", "src/rabbit_mgmt_agent_app.erl", "src/rabbit_mgmt_agent_config.erl", "src/rabbit_mgmt_agent_sup.erl", "src/rabbit_mgmt_agent_sup_sup.erl", "src/rabbit_mgmt_data.erl", "src/rabbit_mgmt_data_compat.erl", "src/rabbit_mgmt_db_handler.erl", "src/rabbit_mgmt_external_stats.erl", "src/rabbit_mgmt_ff.erl", "src/rabbit_mgmt_format.erl", "src/rabbit_mgmt_gc.erl", "src/rabbit_mgmt_metrics_collector.erl", "src/rabbit_mgmt_metrics_gc.erl", "src/rabbit_mgmt_storage.erl"],
    )
    filegroup(
        name = "public_hdrs",
        srcs = ["include/rabbit_mgmt_agent.hrl", "include/rabbit_mgmt_metrics.hrl", "include/rabbit_mgmt_records.hrl"],
    )

def test_suite_beam_files(name = "test_suite_beam_files"):
    erlang_bytecode(
        name = "exometer_slide_SUITE_beam_files",
        testonly = True,
        srcs = ["test/exometer_slide_SUITE.erl"],
        outs = ["test/exometer_slide_SUITE.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["@proper//:erlang_app"],
    )
    erlang_bytecode(
        name = "metrics_SUITE_beam_files",
        testonly = True,
        srcs = ["test/metrics_SUITE.erl"],
        outs = ["test/metrics_SUITE.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/amqp_client:erlang_app"],
    )
    erlang_bytecode(
        name = "rabbit_mgmt_gc_SUITE_beam_files",
        testonly = True,
        srcs = ["test/rabbit_mgmt_gc_SUITE.erl"],
        outs = ["test/rabbit_mgmt_gc_SUITE.beam"],
        hdrs = ["include/rabbit_mgmt_metrics.hrl"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/amqp_client:erlang_app"],
    )
    erlang_bytecode(
        name = "rabbit_mgmt_slide_SUITE_beam_files",
        testonly = True,
        srcs = ["test/rabbit_mgmt_slide_SUITE.erl"],
        outs = ["test/rabbit_mgmt_slide_SUITE.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["@proper//:erlang_app"],
    )
