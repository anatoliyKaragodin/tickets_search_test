part of 'mapper/entities_mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class TicketEntity with TicketEntityMappable {
  final int id;
  final String badge;
  final PriceEntity price;
  final String providerName;
  final String company;
  final DepartureEntity departure;
  final ArrivalEntity arrival;
  final bool hasTransfer;
  final bool hasVisaTransfer;
  final LuggageEntity luggage;
  final HandLuggageEntity handLuggage;
  final bool isReturnable;
  final bool isExchangable;

  TicketEntity({
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
}
