import 'package:dio/dio.dart';
import 'package:tickets_search_test/data/datasources/remote/offer/offer_rds.dart';
import 'package:tickets_search_test/data/models/mapper/models_mapper.dart';

class OfferRDSapiImpl implements OfferRDS {
  final Dio dio;

  const OfferRDSapiImpl(this.dio);

  static const String offersApiUrl =
      'https://run.mocky.io/v3/2dbc0999-86bf-4c08-8671-bac4b7a5f7eb';

  @override
  Future<List<OfferModel>> getAll() async {
    try {
      Response response = await dio.get(offersApiUrl);

      final data = response.data;

      return OfferModel.parseOffers(data);
    } catch (e) {
      throw Exception();
    }
  }
}
