import 'package:tickets_search_test/domain/entities/mapper/entities_mapper.dart';

import '../../domain/repositories/tickets_offer_repository.dart';
import '../datasources/remote/tickets_offer/tickets_offer_rds.dart';

class TicketsOfferRepositoryImpl implements TicketsOfferRepository {
  final TicketsOfferRDS rds;

  const TicketsOfferRepositoryImpl(this.rds);

  @override
  Future<List<TicketsOfferEntity>> getAll() async {
    final res = await rds.getAll();

    return res.map((e) => e.toEntity()).toList();
  }
}
