import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:tickets_search_test/data/datasources/remote/offer/offer_rds.dart';
import 'package:tickets_search_test/data/models/mapper/models_mapper.dart';
import 'dart:developer' as dev;

class OfferRDSapiImpl implements OfferRDS {
  final Dio dio;

  const OfferRDSapiImpl(this.dio);

  static const String offersApiUrl =
      'https://run.mocky.io/v3/214a1713-bac0-4853-907c-a1dfc3cd05fd';

  @override
  Future<List<OfferModel>> getAll() async {
    Response response = await dio.get(offersApiUrl);


    if (kDebugMode) {
      print('Offers json: ${response.data.runtimeType}');
    }

    return OfferModel.parseOffers(response.data);
  }
}
