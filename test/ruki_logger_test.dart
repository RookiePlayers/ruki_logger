import 'package:flutter_test/flutter_test.dart';

import 'package:ruki_logger/ruki_logger.dart';

void main() {
  test('Logger test', () {
    Logger.instance.log("Hello World");
    Logger.instance.error("Hello World");
    Logger.instance.test("Hello World");
    Logger.instance.highlight("Hello World");
    Logger.instance.warn("Hello World");
  });
}
