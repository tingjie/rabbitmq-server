load("@rules_erlang//:erlang_bytecode2.bzl", "erlang_bytecode")
load("@rules_erlang//:filegroup.bzl", "filegroup")

def all_beam_files(name = "all_beam_files"):
    filegroup(
        name = "beam_files",
        srcs = ["ebin/rabbit_web_mqtt_examples_app.beam"],
    )
    erlang_bytecode(
        name = "ebin_rabbit_web_mqtt_examples_app_beam",
        srcs = ["src/rabbit_web_mqtt_examples_app.erl"],
        outs = ["ebin/rabbit_web_mqtt_examples_app.beam"],
        app_name = "rabbitmq_web_mqtt_examples",
        erlc_opts = "//:erlc_opts",
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
        srcs = ["priv/bunny.html", "priv/bunny.png", "priv/echo.html", "priv/index.html", "priv/main.css", "priv/mqttws31.js", "priv/pencil.cur"],
    )
    filegroup(
        name = "public_hdrs",
        srcs = [],
    )

    filegroup(
        name = "srcs",
        srcs = ["src/rabbit_web_mqtt_examples_app.erl"],
    )
    filegroup(
        name = "private_hdrs",
        srcs = [],
    )

def all_test_beam_files(name = "all_test_beam_files"):
    filegroup(
        name = "test_beam_files",
        testonly = True,
        srcs = ["test/rabbit_web_mqtt_examples_app.beam"],
    )
    erlang_bytecode(
        name = "test_rabbit_web_mqtt_examples_app_beam",
        testonly = True,
        srcs = ["src/rabbit_web_mqtt_examples_app.erl"],
        outs = ["test/rabbit_web_mqtt_examples_app.beam"],
        app_name = "rabbitmq_web_mqtt_examples",
        erlc_opts = "//:test_erlc_opts",
    )

def test_suite_beam_files(name = "test_suite_beam_files"):
    pass
