import 'package:tickets_search_test/domain/entities/mapper/entities_mapper.dart';

import '../repositories/tickets_offer_repository.dart';

class TicketsOfferUseCases {
  final TicketsOfferRepository repository;

  const TicketsOfferUseCases(this.repository);

  Future<List<TicketsOfferEntity>> getAll() async {
    return await repository.getAll();
  }
}
