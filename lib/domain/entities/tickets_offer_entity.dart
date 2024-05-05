part of 'mapper/entities_mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class TicketsOfferEntity with TicketsOfferEntityMappable {
  final int id;
  final String title;
  final List<String> timeRange;
  @MappableField()
  final PriceEntity price;

  TicketsOfferEntity({
    required this.id,
    required this.title,
    required this.timeRange,
    required this.price,
  });
}
