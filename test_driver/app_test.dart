import 'package:ansicolor/ansicolor.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:logging/logging.dart';
import 'package:test/test.dart';
import 'package:tickets_search_test/presentation/utils/widget_keys/widget_keys.dart';

import 'test_driver_helper/dwidget.dart';
import 'test_driver_helper/screens/test_all_tickets_screen.dart';
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

    test('tickets search screen test', () async {
      final searchTicketsScreen =
          TestTicketsSearchScreen(driver!, WidgetKeys.ticketsSearchScreen);

      final allTicketsScreen =
          TestAllTicketsScreen(driver!, WidgetKeys.allTicketsScreen);

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

        /// Закрывает окно и меняет отображение экрана выбора билетов

        // Жмём на кнопку возврата к диалоговому окну
        searchTicketsScreen.searchTicketIcon.tap(),

        // // Жмём икноку очистки конечной точки
        // searchTicketsScreen.textFiled2TrailingIcon.tap(),

        // Жмём на один из вариантов конечной точки
        searchTicketsScreen.routeWidget.tap(),

        /// Закрывает окно и меняет отображение экрана выбора билетов

        // Ждём отображения билетов (tickets_offer)
        searchTicketsScreen.ticketsOfferWidget.waitForVisible(),

        // Жмём кнопку выбора даты
        searchTicketsScreen.selectDateButton.tap(),

        // Выбираем дату
        searchTicketsScreen.selectDateButton.selectDate(DateTime.now().day + 1),

        // Выбираем обратную дату
        searchTicketsScreen.selectReturnDateButton.tap(),
        searchTicketsScreen.selectDateButton.selectDate(DateTime.now().day + 2),

        // Жмём кнопку показать все билеты
        searchTicketsScreen.showAllTicketsButton.tap(),

        /// Переход на экран со всеми билетами

        // Ждём отображения билетов (ticket)
        allTicketsScreen.ticketWidget.waitForVisible(),

        // Скроллим билеты вниз (tickets_list)
        allTicketsScreen.ticketsList.swipeUp(),

        // Скроллим билеты вверх (tickets_list)
        allTicketsScreen.ticketsList.swipeDown(),

        // Жмём кнопку возврата на предыдущиё экран
        allTicketsScreen.allTicketsScreenBackButton.tap(),

        /// Переходим на экран с выбранными точками отправления и прибытия
      ]);
    });
  }, timeout: const Timeout(Duration(minutes: 10)));
}
