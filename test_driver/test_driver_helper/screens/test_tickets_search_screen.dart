import 'dart:math';

import '../base_screen.dart';
import '../dwidget.dart';

class TestTicketsSearchScreen extends BaseScreen {
  TestTicketsSearchScreen(super.driver);

  DWidget get textField_1 => dWidget('text_field_1');
  DWidget get textField_2 => dWidget('text_field_2');
  DWidget get offerWidget => dWidget('offer_widget');
  DWidget get offerListViewWidget => dWidget('offers_list_widget');
  DWidget get routeWidget => dWidget('route_${Random().nextInt(2)}');
  DWidget get searchTicketIcon => dWidget('search_ticket_icon');
  DWidget get textField1LeadingIcon => dWidget('text_field_1_leading_icon');
  DWidget get textFieled1TrailingIcon => dWidget('text_field_1_trailing_icon');
  DWidget get textField2LeadingIcon => dWidget('text_field_2_leading_icon');
  DWidget get textFiled2TrailingIcon => dWidget('text_field_2_trailing_icon');

  DWidget get showAllTicketsButton => dWidget('show_all_tickets_button');
  DWidget get allTicketsScreenBackButton =>
      dWidget('all_tickets_screen_back_button');
  DWidget get ticketsOfferWidget => dWidget('tickets_offer_widget');
  DWidget get ticketWidget => dWidget('ticket_widget');
  DWidget get selectDateButton => dWidget('direction_chosen_option_button1');
  DWidget get selectReturnDateButton =>
      dWidget('direction_chosen_option_button0');
  DWidget get ticketsList => dWidget('tickets_list');
}
