import 'package:flutter_driver/flutter_driver.dart';

import 'dwidget.dart';

abstract class BaseScreen {
  final FlutterDriver _driver;

  BaseScreen(this._driver);

  DWidget dWidget(dynamic key) => DWidget(_driver, key);
}
