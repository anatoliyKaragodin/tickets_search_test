import 'dart:math';

import '../base_screen.dart';
import '../dwidget.dart';

class TestTicketsSearchScreen extends BaseScreen {
  TestTicketsSearchScreen(super.driver);

  DWidget get textField_1 => dWidget('text_field_1');
  DWidget get textField_2 => dWidget('text_field_2');
  DWidget get offerWidget => dWidget('offer_widget');
  DWidget get offerListViewWidget => dWidget('offers_list');
  DWidget get routeWidget => dWidget('route_${Random().nextInt(2)}');
  DWidget get searchTicketIcon => dWidget('search_ticket_icon');
  DWidget get textField1LeadingIcon => dWidget('text_field_1_leading_icon');
  DWidget get textFieled1TrailingIcon =>
      dWidget('text_field_1_trailing_icon');
  DWidget get textField2LeadingIcon => dWidget('text_field_2_leading_icon');
  DWidget get textFiled2TrailingIcon =>
      dWidget('text_field_2_trailing_icon');
}
