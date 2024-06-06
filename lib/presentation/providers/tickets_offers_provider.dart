import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tickets_search_test/domain/use_cases/tickets_offer_use_cases.dart';

import '../../domain/di/di_container.dart';
import '../../domain/entities/mapper/entities_mapper.dart';

final ticketsOffersProvider = FutureProvider<List<TicketsOfferEntity>>((ref) async {
  return await getIt.get<TicketsOfferUseCases>().getAll();
});