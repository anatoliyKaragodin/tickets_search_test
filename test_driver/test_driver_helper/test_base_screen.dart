import 'package:flutter_driver/flutter_driver.dart';

import 'dwidget.dart';

abstract class TestBaseScreen {
  final FlutterDriver _driver;
  

  TestBaseScreen(this._driver);

  DWidget dWidget(dynamic key) => DWidget(_driver, key);
}
