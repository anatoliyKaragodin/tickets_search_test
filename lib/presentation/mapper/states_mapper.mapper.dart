// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'states_mapper.dart';

class TicketsSearchScreenStateMapper
    extends ClassMapperBase<TicketsSearchScreenState> {
  TicketsSearchScreenStateMapper._();

  static TicketsSearchScreenStateMapper? _instance;
  static TicketsSearchScreenStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals
          .use(_instance = TicketsSearchScreenStateMapper._());
      OfferEntityMapper.ensureInitialized();
      TicketsOfferEntityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TicketsSearchScreenState';

  static TextEditingController _$controllerFrom(TicketsSearchScreenState v) =>
      v.controllerFrom;
  static const Field<TicketsSearchScreenState, TextEditingController>
      _f$controllerFrom = Field('controllerFrom', _$controllerFrom);
  static TextEditingController _$controllerWhere(TicketsSearchScreenState v) =>
      v.controllerWhere;
  static const Field<TicketsSearchScreenState, TextEditingController>
      _f$controllerWhere = Field('controllerWhere', _$controllerWhere);
  static bool _$directionWhereChosen(TicketsSearchScreenState v) =>
      v.directionWhereChosen;
  static const Field<TicketsSearchScreenState, bool> _f$directionWhereChosen =
      Field('directionWhereChosen', _$directionWhereChosen);
  static List<OfferEntity> _$offers(TicketsSearchScreenState v) => v.offers;
  static const Field<TicketsSearchScreenState, List<OfferEntity>> _f$offers =
      Field('offers', _$offers);
  static List<TicketsOfferEntity> _$ticketsOffers(TicketsSearchScreenState v) =>
      v.ticketsOffers;
  static const Field<TicketsSearchScreenState, List<TicketsOfferEntity>>
      _f$ticketsOffers = Field('ticketsOffers', _$ticketsOffers);
  static DateTime _$date(TicketsSearchScreenState v) => v.date;
  static const Field<TicketsSearchScreenState, DateTime> _f$date =
      Field('date', _$date);

  @override
  final MappableFields<TicketsSearchScreenState> fields = const {
    #controllerFrom: _f$controllerFrom,
    #controllerWhere: _f$controllerWhere,
    #directionWhereChosen: _f$directionWhereChosen,
    #offers: _f$offers,
    #ticketsOffers: _f$ticketsOffers,
    #date: _f$date,
  };

  static TicketsSearchScreenState _instantiate(DecodingData data) {
    return TicketsSearchScreenState(
        controllerFrom: data.dec(_f$controllerFrom),
        controllerWhere: data.dec(_f$controllerWhere),
        directionWhereChosen: data.dec(_f$directionWhereChosen),
        offers: data.dec(_f$offers),
        ticketsOffers: data.dec(_f$ticketsOffers),
        date: data.dec(_f$date));
  }

  @override
  final Function instantiate = _instantiate;

  static TicketsSearchScreenState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TicketsSearchScreenState>(map);
  }

  static TicketsSearchScreenState fromJson(String json) {
    return ensureInitialized().decodeJson<TicketsSearchScreenState>(json);
  }
}

mixin TicketsSearchScreenStateMappable {
  String toJson() {
    return TicketsSearchScreenStateMapper.ensureInitialized()
        .encodeJson<TicketsSearchScreenState>(this as TicketsSearchScreenState);
  }

  Map<String, dynamic> toMap() {
    return TicketsSearchScreenStateMapper.ensureInitialized()
        .encodeMap<TicketsSearchScreenState>(this as TicketsSearchScreenState);
  }

  TicketsSearchScreenStateCopyWith<TicketsSearchScreenState,
          TicketsSearchScreenState, TicketsSearchScreenState>
      get copyWith => _TicketsSearchScreenStateCopyWithImpl(
          this as TicketsSearchScreenState, $identity, $identity);
  @override
  String toString() {
    return TicketsSearchScreenStateMapper.ensureInitialized()
        .stringifyValue(this as TicketsSearchScreenState);
  }

  @override
  bool operator ==(Object other) {
    return TicketsSearchScreenStateMapper.ensureInitialized()
        .equalsValue(this as TicketsSearchScreenState, other);
  }

  @override
  int get hashCode {
    return TicketsSearchScreenStateMapper.ensureInitialized()
        .hashValue(this as TicketsSearchScreenState);
  }
}

extension TicketsSearchScreenStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TicketsSearchScreenState, $Out> {
  TicketsSearchScreenStateCopyWith<$R, TicketsSearchScreenState, $Out>
      get $asTicketsSearchScreenState => $base
          .as((v, t, t2) => _TicketsSearchScreenStateCopyWithImpl(v, t, t2));
}

