class WidgetKeys {
  WidgetKeys._();

  static TicketsSearchScreenKeys get ticketsSearchScreen =>
      TicketsSearchScreenKeys();
  static AllTicketsScreenKeys get allTicketsScreen => AllTicketsScreenKeys();
}

class TicketsSearchScreenKeys {
  final textField1 = 'text_field_1';
  final textField2 = 'text_field_2';
  final offerWidget = 'offer_widget';
  final offerListViewWidget = 'offers_list_widget';
  final searchTicketIcon = 'search_ticket_icon';
  final textField1LeadingIcon = 'text_field_1_leading_icon';
  final textField1TrailingIcon = 'text_field_1_trailing_icon';
  final textField2LeadingIcon = 'text_field_2_leading_icon';
  final textField2TrailingIcon = 'text_field_2_trailing_icon';
  final showAllTicketsButton = 'show_all_tickets_button';
  final ticketsOfferWidget = 'tickets_offer_widget';
  final selectDateButton = 'direction_chosen_option_button1';
  final selectReturnDateButton = 'direction_chosen_option_button0';
  final routeWidget = 'route_widget';
}

class AllTicketsScreenKeys {
  final allTicketsScreenBackButton = 'all_tickets_screen_back_button';
  final ticketWidget = 'ticket_widget';
  final ticketsList = 'tickets_list';
}
