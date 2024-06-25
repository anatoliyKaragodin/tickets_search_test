import 'package:tickets_search_test/domain/entities/mapper/entities_mapper.dart';

import '../../domain/repositories/offer_repository.dart';
import '../datasources/remote/offer/offer_rds.dart';

class OfferRepositoryImpl implements OfferRepository {
  final OfferRDS rds;

  const OfferRepositoryImpl(this.rds);

  @override
  Future<List<OfferEntity>> getAll() async {
    final res = await rds.getAll();

    List<OfferEntity> entities = res.map((e) => e.toEntity()).toList();

    return entities;
  }
}
