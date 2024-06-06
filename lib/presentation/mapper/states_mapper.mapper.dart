// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'states_mapper.dart';

class HomeMenuScreenStateMapper extends ClassMapperBase<HomeMenuScreenState> {
  HomeMenuScreenStateMapper._();

  static HomeMenuScreenStateMapper? _instance;
  static HomeMenuScreenStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HomeMenuScreenStateMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'HomeMenuScreenState';

  static TextEditingController _$controllerFrom(HomeMenuScreenState v) =>
      v.controllerFrom;
  static const Field<HomeMenuScreenState, TextEditingController>
      _f$controllerFrom = Field('controllerFrom', _$controllerFrom);
  static TextEditingController _$controllerWhere(HomeMenuScreenState v) =>
      v.controllerWhere;
  static const Field<HomeMenuScreenState, TextEditingController>
      _f$controllerWhere = Field('controllerWhere', _$controllerWhere);
  static bool _$directionWhereChosen(HomeMenuScreenState v) =>
      v.directionWhereChosen;
  static const Field<HomeMenuScreenState, bool> _f$directionWhereChosen =
      Field('directionWhereChosen', _$directionWhereChosen);

  @override
  final MappableFields<HomeMenuScreenState> fields = const {
    #controllerFrom: _f$controllerFrom,
    #controllerWhere: _f$controllerWhere,
    #directionWhereChosen: _f$directionWhereChosen,
  };

  static HomeMenuScreenState _instantiate(DecodingData data) {
    return HomeMenuScreenState(
        controllerFrom: data.dec(_f$controllerFrom),
        controllerWhere: data.dec(_f$controllerWhere),
        directionWhereChosen: data.dec(_f$directionWhereChosen));
  }

  @override
  final Function instantiate = _instantiate;

  static HomeMenuScreenState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<HomeMenuScreenState>(map);
  }

  static HomeMenuScreenState fromJson(String json) {
    return ensureInitialized().decodeJson<HomeMenuScreenState>(json);
  }
}

mixin HomeMenuScreenStateMappable {
  String toJson() {
    return HomeMenuScreenStateMapper.ensureInitialized()
        .encodeJson<HomeMenuScreenState>(this as HomeMenuScreenState);
  }

  Map<String, dynamic> toMap() {
    return HomeMenuScreenStateMapper.ensureInitialized()
        .encodeMap<HomeMenuScreenState>(this as HomeMenuScreenState);
  }

  HomeMenuScreenStateCopyWith<HomeMenuScreenState, HomeMenuScreenState,
          HomeMenuScreenState>
      get copyWith => _HomeMenuScreenStateCopyWithImpl(
          this as HomeMenuScreenState, $identity, $identity);
  @override
  String toString() {
    return HomeMenuScreenStateMapper.ensureInitialized()
        .stringifyValue(this as HomeMenuScreenState);
  }

  @override
  bool operator ==(Object other) {
    return HomeMenuScreenStateMapper.ensureInitialized()
        .equalsValue(this as HomeMenuScreenState, other);
  }

  @override
  int get hashCode {
    return HomeMenuScreenStateMapper.ensureInitialized()
        .hashValue(this as HomeMenuScreenState);
  }
}

extension HomeMenuScreenStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HomeMenuScreenState, $Out> {
  HomeMenuScreenStateCopyWith<$R, HomeMenuScreenState, $Out>
      get $asHomeMenuScreenState =>
          $base.as((v, t, t2) => _HomeMenuScreenStateCopyWithImpl(v, t, t2));
}

abstract class HomeMenuScreenStateCopyWith<$R, $In extends HomeMenuScreenState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call(
      {TextEditingController? controllerFrom,
      TextEditingController? controllerWhere,
      bool? directionWhereChosen});
  HomeMenuScreenStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _HomeMenuScreenStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HomeMenuScreenState, $Out>
    implements HomeMenuScreenStateCopyWith<$R, HomeMenuScreenState, $Out> {
  _HomeMenuScreenStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HomeMenuScreenState> $mapper =
      HomeMenuScreenStateMapper.ensureInitialized();
  @override
  $R call(
          {TextEditingController? controllerFrom,
          TextEditingController? controllerWhere,
          bool? directionWhereChosen}) =>
      $apply(FieldCopyWithData({
        if (controllerFrom != null) #controllerFrom: controllerFrom,
        if (controllerWhere != null) #controllerWhere: controllerWhere,
        if (directionWhereChosen != null)
          #directionWhereChosen: directionWhereChosen
      }));
  @override
  HomeMenuScreenState $make(CopyWithData data) => HomeMenuScreenState(
      controllerFrom: data.get(#controllerFrom, or: $value.controllerFrom),
      controllerWhere: data.get(#controllerWhere, or: $value.controllerWhere),
      directionWhereChosen:
          data.get(#directionWhereChosen, or: $value.directionWhereChosen));

  @override
  HomeMenuScreenStateCopyWith<$R2, HomeMenuScreenState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _HomeMenuScreenStateCopyWithImpl($value, $cast, t);
}
