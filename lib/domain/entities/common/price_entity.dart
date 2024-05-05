part of '../mapper/entities_mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class PriceEntity with PriceEntityMappable{
  final int value;

  PriceEntity({
    required this.value,
  });
}
