import 'package:dio/dio.dart';
import 'package:tickets_search_test/data/datasources/local/cache_data/tickets_cache_data.dart';
import 'package:tickets_search_test/data/datasources/remote/ticket/ticket_rds.dart';
import 'package:tickets_search_test/data/models/mapper/models_mapper.dart';

class TicketRDSapiImpl implements TicketRDS {
  final Dio dio;

  const TicketRDSapiImpl(this.dio);

  static const String ticketsApiUrl =
      'https://run.mocky.io/v3/2dbc0999-86bf-4c08-8671-bac4b7a5f7eb';

  @override
  Future<List<TicketModel>> getAll() async {
    try {
      Response response = await dio.get(ticketsApiUrl);

      return TicketModel.parseTickets(response.data);
    } catch (e) {
      

      return TicketModel.parseTickets(TicketsCacheData.tickets);
    }
  }
}
