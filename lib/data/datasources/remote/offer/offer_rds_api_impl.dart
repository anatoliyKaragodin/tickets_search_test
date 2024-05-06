import 'package:dio/dio.dart';
import 'package:tickets_search_test/data/datasources/remote/offer/offer_rds.dart';
import 'package:tickets_search_test/data/models/mapper/models_mapper.dart';

class OfferRDSapiImpl implements OfferRDS {
  final Dio dio;

  const OfferRDSapiImpl(this.dio);

  static const String offersApiUrl =
      'https://run.mocky.io/v3/00727197-24ae-48a0-bcb3-63eb35d7a9de';

  @override
  Future<List<OfferModel>> getAll() async {
    
      Response response = await dio.get(offersApiUrl);

      final data = response.data;

      return OfferModel.parseOffers(data);
    
  }
}
