load("@rules_erlang//:erlang_bytecode2.bzl", "erlang_bytecode")
load("@rules_erlang//:filegroup.bzl", "filegroup")

def all_beam_files(name = "all_beam_files"):
    filegroup(
        name = "beam_files",
        srcs = ["ebin/rabbit_auth_mechanism_ssl.beam", "ebin/rabbit_auth_mechanism_ssl_app.beam"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_auth_mechanism_ssl_app_beam",
        srcs = ["src/rabbit_auth_mechanism_ssl_app.erl"],
        outs = ["ebin/rabbit_auth_mechanism_ssl_app.beam"],
        app_name = "rabbitmq_auth_mechanism_ssl",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbit_auth_mechanism_ssl_beam",
        srcs = ["src/rabbit_auth_mechanism_ssl.erl"],
        outs = ["ebin/rabbit_auth_mechanism_ssl.beam"],
        app_name = "rabbitmq_auth_mechanism_ssl",
        erlc_opts = "//:erlc_opts",
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
        srcs = [],
    )

    filegroup(
        name = "srcs",
        srcs = ["src/rabbit_auth_mechanism_ssl.erl", "src/rabbit_auth_mechanism_ssl_app.erl"],
    )
    filegroup(
        name = "private_hdrs",
        srcs = [],
    )
    filegroup(
        name = "public_hdrs",
        srcs = [],
    )

def all_test_beam_files(name = "all_test_beam_files"):
    filegroup(
        name = "test_beam_files",
        testonly = True,
        srcs = ["test/rabbit_auth_mechanism_ssl.beam", "test/rabbit_auth_mechanism_ssl_app.beam"],
    )
    erlang_bytecode(
        name = "test_rabbit_auth_mechanism_ssl_app_beam",
        testonly = True,
        srcs = ["src/rabbit_auth_mechanism_ssl_app.erl"],
        outs = ["test/rabbit_auth_mechanism_ssl_app.beam"],
        app_name = "rabbitmq_auth_mechanism_ssl",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbit_auth_mechanism_ssl_beam",
        testonly = True,
        srcs = ["src/rabbit_auth_mechanism_ssl.erl"],
        outs = ["test/rabbit_auth_mechanism_ssl.beam"],
        app_name = "rabbitmq_auth_mechanism_ssl",
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )

def test_suite_beam_files(name = "test_suite_beam_files"):
    pass
