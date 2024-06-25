part of 'states_mapper.dart';

@MappableClass()
class AllTicketsState with AllTicketsStateMappable {
  final List<TicketEntity> tickets;

  AllTicketsState({required this.tickets});
}
