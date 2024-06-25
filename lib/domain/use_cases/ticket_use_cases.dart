import 'package:tickets_search_test/domain/entities/mapper/entities_mapper.dart';
import 'package:tickets_search_test/domain/repositories/ticket_repository.dart';

class TicketUseCases {
  final TicketRepository repository;

  const TicketUseCases(this.repository);

  Future<List<TicketEntity>> getAll() async {
    return await repository.getAll();
  }
}
