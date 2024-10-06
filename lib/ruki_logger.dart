library ruki_logger;

// ignore_for_file: avoid_print

import 'package:chalkdart/chalk.dart';

class Logger {
  static final Logger instance = Logger._internal();
  final bool disableTimeStamp = false;
  final String _TAG = "INFO";

  factory Logger() {
    return instance;
  }

  Logger._internal();

  void log(String message, {
    String tagPrefix = "-",
    String tagSuffix = ":",
    String messageSuffix = "",
  }) {
    print(
        "${!disableTimeStamp ? DateTime.now().toIso8601String() : tagPrefix} $_TAG$tagSuffix $message $messageSuffix");
  }

  void error(Object? object, {
    String tagPrefix = "-",
    String tagSuffix = ":",
    String messageSuffix = "",
  }) {
    print(
        "${!disableTimeStamp ? DateTime.now().toIso8601String() : tagPrefix} ${chalk.red("ERROR$tagSuffix $object $messageSuffix")}");
  }

  void test(Object? object, {
    String tagPrefix = "-",
    String tagSuffix = ":",
    String messageSuffix = "",
  }) {
    print(
        "${!disableTimeStamp ? DateTime.now().toIso8601String() : tagPrefix} ${chalk.green("TEST$tagSuffix $object $messageSuffix")}");
  }

  void highlight(Object? object, {
    String tagPrefix = "-",
    String tagSuffix = ":",
    String messageSuffix = "",
  }) {
    print(
        "${!disableTimeStamp ? DateTime.now().toIso8601String() : tagPrefix} ${chalk.yellowBright("HIGHLIGHT$tagSuffix $object $messageSuffix")}");
  }

  void warn(Object? object, {
    String tagPrefix = "-",
    String tagSuffix = ":",
    String messageSuffix = "",
  }) {
    print(
        "${!disableTimeStamp ? DateTime.now().toIso8601String() : tagPrefix} ${chalk.yellow("Warning$tagSuffix $object $messageSuffix")}");
  }

  void info(Object? object, {
    String tagPrefix = "-",
    String tagSuffix = ":",
    String messageSuffix = "",
  }) {
    print(
        "${!disableTimeStamp ? DateTime.now().toIso8601String() : tagPrefix} ${chalk.grey("INFO$tagSuffix $object $messageSuffix")}");
  }

  void task(Object? object, {
    String tagPrefix = "-",
    String tagSuffix = ":",
    String messageSuffix = "✔",
  }) {
    print(
        "${!disableTimeStamp ? DateTime.now().toIso8601String() : tagPrefix} ${chalk.green("TASK$tagSuffix $object $messageSuffix")}");
  }

  void custom(Object? object,{
    String tagPrefix = "-",
    String tagSuffix = ":",
    String messageSuffix = "",
    String color = '#0000FF',
  }) {
    print(
        "${!disableTimeStamp ? DateTime.now().toIso8601String() : tagPrefix} ${chalk.hex(color)("CUSTOM$tagSuffix $object $messageSuffix")}");
  }
}
