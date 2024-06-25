part of '../mapper/entities_mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class DepartureEntity with DepartureEntityMappable{
  final String town;
  final DateTime date;
  final String airport;

  DepartureEntity({required this.town, required this.date, required this.airport});
}
