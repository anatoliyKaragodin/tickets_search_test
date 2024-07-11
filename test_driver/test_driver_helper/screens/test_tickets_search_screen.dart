import 'dart:math';

import 'package:tickets_search_test/presentation/utils/widget_keys/widget_keys.dart';

import '../test_base_screen.dart';
import '../dwidget.dart';

class TestTicketsSearchScreen extends TestBaseScreen {
  TestTicketsSearchScreen(super.driver, this.keys);

  final TicketsSearchScreenKeys keys;

  DWidget get textField_1 => dWidget(keys.textField1);
  DWidget get textField_2 => dWidget(keys.textField2);
  DWidget get offerWidget => dWidget(keys.offerWidget);
  DWidget get offerListViewWidget => dWidget(keys.offerListViewWidget);
  DWidget get routeWidget =>
      dWidget('${keys.routeWidget}${Random().nextInt(2)}');
  DWidget get searchTicketIcon => dWidget(keys.searchTicketIcon);
  DWidget get textField1LeadingIcon => dWidget(keys.textField1LeadingIcon);
  DWidget get textFieled1TrailingIcon => dWidget(keys.textField1TrailingIcon);
  DWidget get textField2LeadingIcon => dWidget(keys.textField2LeadingIcon);
  DWidget get textFiled2TrailingIcon => dWidget(keys.textField2TrailingIcon);
  DWidget get showAllTicketsButton => dWidget(keys.showAllTicketsButton);
  DWidget get ticketsOfferWidget => dWidget(keys.ticketsOfferWidget);
  DWidget get selectDateButton => dWidget(keys.selectDateButton);
  DWidget get selectReturnDateButton => dWidget(keys.selectReturnDateButton);
}
