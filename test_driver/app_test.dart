import 'package:ansicolor/ansicolor.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:logging/logging.dart';
import 'package:test/test.dart';

import 'test_driver_helper/dwidget.dart';
import 'test_driver_helper/screens/test_tickets_search_screen.dart';

final Logger logger = Logger('TestLogger');

AnsiPen pen = AnsiPen()..yellow(bold: true);

void main() {
  Logger.root.level = Level.ALL;
  Logger.root.onRecord.listen((record) {
    print(
        '${record.level.name}: ${record.time}: ${record.message.toUpperCase()}');
  });
  group('Integration Test', () {
    FlutterDriver? driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      if (driver != null) {
        driver!.close();
      }
    });

    test('full test', () async {
      final searchTicketsScreen = TestTicketsSearchScreen(driver!);

      await runTestActionsWithDelay([
        // Ждём загрузку офферов
        searchTicketsScreen.offerWidget.waitForVisible(),

        // Делаем свайпы офферов
        searchTicketsScreen.offerListViewWidget.swipeLeft(),
        searchTicketsScreen.offerListViewWidget.swipeRight(),

        // Вводим точку отправления
        searchTicketsScreen.textField_1.setText('Минск'),

        // Нажимаем на точку прибытия
        searchTicketsScreen.textField_2.tap(),

        /// Переходит на диалоговое окно для выбора точки прибытия и дат

        // Вводим конечную точку
        searchTicketsScreen.textField_2.setText('Москва'),

        // // Жмём иконку очистки конечной точки
        // searchTicketsScreen.textFiled2TrailingIcon.tap(),

        // Жмём на один из вариантов конечной точки
        searchTicketsScreen.routeWidget.tap(),

        /// Закрывает окно и меняет отображение экрана выбора билетов

        // Жмём на кнопку возврата к диалоговому окну
        searchTicketsScreen.searchTicketIcon.tap(),

        /// Переходит на диалоговое окно для выбора точки прибытия и дат

        // Жмём на один из вариантов конечной точки
        searchTicketsScreen.routeWidget.tap(),
      ]);
    });
  }, 
  timeout: const Timeout(Duration(minutes: 5)));
}
