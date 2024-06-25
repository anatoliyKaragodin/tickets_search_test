part of 'states_mapper.dart';

@MappableClass()
class TicketsSearchScreenState with TicketsSearchScreenStateMappable {
  final TextEditingController controllerFrom;
  final TextEditingController controllerWhere;
  final bool directionWhereChosen;

  final List<OfferEntity> offers;
  final List<TicketsOfferEntity> ticketsOffers;

  final DateTime date;
  final DateTime? returnDate;

  TicketsSearchScreenState({
    required this.controllerFrom,
    required this.controllerWhere,
    required this.directionWhereChosen,
    required this.offers,
    required this.ticketsOffers,
    required this.date,
    this.returnDate
  });
}
