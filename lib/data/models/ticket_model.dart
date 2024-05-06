part of 'mapper/models_mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class TicketModel with TicketModelMappable{
  final int id;
  final String badge;
  final PriceEntity price;
  final String providerName;
  final String company;
  final Map<String, dynamic> departure;
  final Map<String, dynamic> arrival;
  final bool hasTransfer;
  final bool hasVisaTransfer;
  final Map<String, dynamic> luggage;
  final Map<String, dynamic> handLuggage;
  final bool isReturnable;
  final bool isExchangable;

  TicketModel({
    required this.id,
    required this.badge,
    required this.price,
    required this.providerName,
    required this.company,
    required this.departure,
    required this.arrival,
    required this.hasTransfer,
    required this.hasVisaTransfer,
    required this.luggage,
    required this.handLuggage,
    required this.isReturnable,
    required this.isExchangable,
  });

 TicketEntity toEntity() {
  return TicketEntity(
    id: id,
    badge: badge,
    price: price,
    providerName: providerName,
    company: company,
    departure: DepartureEntityMapper.fromMap(departure),
    arrival: ArrivalEntityMapper.fromMap(arrival),
    hasTransfer: hasTransfer,
    hasVisaTransfer: hasVisaTransfer,
    luggage: LuggageEntityMapper.fromMap(luggage),
    handLuggage: HandLuggageEntityMapper.fromMap(handLuggage),
    isReturnable: isReturnable,
    isExchangable: isExchangable,
  );
}
}