import 'package:either_dart/either.dart';
import 'package:tickets_search_test/domain/entities/mapper/entities_mapper.dart';
import 'package:tickets_search_test/domain/repositories/ticket_repository.dart';

class TicketUseCases {
  final TicketRepository repository;

  const TicketUseCases(this.repository);

  Future<Either<Exception, List<TicketEntity>>> getAll() async {
    try {
      return Right(await repository.getAll());
    } catch (e) {
      return Left(Exception('Failed to get tickets'));
    }
  }
}
