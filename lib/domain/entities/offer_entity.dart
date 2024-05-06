part of 'mapper/entities_mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class OfferEntity with OfferEntityMappable{
  final int id;
  final String title;
  final String town;
  final PriceEntity price;

  OfferEntity({
    required this.id,
    required this.title,
    required this.town,
    required this.price,
  });
}

