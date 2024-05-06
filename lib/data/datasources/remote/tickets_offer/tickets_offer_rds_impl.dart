import 'package:dio/dio.dart';
import 'package:tickets_search_test/data/models/mapper/models_mapper.dart';

import 'tickets_offer_rds.dart';

class TicketsOfferRDSapiImpl implements TicketsOfferRDS {
  final Dio dio;

  const TicketsOfferRDSapiImpl(this.dio);

  static const String ticketsOffersApiUrl =
      'https://run.mocky.io/v3/3424132d-a51a-4613-b6c9-42b2d214f35f';

  @override
  Future<List<TicketsOfferModel>> getAll() async {
    
      Response response = await dio.get(ticketsOffersApiUrl);

      final data = response.data;

      return TicketsOfferModel.parseOffers(data);
    
  }
}
