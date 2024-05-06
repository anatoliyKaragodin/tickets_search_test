part of 'mapper/models_mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class TicketsOfferModel with TicketsOfferModelMappable{
  final int id;
  final String title;
  final List<String> timeRange;
  final Map<String, dynamic> price;

  TicketsOfferModel({
    required this.id,
    required this.title,
    required this.timeRange,
    required this.price,
  });

 TicketsOfferEntity toEntity() {
  return TicketsOfferEntity(
    id: id,
    title: title,
    timeRange: timeRange,
    price: PriceEntityMapper.fromMap(price),
  );
}
}