part of 'states_mapper.dart';

@MappableClass()
class HomeMenuScreenState with HomeMenuScreenStateMappable {
  final TextEditingController controllerFrom;
  final TextEditingController controllerWhere;
  final bool directionWhereChosen;

  HomeMenuScreenState(
      {required this.controllerFrom,
      required this.controllerWhere,
      required this.directionWhereChosen});
}
