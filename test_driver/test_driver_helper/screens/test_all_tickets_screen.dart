import 'package:tickets_search_test/presentation/utils/widget_keys/widget_keys.dart';

import '../test_base_screen.dart';
import '../dwidget.dart';

class TestAllTicketsScreen extends TestBaseScreen {
  TestAllTicketsScreen(super.driver, this.keys);

  final AllTicketsScreenKeys keys;

  DWidget get allTicketsScreenBackButton =>
      dWidget(keys.allTicketsScreenBackButton);
  DWidget get ticketWidget => dWidget(keys.ticketWidget);
  DWidget get ticketsList => dWidget(keys.ticketsList);
}
