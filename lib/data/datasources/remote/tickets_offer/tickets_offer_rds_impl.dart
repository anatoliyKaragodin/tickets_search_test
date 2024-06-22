import 'package:dio/dio.dart';
import 'package:tickets_search_test/data/datasources/local/cache_data/tickets_cache_data.dart';
import 'package:tickets_search_test/data/models/mapper/models_mapper.dart';

import 'tickets_offer_rds.dart';

class TicketsOfferRDSapiImpl implements TicketsOfferRDS {
  final Dio dio;

  const TicketsOfferRDSapiImpl(this.dio);

  static const String ticketsOffersApiUrl =
      'https://run.mocky.io/v3/7e55bf02-89ff-4847-9eb7-7d83ef884017';

  @override
  Future<List<TicketsOfferModel>> getAll() async {
    try {
      Response response = await dio.get(ticketsOffersApiUrl);

      return TicketsOfferModel.parseOffers(response.data);
    } catch (e) {
      return TicketsOfferModel.parseOffers(TicketsCacheData.ticketsOffers);
    }
  }
}
