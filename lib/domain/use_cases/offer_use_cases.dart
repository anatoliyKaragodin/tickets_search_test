import 'package:either_dart/either.dart';
import 'package:tickets_search_test/domain/entities/mapper/entities_mapper.dart';
import 'package:tickets_search_test/domain/repositories/offer_repository.dart';

class OfferUseCases {
  final OfferRepository repository;

  const OfferUseCases(this.repository);

  Future<Either<Exception, List<OfferEntity>>> getAll() async {
    try {
      return Right(await repository.getAll());
    } catch (e) {
      return Left(Exception('Failed to get offers'));
    }
  }
}
