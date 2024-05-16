import 'package:either_dart/either.dart';
import 'package:tickets_search_test/domain/entities/mapper/entities_mapper.dart';
import 'package:tickets_search_test/domain/repositories/offer_repository.dart';
import 'dart:developer' as dev;

class OfferUseCases {
  final OfferRepository repository;

  const OfferUseCases(this.repository);

  Future<List<OfferEntity>> getAll() async {
  
      final res = await repository.getAll();
      dev.log(res.toString());
      return res;
    
  }
}
