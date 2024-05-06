import 'package:either_dart/either.dart';
import 'package:tickets_search_test/domain/entities/mapper/entities_mapper.dart';

import '../repositories/tickets_offer_repository.dart';

class TicketsOfferUseCases {
  final TicketsOfferRepository repository;

  const TicketsOfferUseCases(this.repository);

  Future<Either<Exception, List<TicketsOfferEntity>>> getAll() async {
    try {
      return Right(await repository.getAll());
    } catch (e) {
      return Left(Exception('Failed to get tickets offers'));
    }
  }
}
