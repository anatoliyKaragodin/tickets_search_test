part of 'mapper/models_mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class OfferModel with OfferModelMappable{
  final int id;
  final String title;
  final String town;
  final Map<String, dynamic> price;

  OfferModel({
    required this.id,
    required this.title,
    required this.town,
    required this.price,
  });

  OfferEntity toEntity() {
    return OfferEntity(
      id: id,
      title: title,
      town: town,
      price: PriceEntityMapper.fromMap(price),
    );
  }

  static List<OfferModel> parseOffers(Map<String, dynamic> responseBody) {
  List<dynamic> offers = responseBody['offers'];
  
  return offers.map((offer) => OfferModel(
    id: offer['id'],
    title: offer['title'],
    town: offer['town'],
    price: {'value': offer['price']['value']},
  )).toList();
}
}