part of 'mapper/entities_mapper.dart';

@MappableClass()
class OfferEntity with OfferEntityMappable{
  final int id;
  final String title;
  final String town;
  @MappableField()
  final PriceEntity price;

  OfferEntity({
    required this.id,
    required this.title,
    required this.town,
    required this.price,
  });
}

