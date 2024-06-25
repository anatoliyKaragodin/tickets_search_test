part of '../mapper/entities_mapper.dart';

@MappableClass(caseStyle: CaseStyle.snakeCase)
class HandLuggageEntity with HandLuggageEntityMappable{
  final bool hasHandLuggage;
  final String size;

  HandLuggageEntity({required this.hasHandLuggage, required this.size});
}

