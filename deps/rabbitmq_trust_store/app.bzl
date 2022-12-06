load("@rules_erlang//:erlang_bytecode2.bzl", "erlang_bytecode")
load("@rules_erlang//:filegroup.bzl", "filegroup")

def all_beam_files(name = "all_beam_files"):
    filegroup(
        name = "beam_files",
        srcs = ["ebin/rabbit_trust_store.beam", "ebin/rabbit_trust_store_app.beam", "ebin/rabbit_trust_store_certificate_provider.beam", "ebin/rabbit_trust_store_file_provider.beam", "ebin/rabbit_trust_store_http_provider.beam", "ebin/rabbit_trust_store_sup.beam"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_trust_store_app_beam",
        srcs = ["src/rabbit_trust_store_app.erl"],
        outs = ["ebin/rabbit_trust_store_app.beam"],
        app_name = "rabbitmq_trust_store",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbit_trust_store_beam",
        srcs = ["src/rabbit_trust_store.erl"],
        outs = ["ebin/rabbit_trust_store.beam"],
        app_name = "rabbitmq_trust_store",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbit_trust_store_certificate_provider_beam",
        srcs = ["src/rabbit_trust_store_certificate_provider.erl"],
        outs = ["ebin/rabbit_trust_store_certificate_provider.beam"],
        app_name = "rabbitmq_trust_store",
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbit_trust_store_file_provider_beam",
        srcs = ["src/rabbit_trust_store_file_provider.erl"],
        outs = ["ebin/rabbit_trust_store_file_provider.beam"],
        app_name = "rabbitmq_trust_store",
        beam = ["ebin/rabbit_trust_store_certificate_provider.beam"],
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbit_trust_store_http_provider_beam",
        srcs = ["src/rabbit_trust_store_http_provider.erl"],
        outs = ["ebin/rabbit_trust_store_http_provider.beam"],
        app_name = "rabbitmq_trust_store",
        beam = ["ebin/rabbit_trust_store_certificate_provider.beam"],
        erlc_opts = "//:erlc_opts",
    )
    erlang_bytecode(
        name = "ebin_rabbit_trust_store_sup_beam",
        srcs = ["src/rabbit_trust_store_sup.erl"],
        outs = ["ebin/rabbit_trust_store_sup.beam"],
        app_name = "rabbitmq_trust_store",
        erlc_opts = "//:erlc_opts",
        deps = ["//deps/rabbit_common:erlang_app"],
    )

def all_test_beam_files(name = "all_test_beam_files"):
    filegroup(
        name = "test_beam_files",
        testonly = True,
        srcs = ["test/rabbit_trust_store.beam", "test/rabbit_trust_store_app.beam", "test/rabbit_trust_store_certificate_provider.beam", "test/rabbit_trust_store_file_provider.beam", "test/rabbit_trust_store_http_provider.beam", "test/rabbit_trust_store_sup.beam"],
    )
    erlang_bytecode(
        name = "test_rabbit_trust_store_app_beam",
        testonly = True,
        srcs = ["src/rabbit_trust_store_app.erl"],
        outs = ["test/rabbit_trust_store_app.beam"],
        app_name = "rabbitmq_trust_store",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbit_trust_store_beam",
        testonly = True,
        srcs = ["src/rabbit_trust_store.erl"],
        outs = ["test/rabbit_trust_store.beam"],
        app_name = "rabbitmq_trust_store",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbit_trust_store_certificate_provider_beam",
        testonly = True,
        srcs = ["src/rabbit_trust_store_certificate_provider.erl"],
        outs = ["test/rabbit_trust_store_certificate_provider.beam"],
        app_name = "rabbitmq_trust_store",
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbit_trust_store_file_provider_beam",
        testonly = True,
        srcs = ["src/rabbit_trust_store_file_provider.erl"],
        outs = ["test/rabbit_trust_store_file_provider.beam"],
        app_name = "rabbitmq_trust_store",
        beam = ["ebin/rabbit_trust_store_certificate_provider.beam"],
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbit_trust_store_http_provider_beam",
        testonly = True,
        srcs = ["src/rabbit_trust_store_http_provider.erl"],
        outs = ["test/rabbit_trust_store_http_provider.beam"],
        app_name = "rabbitmq_trust_store",
        beam = ["ebin/rabbit_trust_store_certificate_provider.beam"],
        erlc_opts = "//:test_erlc_opts",
    )
    erlang_bytecode(
        name = "test_rabbit_trust_store_sup_beam",
        testonly = True,
        srcs = ["src/rabbit_trust_store_sup.erl"],
        outs = ["test/rabbit_trust_store_sup.beam"],
        app_name = "rabbitmq_trust_store",
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
        srcs = ["priv/schema/rabbitmq_trust_store.schema"],
    )
    filegroup(
        name = "public_hdrs",
        srcs = [],
    )

    filegroup(
        name = "srcs",
        srcs = ["src/rabbit_trust_store.erl", "src/rabbit_trust_store_app.erl", "src/rabbit_trust_store_certificate_provider.erl", "src/rabbit_trust_store_file_provider.erl", "src/rabbit_trust_store_http_provider.erl", "src/rabbit_trust_store_sup.erl"],
    )
    filegroup(
        name = "private_hdrs",
        srcs = [],
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
        erlc_opts = "//:test_erlc_opts",
        deps = ["//deps/amqp_client:erlang_app"],
    )
