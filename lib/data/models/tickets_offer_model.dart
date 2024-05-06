part of 'mapper/models_mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class TicketsOfferModel with TicketsOfferModelMappable {
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

  static List<TicketsOfferModel> parseOffers(String data) {
    final parsed = json.decode(data);

    List<dynamic> ticketsOffers = parsed['tickets_offers'];

    return ticketsOffers
        .map((offer) => TicketsOfferModel(
            id: offer['id'],
            title: offer['title'],
            timeRange: List<String>.from(offer['time_range']),
            price: {'value': offer['price']['value']}))
        .toList();
  }
}