abstract class TicketsSearchScreenStateCopyWith<
    $R,
    $In extends TicketsSearchScreenState,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, OfferEntity,
      OfferEntityCopyWith<$R, OfferEntity, OfferEntity>> get offers;
  ListCopyWith<
      $R,
      TicketsOfferEntity,
      TicketsOfferEntityCopyWith<$R, TicketsOfferEntity,
          TicketsOfferEntity>> get ticketsOffers;
  $R call(
      {TextEditingController? controllerFrom,
      TextEditingController? controllerWhere,
      bool? directionWhereChosen,
      List<OfferEntity>? offers,
      List<TicketsOfferEntity>? ticketsOffers,
      DateTime? date});
  TicketsSearchScreenStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TicketsSearchScreenStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TicketsSearchScreenState, $Out>
    implements
        TicketsSearchScreenStateCopyWith<$R, TicketsSearchScreenState, $Out> {
  _TicketsSearchScreenStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TicketsSearchScreenState> $mapper =
      TicketsSearchScreenStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, OfferEntity,
          OfferEntityCopyWith<$R, OfferEntity, OfferEntity>>
      get offers => ListCopyWith($value.offers, (v, t) => v.copyWith.$chain(t),
          (v) => call(offers: v));
  @override
  ListCopyWith<
      $R,
      TicketsOfferEntity,
      TicketsOfferEntityCopyWith<$R, TicketsOfferEntity,
          TicketsOfferEntity>> get ticketsOffers => ListCopyWith(
      $value.ticketsOffers,
      (v, t) => v.copyWith.$chain(t),
      (v) => call(ticketsOffers: v));
  @override
  $R call(
          {TextEditingController? controllerFrom,
          TextEditingController? controllerWhere,
          bool? directionWhereChosen,
          List<OfferEntity>? offers,
          List<TicketsOfferEntity>? ticketsOffers,
          DateTime? date}) =>
      $apply(FieldCopyWithData({
        if (controllerFrom != null) #controllerFrom: controllerFrom,
        if (controllerWhere != null) #controllerWhere: controllerWhere,
        if (directionWhereChosen != null)
          #directionWhereChosen: directionWhereChosen,
        if (offers != null) #offers: offers,
        if (ticketsOffers != null) #ticketsOffers: ticketsOffers,
        if (date != null) #date: date
      }));
  @override
  TicketsSearchScreenState $make(CopyWithData data) => TicketsSearchScreenState(
      controllerFrom: data.get(#controllerFrom, or: $value.controllerFrom),
      controllerWhere: data.get(#controllerWhere, or: $value.controllerWhere),
      directionWhereChosen:
          data.get(#directionWhereChosen, or: $value.directionWhereChosen),
      offers: data.get(#offers, or: $value.offers),
      ticketsOffers: data.get(#ticketsOffers, or: $value.ticketsOffers),
      date: data.get(#date, or: $value.date));

  @override
  TicketsSearchScreenStateCopyWith<$R2, TicketsSearchScreenState, $Out2>
      $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
          _TicketsSearchScreenStateCopyWithImpl($value, $cast, t);
}

class AllTicketsStateMapper extends ClassMapperBase<AllTicketsState> {
  AllTicketsStateMapper._();

  static AllTicketsStateMapper? _instance;
  static AllTicketsStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = AllTicketsStateMapper._());
      TicketEntityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'AllTicketsState';

  static List<TicketEntity> _$tickets(AllTicketsState v) => v.tickets;
  static const Field<AllTicketsState, List<TicketEntity>> _f$tickets =
      Field('tickets', _$tickets);

  @override
  final MappableFields<AllTicketsState> fields = const {
    #tickets: _f$tickets,
  };

  static AllTicketsState _instantiate(DecodingData data) {
    return AllTicketsState(tickets: data.dec(_f$tickets));
  }

  @override
  final Function instantiate = _instantiate;

  static AllTicketsState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<AllTicketsState>(map);
  }

  static AllTicketsState fromJson(String json) {
    return ensureInitialized().decodeJson<AllTicketsState>(json);
  }
}

mixin AllTicketsStateMappable {
  String toJson() {
    return AllTicketsStateMapper.ensureInitialized()
        .encodeJson<AllTicketsState>(this as AllTicketsState);
  }

  Map<String, dynamic> toMap() {
    return AllTicketsStateMapper.ensureInitialized()
        .encodeMap<AllTicketsState>(this as AllTicketsState);
  }

  AllTicketsStateCopyWith<AllTicketsState, AllTicketsState, AllTicketsState>
      get copyWith => _AllTicketsStateCopyWithImpl(
          this as AllTicketsState, $identity, $identity);
  @override
  String toString() {
    return AllTicketsStateMapper.ensureInitialized()
        .stringifyValue(this as AllTicketsState);
  }

  @override
  bool operator ==(Object other) {
    return AllTicketsStateMapper.ensureInitialized()
        .equalsValue(this as AllTicketsState, other);
  }

  @override
  int get hashCode {
    return AllTicketsStateMapper.ensureInitialized()
        .hashValue(this as AllTicketsState);
  }
}

extension AllTicketsStateValueCopy<$R, $Out>
    on ObjectCopyWith<$R, AllTicketsState, $Out> {
  AllTicketsStateCopyWith<$R, AllTicketsState, $Out> get $asAllTicketsState =>
      $base.as((v, t, t2) => _AllTicketsStateCopyWithImpl(v, t, t2));
}

abstract class AllTicketsStateCopyWith<$R, $In extends AllTicketsState, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, TicketEntity,
      TicketEntityCopyWith<$R, TicketEntity, TicketEntity>> get tickets;
  $R call({List<TicketEntity>? tickets});
  AllTicketsStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _AllTicketsStateCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, AllTicketsState, $Out>
    implements AllTicketsStateCopyWith<$R, AllTicketsState, $Out> {
  _AllTicketsStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<AllTicketsState> $mapper =
      AllTicketsStateMapper.ensureInitialized();
  @override
  ListCopyWith<$R, TicketEntity,
          TicketEntityCopyWith<$R, TicketEntity, TicketEntity>>
      get tickets => ListCopyWith($value.tickets,
          (v, t) => v.copyWith.$chain(t), (v) => call(tickets: v));
  @override
  $R call({List<TicketEntity>? tickets}) =>
      $apply(FieldCopyWithData({if (tickets != null) #tickets: tickets}));
  @override
  AllTicketsState $make(CopyWithData data) =>
      AllTicketsState(tickets: data.get(#tickets, or: $value.tickets));

  @override
  AllTicketsStateCopyWith<$R2, AllTicketsState, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _AllTicketsStateCopyWithImpl($value, $cast, t);
}
