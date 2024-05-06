import 'package:tickets_search_test/data/models/mapper/models_mapper.dart';

abstract class TicketRDS {

  Future<List<TicketModel>> getAll();

}
