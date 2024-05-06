import 'package:tickets_search_test/domain/entities/mapper/entities_mapper.dart';
import 'package:tickets_search_test/domain/repositories/offer_repository.dart';

class OfferUseCases {
  final OfferRepository repository;

  const OfferUseCases(this.repository);

  Future<List<OfferEntity>> getAll() async {
    return await repository.getAll();
  }
}
