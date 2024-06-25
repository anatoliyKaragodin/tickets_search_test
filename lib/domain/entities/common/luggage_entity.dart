part of '../mapper/entities_mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class LuggageEntity with LuggageEntityMappable{
  final bool hasLuggage;
  final PriceEntity price;

  LuggageEntity({required this.hasLuggage, required this.price});
}

