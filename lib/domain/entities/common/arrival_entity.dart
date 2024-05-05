part of '../mapper/entities_mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class ArrivalEntity with ArrivalEntityMappable{
  final String town;
  final DateTime date;
  final String airport;

  ArrivalEntity({required this.town, required this.date, required this.airport});
}
