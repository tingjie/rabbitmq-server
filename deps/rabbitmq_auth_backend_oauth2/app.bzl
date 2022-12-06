load("@rules_erlang//:erlang_bytecode2.bzl", "erlang_bytecode")
load("@rules_erlang//:filegroup.bzl", "filegroup")

def all_beam_files(name = "all_beam_files"):
    filegroup(
        name = "beam_files",
        srcs = ["ebin/Elixir.RabbitMQ.CLI.Ctl.Commands.AddUaaKeyCommand.beam", "ebin/rabbit_auth_backend_oauth2.beam", "ebin/rabbit_auth_backend_oauth2_app.beam", "ebin/rabbit_oauth2_scope.beam", "ebin/uaa_jwks.beam", "ebin/uaa_jwt.beam", "ebin/uaa_jwt_jwk.beam", "ebin/uaa_jwt_jwt.beam", "ebin/wildcard.beam"],
    )
    erlang_bytecode(
        name = "ebin_Elixir_RabbitMQ_CLI_Ctl_Commands_AddUaaKeyCommand_beam",
        srcs = ["src/Elixir.RabbitMQ.CLI.Ctl.Commands.AddUaaKeyCommand.erl"],
        outs = ["ebin/Elixir.RabbitMQ.CLI.Ctl.Commands.AddUaaKeyCommand.beam"],
        app_name = "rabbitmq_auth_backend_oauth2",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbitmq_cli:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_auth_backend_oauth2_app_beam",
        srcs = ["src/rabbit_auth_backend_oauth2_app.erl"],
        outs = ["ebin/rabbit_auth_backend_oauth2_app.beam"],
        app_name = "rabbitmq_auth_backend_oauth2",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbit_auth_backend_oauth2_beam",
        srcs = ["src/rabbit_auth_backend_oauth2.erl"],
        outs = ["ebin/rabbit_auth_backend_oauth2.beam"],
        app_name = "rabbitmq_auth_backend_oauth2",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_oauth2_scope_beam",
        srcs = ["src/rabbit_oauth2_scope.erl"],
        outs = ["ebin/rabbit_oauth2_scope.beam"],
        app_name = "rabbitmq_auth_backend_oauth2",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_uaa_jwks_beam",
        srcs = ["src/uaa_jwks.erl"],
        outs = ["ebin/uaa_jwks.beam"],
        app_name = "rabbitmq_auth_backend_oauth2",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_uaa_jwt_beam",
        srcs = ["src/uaa_jwt.erl"],
        outs = ["ebin/uaa_jwt.beam"],
        app_name = "rabbitmq_auth_backend_oauth2",
        erlc_opts = "//:erlc_opts",
        deps = ["@jose//:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_uaa_jwt_jwk_beam",
        srcs = ["src/uaa_jwt_jwk.erl"],
        outs = ["ebin/uaa_jwt_jwk.beam"],
        app_name = "rabbitmq_auth_backend_oauth2",
        erlc_opts = "//:erlc_opts",
        deps = ["@jose//:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_uaa_jwt_jwt_beam",
        srcs = ["src/uaa_jwt_jwt.erl"],
        outs = ["ebin/uaa_jwt_jwt.beam"],
        app_name = "rabbitmq_auth_backend_oauth2",
        erlc_opts = "//:erlc_opts",
        deps = ["@jose//:erlang_app"],
    )
    erlang_bytecode(
        name = "ebin_wildcard_beam",
        srcs = ["src/wildcard.erl"],
        outs = ["ebin/wildcard.beam"],
        app_name = "rabbitmq_auth_backend_oauth2",
        erlc_opts = "//:erlc_opts",
    )

def all_test_beam_files(name = "all_test_beam_files"):
    erlang_bytecode(
        name = "test_Elixir_RabbitMQ_CLI_Ctl_Commands_AddUaaKeyCommand_beam",
        testonly = True,
        srcs = ["src/Elixir.RabbitMQ.CLI.Ctl.Commands.AddUaaKeyCommand.erl"],
        outs = ["test/Elixir.RabbitMQ.CLI.Ctl.Commands.AddUaaKeyCommand.beam"],
        app_name = "rabbitmq_auth_backend_oauth2",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbitmq_cli:erlang_app"],
    )
    filegroup(
        name = "test_beam_files",
        testonly = True,
        srcs = ["test/Elixir.RabbitMQ.CLI.Ctl.Commands.AddUaaKeyCommand.beam", "test/rabbit_auth_backend_oauth2.beam", "test/rabbit_auth_backend_oauth2_app.beam", "test/rabbit_oauth2_scope.beam", "test/uaa_jwks.beam", "test/uaa_jwt.beam", "test/uaa_jwt_jwk.beam", "test/uaa_jwt_jwt.beam", "test/wildcard.beam"],
    )
    erlang_bytecode(
        name = "test_rabbit_auth_backend_oauth2_app_beam",
        testonly = True,
        srcs = ["src/rabbit_auth_backend_oauth2_app.erl"],
        outs = ["test/rabbit_auth_backend_oauth2_app.beam"],
        app_name = "rabbitmq_auth_backend_oauth2",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbit_auth_backend_oauth2_beam",
        testonly = True,
        srcs = ["src/rabbit_auth_backend_oauth2.erl"],
        outs = ["test/rabbit_auth_backend_oauth2.beam"],
        app_name = "rabbitmq_auth_backend_oauth2",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_rabbit_oauth2_scope_beam",
        testonly = True,
        srcs = ["src/rabbit_oauth2_scope.erl"],
        outs = ["test/rabbit_oauth2_scope.beam"],
        app_name = "rabbitmq_auth_backend_oauth2",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "test_uaa_jwks_beam",
        testonly = True,
        srcs = ["src/uaa_jwks.erl"],
        outs = ["test/uaa_jwks.beam"],
        app_name = "rabbitmq_auth_backend_oauth2",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_uaa_jwt_beam",
        testonly = True,
        srcs = ["src/uaa_jwt.erl"],
        outs = ["test/uaa_jwt.beam"],
        app_name = "rabbitmq_auth_backend_oauth2",
        erlc_opts = "//:test_erlc_opts",
        deps = ["@jose//:erlang_app"],
    )
    erlang_bytecode(
        name = "test_uaa_jwt_jwk_beam",
        testonly = True,
        srcs = ["src/uaa_jwt_jwk.erl"],
        outs = ["test/uaa_jwt_jwk.beam"],
        app_name = "rabbitmq_auth_backend_oauth2",
        erlc_opts = "//:test_erlc_opts",
        deps = ["@jose//:erlang_app"],
    )
    erlang_bytecode(
        name = "test_uaa_jwt_jwt_beam",
        testonly = True,
        srcs = ["src/uaa_jwt_jwt.erl"],
        outs = ["test/uaa_jwt_jwt.beam"],
        app_name = "rabbitmq_auth_backend_oauth2",
        erlc_opts = "//:test_erlc_opts",
        deps = ["@jose//:erlang_app"],
    )
    erlang_bytecode(
        name = "test_wildcard_beam",
        testonly = True,
        srcs = ["src/wildcard.erl"],
        outs = ["test/wildcard.beam"],
        app_name = "rabbitmq_auth_backend_oauth2",
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
        srcs = ["priv/schema/rabbitmq_auth_backend_oauth2.schema"],
    )
    filegroup(
        name = "public_hdrs",
        srcs = [],
    )

    filegroup(
        name = "srcs",
        srcs = ["src/Elixir.RabbitMQ.CLI.Ctl.Commands.AddUaaKeyCommand.erl", "src/rabbit_auth_backend_oauth2.erl", "src/rabbit_auth_backend_oauth2_app.erl", "src/rabbit_oauth2_scope.erl", "src/uaa_jwks.erl", "src/uaa_jwt.erl", "src/uaa_jwt_jwk.erl", "src/uaa_jwt_jwt.erl", "src/wildcard.erl"],
    )
    filegroup(
        name = "private_hdrs",
        srcs = [],
    )

def test_suite_beam_files(name = "test_suite_beam_files"):
    erlang_bytecode(
        name = "add_uaa_key_command_SUITE_beam_files",
        testonly = True,
        srcs = ["test/add_uaa_key_command_SUITE.erl"],
        outs = ["test/add_uaa_key_command_SUITE.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "config_schema_SUITE_beam_files",
        testonly = True,
        srcs = ["test/config_schema_SUITE.erl"],
        outs = ["test/config_schema_SUITE.beam"],
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "jwks_SUITE_beam_files",
        testonly = True,
        srcs = ["test/jwks_SUITE.erl"],
        outs = ["test/jwks_SUITE.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/amqp_client:erlang_app"],
    )
    erlang_bytecode(
        name = "scope_SUITE_beam_files",
        testonly = True,
        srcs = ["test/scope_SUITE.erl"],
        outs = ["test/scope_SUITE.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "system_SUITE_beam_files",
        testonly = True,
        srcs = ["test/system_SUITE.erl"],
        outs = ["test/system_SUITE.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/amqp_client:erlang_app"],
    )
    erlang_bytecode(
        name = "test_jwks_http_app_beam",
        testonly = True,
        srcs = ["test/jwks_http_app.erl"],
        outs = ["test/jwks_http_app.beam"],
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_jwks_http_handler_beam",
        testonly = True,
        srcs = ["test/jwks_http_handler.erl"],
        outs = ["test/jwks_http_handler.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["@cowboy//:erlang_app"],
    )
    erlang_bytecode(
        name = "test_jwks_http_sup_beam",
        testonly = True,
        srcs = ["test/jwks_http_sup.erl"],
        outs = ["test/jwks_http_sup.beam"],
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbit_auth_backend_oauth2_test_util_beam",
        testonly = True,
        srcs = ["test/rabbit_auth_backend_oauth2_test_util.erl"],
        outs = ["test/rabbit_auth_backend_oauth2_test_util.beam"],
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "unit_SUITE_beam_files",
        testonly = True,
        srcs = ["test/unit_SUITE.erl"],
        outs = ["test/unit_SUITE.beam"],
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )
    erlang_bytecode(
        name = "wildcard_match_SUITE_beam_files",
        testonly = True,
        srcs = ["test/wildcard_match_SUITE.erl"],
        outs = ["test/wildcard_match_SUITE.beam"],
        erlc_opts = "//:test_erlc_opts",
    )
