load("@rules_erlang//:erlang_bytecode2.bzl", "erlang_bytecode")
load("@rules_erlang//:filegroup.bzl", "filegroup")

def all_beam_files(name = "all_beam_files"):
    filegroup(
        name = "beam_files",
        srcs = ["ebin/rabbit_auth_backend_http.beam", "ebin/rabbit_auth_backend_http_app.beam"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_auth_backend_http_app_beam",
        srcs = ["src/rabbit_auth_backend_http_app.erl"],
        outs = ["ebin/rabbit_auth_backend_http_app.beam"],
        app_name = "rabbitmq_auth_backend_http",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbit_auth_backend_http_beam",
        srcs = ["src/rabbit_auth_backend_http.erl"],
        outs = ["ebin/rabbit_auth_backend_http.beam"],
        app_name = "rabbitmq_auth_backend_http",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )

def all_test_beam_files(name = "all_test_beam_files"):
    filegroup(
        name = "test_beam_files",
        testonly = True,
        srcs = ["test/rabbit_auth_backend_http.beam", "test/rabbit_auth_backend_http_app.beam"],
    )
    erlang_bytecode(
        name = "test_rabbit_auth_backend_http_app_beam",
        testonly = True,
        srcs = ["src/rabbit_auth_backend_http_app.erl"],
        outs = ["test/rabbit_auth_backend_http_app.beam"],
        app_name = "rabbitmq_auth_backend_http",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbit_auth_backend_http_beam",
        testonly = True,
        srcs = ["src/rabbit_auth_backend_http.erl"],
        outs = ["test/rabbit_auth_backend_http.beam"],
        app_name = "rabbitmq_auth_backend_http",
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
        srcs = ["priv/schema/rabbitmq_auth_backend_http.schema"],
    )
    filegroup(
        name = "public_hdrs",
        srcs = [],
    )

    filegroup(
        name = "srcs",
        srcs = ["src/rabbit_auth_backend_http.erl", "src/rabbit_auth_backend_http_app.erl"],
    )
    filegroup(
        name = "private_hdrs",
        srcs = [],
    )

def test_suite_beam_files(name = "test_suite_beam_files"):
    erlang_bytecode(
        name = "auth_SUITE_beam_files",
        testonly = True,
        srcs = ["test/auth_SUITE.erl"],
        outs = ["test/auth_SUITE.beam"],
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
        name = "test_auth_http_mock_beam",
        testonly = True,
        srcs = ["test/auth_http_mock.erl"],
        outs = ["test/auth_http_mock.beam"],
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "unit_SUITE_beam_files",
        testonly = True,
        srcs = ["test/unit_SUITE.erl"],
        outs = ["test/unit_SUITE.beam"],
        erlc_opts = "//:test_erlc_opts",
    )
