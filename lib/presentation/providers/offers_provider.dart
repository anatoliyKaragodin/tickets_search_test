import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tickets_search_test/domain/entities/mapper/entities_mapper.dart';
import 'package:tickets_search_test/domain/use_cases/offer_use_cases.dart';

import '../../domain/di/di_container.dart';

final offersProvider = FutureProvider<List<OfferEntity>>((ref) async {
  return await getIt.get<OfferUseCases>().getAll();
});
