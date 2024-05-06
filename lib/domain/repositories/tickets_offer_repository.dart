import 'package:tickets_search_test/domain/entities/mapper/entities_mapper.dart';

abstract class TicketsOfferRepository {
    Future<List<TicketsOfferEntity>> getAll();
}