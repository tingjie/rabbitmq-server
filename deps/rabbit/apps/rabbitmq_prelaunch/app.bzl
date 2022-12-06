load("@rules_erlang//:erlang_bytecode2.bzl", "erlang_bytecode")
load("@rules_erlang//:filegroup.bzl", "filegroup")

def all_beam_files(name = "all_beam_files"):
    filegroup(
        name = "beam_files",
        srcs = ["ebin/rabbit_boot_state.beam", "ebin/rabbit_boot_state_sup.beam", "ebin/rabbit_boot_state_systemd.beam", "ebin/rabbit_boot_state_xterm_titlebar.beam", "ebin/rabbit_logger_fmt_helpers.beam", "ebin/rabbit_logger_json_fmt.beam", "ebin/rabbit_logger_std_h.beam", "ebin/rabbit_logger_text_fmt.beam", "ebin/rabbit_prelaunch.beam", "ebin/rabbit_prelaunch_app.beam", "ebin/rabbit_prelaunch_conf.beam", "ebin/rabbit_prelaunch_dist.beam", "ebin/rabbit_prelaunch_early_logging.beam", "ebin/rabbit_prelaunch_erlang_compat.beam", "ebin/rabbit_prelaunch_errors.beam", "ebin/rabbit_prelaunch_file.beam", "ebin/rabbit_prelaunch_sighandler.beam", "ebin/rabbit_prelaunch_sup.beam"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_boot_state_beam",
        srcs = ["src/rabbit_boot_state.erl"],
        outs = ["ebin/rabbit_boot_state.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_boot_state_sup_beam",
        srcs = ["src/rabbit_boot_state_sup.erl"],
        outs = ["ebin/rabbit_boot_state_sup.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbit_boot_state_systemd_beam",
        srcs = ["src/rabbit_boot_state_systemd.erl"],
        outs = ["ebin/rabbit_boot_state_systemd.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_boot_state_xterm_titlebar_beam",
        srcs = ["src/rabbit_boot_state_xterm_titlebar.erl"],
        outs = ["ebin/rabbit_boot_state_xterm_titlebar.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_logger_fmt_helpers_beam",
        srcs = ["src/rabbit_logger_fmt_helpers.erl"],
        outs = ["ebin/rabbit_logger_fmt_helpers.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbit_logger_json_fmt_beam",
        srcs = ["src/rabbit_logger_json_fmt.erl"],
        outs = ["ebin/rabbit_logger_json_fmt.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbit_logger_std_h_beam",
        srcs = ["src/rabbit_logger_std_h.erl"],
        outs = ["ebin/rabbit_logger_std_h.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbit_logger_text_fmt_beam",
        srcs = ["src/rabbit_logger_text_fmt.erl"],
        outs = ["ebin/rabbit_logger_text_fmt.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbit_prelaunch_app_beam",
        srcs = ["src/rabbit_prelaunch_app.erl"],
        outs = ["ebin/rabbit_prelaunch_app.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbit_prelaunch_beam",
        srcs = ["src/rabbit_prelaunch.erl"],
        outs = ["ebin/rabbit_prelaunch.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_prelaunch_conf_beam",
        srcs = ["src/rabbit_prelaunch_conf.erl"],
        outs = ["ebin/rabbit_prelaunch_conf.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_prelaunch_dist_beam",
        srcs = ["src/rabbit_prelaunch_dist.erl"],
        outs = ["ebin/rabbit_prelaunch_dist.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_prelaunch_early_logging_beam",
        srcs = ["src/rabbit_prelaunch_early_logging.erl"],
        outs = ["ebin/rabbit_prelaunch_early_logging.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_prelaunch_erlang_compat_beam",
        srcs = ["src/rabbit_prelaunch_erlang_compat.erl"],
        outs = ["ebin/rabbit_prelaunch_erlang_compat.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_prelaunch_errors_beam",
        srcs = ["src/rabbit_prelaunch_errors.erl"],
        outs = ["ebin/rabbit_prelaunch_errors.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_prelaunch_file_beam",
        srcs = ["src/rabbit_prelaunch_file.erl"],
        outs = ["ebin/rabbit_prelaunch_file.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbit_prelaunch_sighandler_beam",
        srcs = ["src/rabbit_prelaunch_sighandler.erl"],
        outs = ["ebin/rabbit_prelaunch_sighandler.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbit_prelaunch_sup_beam",
        srcs = ["src/rabbit_prelaunch_sup.erl"],
        outs = ["ebin/rabbit_prelaunch_sup.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:erlc_opts",
    )

def all_test_beam_files(name = "all_test_beam_files"):
    filegroup(
        name = "test_beam_files",
        testonly = True,
        srcs = ["test/rabbit_boot_state.beam", "test/rabbit_boot_state_sup.beam", "test/rabbit_boot_state_systemd.beam", "test/rabbit_boot_state_xterm_titlebar.beam", "test/rabbit_logger_fmt_helpers.beam", "test/rabbit_logger_json_fmt.beam", "test/rabbit_logger_std_h.beam", "test/rabbit_logger_text_fmt.beam", "test/rabbit_prelaunch.beam", "test/rabbit_prelaunch_app.beam", "test/rabbit_prelaunch_conf.beam", "test/rabbit_prelaunch_dist.beam", "test/rabbit_prelaunch_early_logging.beam", "test/rabbit_prelaunch_erlang_compat.beam", "test/rabbit_prelaunch_errors.beam", "test/rabbit_prelaunch_file.beam", "test/rabbit_prelaunch_sighandler.beam", "test/rabbit_prelaunch_sup.beam"],
    )
    erlang_bytecode(
        name = "test_rabbit_boot_state_beam",
        testonly = True,
        srcs = ["src/rabbit_boot_state.erl"],
        outs = ["test/rabbit_boot_state.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_boot_state_sup_beam",
        testonly = True,
        srcs = ["src/rabbit_boot_state_sup.erl"],
        outs = ["test/rabbit_boot_state_sup.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbit_boot_state_systemd_beam",
        testonly = True,
        srcs = ["src/rabbit_boot_state_systemd.erl"],
        outs = ["test/rabbit_boot_state_systemd.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_boot_state_xterm_titlebar_beam",
        testonly = True,
        srcs = ["src/rabbit_boot_state_xterm_titlebar.erl"],
        outs = ["test/rabbit_boot_state_xterm_titlebar.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_logger_fmt_helpers_beam",
        testonly = True,
        srcs = ["src/rabbit_logger_fmt_helpers.erl"],
        outs = ["test/rabbit_logger_fmt_helpers.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbit_logger_json_fmt_beam",
        testonly = True,
        srcs = ["src/rabbit_logger_json_fmt.erl"],
        outs = ["test/rabbit_logger_json_fmt.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbit_logger_std_h_beam",
        testonly = True,
        srcs = ["src/rabbit_logger_std_h.erl"],
        outs = ["test/rabbit_logger_std_h.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbit_logger_text_fmt_beam",
        testonly = True,
        srcs = ["src/rabbit_logger_text_fmt.erl"],
        outs = ["test/rabbit_logger_text_fmt.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbit_prelaunch_app_beam",
        testonly = True,
        srcs = ["src/rabbit_prelaunch_app.erl"],
        outs = ["test/rabbit_prelaunch_app.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbit_prelaunch_beam",
        testonly = True,
        srcs = ["src/rabbit_prelaunch.erl"],
        outs = ["test/rabbit_prelaunch.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_prelaunch_conf_beam",
        testonly = True,
        srcs = ["src/rabbit_prelaunch_conf.erl"],
        outs = ["test/rabbit_prelaunch_conf.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_prelaunch_dist_beam",
        testonly = True,
        srcs = ["src/rabbit_prelaunch_dist.erl"],
        outs = ["test/rabbit_prelaunch_dist.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_prelaunch_early_logging_beam",
        testonly = True,
        srcs = ["src/rabbit_prelaunch_early_logging.erl"],
        outs = ["test/rabbit_prelaunch_early_logging.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_prelaunch_erlang_compat_beam",
        testonly = True,
        srcs = ["src/rabbit_prelaunch_erlang_compat.erl"],
        outs = ["test/rabbit_prelaunch_erlang_compat.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_prelaunch_errors_beam",
        testonly = True,
        srcs = ["src/rabbit_prelaunch_errors.erl"],
        outs = ["test/rabbit_prelaunch_errors.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_prelaunch_file_beam",
        testonly = True,
        srcs = ["src/rabbit_prelaunch_file.erl"],
        outs = ["test/rabbit_prelaunch_file.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbit_prelaunch_sighandler_beam",
        testonly = True,
        srcs = ["src/rabbit_prelaunch_sighandler.erl"],
        outs = ["test/rabbit_prelaunch_sighandler.beam"],
        app_name = "rabbitmq_prelaunch",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbit_prelaunch_sup_beam",
        testonly = True,
        srcs = ["src/rabbit_prelaunch_sup.erl"],
        outs = ["test/rabbit_prelaunch_sup.beam"],
        app_name = "rabbitmq_prelaunch",
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
        srcs = [],
    )

    filegroup(
        name = "srcs",
        srcs = ["src/rabbit_boot_state.erl", "src/rabbit_boot_state_sup.erl", "src/rabbit_boot_state_systemd.erl", "src/rabbit_boot_state_xterm_titlebar.erl", "src/rabbit_logger_fmt_helpers.erl", "src/rabbit_logger_json_fmt.erl", "src/rabbit_logger_std_h.erl", "src/rabbit_logger_text_fmt.erl", "src/rabbit_prelaunch.erl", "src/rabbit_prelaunch_app.erl", "src/rabbit_prelaunch_conf.erl", "src/rabbit_prelaunch_dist.erl", "src/rabbit_prelaunch_early_logging.erl", "src/rabbit_prelaunch_erlang_compat.erl", "src/rabbit_prelaunch_errors.erl", "src/rabbit_prelaunch_file.erl", "src/rabbit_prelaunch_sighandler.erl", "src/rabbit_prelaunch_sup.erl"],
    )
    filegroup(
        name = "priv",
        srcs = [],
    )
    filegroup(
        name = "private_hdrs",
        srcs = [],
    )
    filegroup(
        name = "public_hdrs",
        srcs = [],
    )

def test_suite_beam_files(name = "test_suite_beam_files"):
    erlang_bytecode(
        name = "rabbit_logger_std_h_SUITE_beam_files",
        testonly = True,
        srcs = ["test/rabbit_logger_std_h_SUITE.erl"],
        outs = ["test/rabbit_logger_std_h_SUITE.beam"],
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "rabbit_prelaunch_file_SUITE_beam_files",
        testonly = True,
        srcs = ["test/rabbit_prelaunch_file_SUITE.erl"],
        outs = ["test/rabbit_prelaunch_file_SUITE.beam"],
        erlc_opts = "//:test_erlc_opts",
    )
