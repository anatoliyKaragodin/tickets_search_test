import 'package:dio/dio.dart';
import 'package:tickets_search_test/data/datasources/local/cache_data/tickets_cache_data.dart';
import 'package:tickets_search_test/data/datasources/remote/offer/offer_rds.dart';
import 'package:tickets_search_test/data/models/mapper/models_mapper.dart';

class OfferRDSapiImpl implements OfferRDS {
  final Dio dio;

  const OfferRDSapiImpl(this.dio);

  static const String offersApiUrl =
      'https://run.mocky.io/v3/214a1713-bac0-4853-907c-a1dfc3cd05fd';

  @override
  Future<List<OfferModel>> getAll() async {
    try {
      Response response = await dio.get(offersApiUrl);

      return OfferModel.parseOffers(response.data);
    } catch (e) {

      return OfferModel.parseOffers(TicketsCacheData.offers);
    }
  }
}
