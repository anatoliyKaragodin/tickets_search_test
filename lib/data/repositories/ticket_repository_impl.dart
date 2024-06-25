import 'package:tickets_search_test/data/datasources/remote/ticket/ticket_rds.dart';
import 'package:tickets_search_test/domain/entities/mapper/entities_mapper.dart';
import 'package:tickets_search_test/domain/repositories/ticket_repository.dart';

class TicketRepositoryImpl implements TicketRepository {
  final TicketRDS rds;

  const TicketRepositoryImpl(this.rds);

  @override
  Future<List<TicketEntity>> getAll() async {
    final res = await rds.getAll();

    return res.map((e) => e.toEntity()).toList();
  }
}
