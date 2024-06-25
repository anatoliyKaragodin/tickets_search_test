
import '../entities/mapper/entities_mapper.dart';

abstract class OfferRepository {
  
  Future<List<OfferEntity>> getAll();
}
