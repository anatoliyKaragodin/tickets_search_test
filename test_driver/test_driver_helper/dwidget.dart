import 'package:flutter_driver/flutter_driver.dart';

import '../app_test.dart';

typedef TestAction = Future<void> Function();

Future<void> runTestActionsWithDelay(Iterable<TestAction> actions,
    {Duration delay = const Duration(seconds: 1)}) async {
  for (final action in actions) {
    await action();
    await Future.delayed(delay);
  }
}

class DWidget {
  final FlutterDriver _driver;
  final SerializableFinder _finder;
  final dynamic _valueKey;

  DWidget(this._driver, this._valueKey) : _finder = find.byValueKey(_valueKey);

  /// Нажатие
  TestAction tap({Duration timeout = const Duration(milliseconds: 500)}) =>
      () async {
        logger.info(pen('Tapping on widget with key: $_valueKey'));
        await _driver.tap(_finder, timeout: timeout);
      };

  /// Нажать и ввести текст
  TestAction setText(String text,
          {Duration timeout = const Duration(milliseconds: 500)}) =>
      () async {
        logger.info(
            pen('Tapping on widget with key: $_valueKey to set text: $text'));
        await _driver.tap(_finder, timeout: timeout);
        await _driver.enterText(text, timeout: timeout);
        await _driver.sendTextInputAction(TextInputAction.done);
      };

  /// Прокрутка до виджета
  TestAction scrollIntoView({Duration timeout = const Duration(seconds: 2)}) =>
      () async {
        logger.info(pen('Scrolling into view widget with key: $_valueKey'));
        await _driver.scrollIntoView(_finder, timeout: timeout);
      };

  /// Ожидание видимости виджета
  TestAction waitForVisible({Duration timeout = const Duration(seconds: 10)}) =>
      () async {
        logger
            .info(pen('Waiting for visibility of widget with key: $_valueKey'));
        await _driver.waitFor(_finder, timeout: timeout);
      };

  /// Ожидание невидимости виджета
  TestAction waitForAbsent({Duration timeout = const Duration(seconds: 10)}) =>
      () async {
        logger.info(pen('Waiting for absence of widget with key: $_valueKey'));
        await _driver.waitForAbsent(_finder, timeout: timeout);
      };

  /// Получение текста виджета
  Future<String> getText(
      {Duration timeout = const Duration(seconds: 2)}) async {
    logger.info(pen('Getting text from widget with key: $_valueKey'));
    return await _driver.getText(_finder, timeout: timeout);
  }

  /// Долгое нажатие на виджет
  TestAction longPress(
          {Duration timeout = const Duration(milliseconds: 500),
          Duration? duration}) =>
      () async {
        logger.info(pen('Long pressing on widget with key: $_valueKey'));
        await _driver.scroll(
            _finder, 0, 0, duration ?? const Duration(milliseconds: 500),
            timeout: timeout);
      };

  /// Выполнение свайпа вверх
  TestAction swipeUp(
          {Duration timeout = const Duration(seconds: 1), double dy = -500}) =>
      () async {
        logger.info(pen('Swiping up on widget with key: $_valueKey'));
        await _driver.scroll(_finder, 0, dy, const Duration(milliseconds: 500),
            timeout: timeout);
      };

  /// Выполнение свайпа вниз
  TestAction swipeDown(
          {Duration timeout = const Duration(seconds: 1), double dy = 500}) =>
      () async {
        logger.info(pen('Swiping down on widget with key: $_valueKey'));
        await _driver.scroll(_finder, 0, dy, const Duration(milliseconds: 500),
            timeout: timeout);
      };

  /// Выполнение свайпа влево
  TestAction swipeLeft(
          {Duration timeout = const Duration(seconds: 1), double dx = -500}) =>
      () async {
        logger.info(pen('Swiping left on widget with key: $_valueKey'));
        await _driver.scroll(_finder, dx, 0, const Duration(milliseconds: 500),
            timeout: timeout);
      };

  /// Выполнение свайпа вправо
  TestAction swipeRight(
          {Duration timeout = const Duration(seconds: 1), double dx = 500}) =>
      () async {
        logger.info(pen('Swiping right on widget with key: $_valueKey'));
        await _driver.scroll(_finder, dx, 0, const Duration(milliseconds: 500),
            timeout: timeout);
      };

  /// Получение атрибута
  Future<String> getAttribute(String attribute,
      {Duration timeout = const Duration(seconds: 2)}) async {
    logger.info(
        pen('Getting attribute $attribute from widget with key: $_valueKey'));
    return await _driver.getText(
        find.descendant(of: _finder, matching: find.byValueKey(attribute)),
        timeout: timeout);
  }

  TestAction selectDate(int date) => () async {
        await _driver.tap(find.text(date.toString()));
        await _driver.tap(find.text('ОК'));
      };
}
