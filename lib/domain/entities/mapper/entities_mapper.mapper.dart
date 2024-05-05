// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'entities_mapper.dart';

class TicketEntityMapper extends ClassMapperBase<TicketEntity> {
  TicketEntityMapper._();

  static TicketEntityMapper? _instance;
  static TicketEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TicketEntityMapper._());
      PriceEntityMapper.ensureInitialized();
      DepartureEntityMapper.ensureInitialized();
      ArrivalEntityMapper.ensureInitialized();
      LuggageEntityMapper.ensureInitialized();
      HandLuggageEntityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TicketEntity';

  static int _$id(TicketEntity v) => v.id;
  static const Field<TicketEntity, int> _f$id = Field('id', _$id);
  static String _$badge(TicketEntity v) => v.badge;
  static const Field<TicketEntity, String> _f$badge = Field('badge', _$badge);
  static PriceEntity _$price(TicketEntity v) => v.price;
  static const Field<TicketEntity, PriceEntity> _f$price =
      Field('price', _$price);
  static String _$providerName(TicketEntity v) => v.providerName;
  static const Field<TicketEntity, String> _f$providerName =
      Field('providerName', _$providerName);
  static String _$company(TicketEntity v) => v.company;
  static const Field<TicketEntity, String> _f$company =
      Field('company', _$company);
  static DepartureEntity _$departure(TicketEntity v) => v.departure;
  static const Field<TicketEntity, DepartureEntity> _f$departure =
      Field('departure', _$departure);
  static ArrivalEntity _$arrival(TicketEntity v) => v.arrival;
  static const Field<TicketEntity, ArrivalEntity> _f$arrival =
      Field('arrival', _$arrival);
  static bool _$hasTransfer(TicketEntity v) => v.hasTransfer;
  static const Field<TicketEntity, bool> _f$hasTransfer =
      Field('hasTransfer', _$hasTransfer);
  static bool _$hasVisaTransfer(TicketEntity v) => v.hasVisaTransfer;
  static const Field<TicketEntity, bool> _f$hasVisaTransfer =
      Field('hasVisaTransfer', _$hasVisaTransfer);
  static LuggageEntity _$luggage(TicketEntity v) => v.luggage;
  static const Field<TicketEntity, LuggageEntity> _f$luggage =
      Field('luggage', _$luggage);
  static HandLuggageEntity _$handLuggage(TicketEntity v) => v.handLuggage;
  static const Field<TicketEntity, HandLuggageEntity> _f$handLuggage =
      Field('handLuggage', _$handLuggage);
  static bool _$isReturnable(TicketEntity v) => v.isReturnable;
  static const Field<TicketEntity, bool> _f$isReturnable =
      Field('isReturnable', _$isReturnable);
  static bool _$isExchangable(TicketEntity v) => v.isExchangable;
  static const Field<TicketEntity, bool> _f$isExchangable =
      Field('isExchangable', _$isExchangable);

  @override
  final MappableFields<TicketEntity> fields = const {
    #id: _f$id,
    #badge: _f$badge,
    #price: _f$price,
    #providerName: _f$providerName,
    #company: _f$company,
    #departure: _f$departure,
    #arrival: _f$arrival,
    #hasTransfer: _f$hasTransfer,
    #hasVisaTransfer: _f$hasVisaTransfer,
    #luggage: _f$luggage,
    #handLuggage: _f$handLuggage,
    #isReturnable: _f$isReturnable,
    #isExchangable: _f$isExchangable,
  };

  static TicketEntity _instantiate(DecodingData data) {
    return TicketEntity(
        id: data.dec(_f$id),
        badge: data.dec(_f$badge),
        price: data.dec(_f$price),
        providerName: data.dec(_f$providerName),
        company: data.dec(_f$company),
        departure: data.dec(_f$departure),
        arrival: data.dec(_f$arrival),
        hasTransfer: data.dec(_f$hasTransfer),
        hasVisaTransfer: data.dec(_f$hasVisaTransfer),
        luggage: data.dec(_f$luggage),
        handLuggage: data.dec(_f$handLuggage),
        isReturnable: data.dec(_f$isReturnable),
        isExchangable: data.dec(_f$isExchangable));
  }

  @override
  final Function instantiate = _instantiate;

  static TicketEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TicketEntity>(map);
  }

  static TicketEntity fromJson(String json) {
    return ensureInitialized().decodeJson<TicketEntity>(json);
  }
}

mixin TicketEntityMappable {
  String toJson() {
    return TicketEntityMapper.ensureInitialized()
        .encodeJson<TicketEntity>(this as TicketEntity);
  }

  Map<String, dynamic> toMap() {
    return TicketEntityMapper.ensureInitialized()
        .encodeMap<TicketEntity>(this as TicketEntity);
  }

  TicketEntityCopyWith<TicketEntity, TicketEntity, TicketEntity> get copyWith =>
      _TicketEntityCopyWithImpl(this as TicketEntity, $identity, $identity);
  @override
  String toString() {
    return TicketEntityMapper.ensureInitialized()
        .stringifyValue(this as TicketEntity);
  }

  @override
  bool operator ==(Object other) {
    return TicketEntityMapper.ensureInitialized()
        .equalsValue(this as TicketEntity, other);
  }

  @override
  int get hashCode {
    return TicketEntityMapper.ensureInitialized()
        .hashValue(this as TicketEntity);
  }
}

extension TicketEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TicketEntity, $Out> {
  TicketEntityCopyWith<$R, TicketEntity, $Out> get $asTicketEntity =>
      $base.as((v, t, t2) => _TicketEntityCopyWithImpl(v, t, t2));
}

abstract class TicketEntityCopyWith<$R, $In extends TicketEntity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  PriceEntityCopyWith<$R, PriceEntity, PriceEntity> get price;
  DepartureEntityCopyWith<$R, DepartureEntity, DepartureEntity> get departure;
  ArrivalEntityCopyWith<$R, ArrivalEntity, ArrivalEntity> get arrival;
  LuggageEntityCopyWith<$R, LuggageEntity, LuggageEntity> get luggage;
  HandLuggageEntityCopyWith<$R, HandLuggageEntity, HandLuggageEntity>
      get handLuggage;
  $R call(
      {int? id,
      String? badge,
      PriceEntity? price,
      String? providerName,
      String? company,
      DepartureEntity? departure,
      ArrivalEntity? arrival,
      bool? hasTransfer,
      bool? hasVisaTransfer,
      LuggageEntity? luggage,
      HandLuggageEntity? handLuggage,
      bool? isReturnable,
      bool? isExchangable});
  TicketEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TicketEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TicketEntity, $Out>
    implements TicketEntityCopyWith<$R, TicketEntity, $Out> {
  _TicketEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TicketEntity> $mapper =
      TicketEntityMapper.ensureInitialized();
  @override
  PriceEntityCopyWith<$R, PriceEntity, PriceEntity> get price =>
      $value.price.copyWith.$chain((v) => call(price: v));
  @override
  DepartureEntityCopyWith<$R, DepartureEntity, DepartureEntity> get departure =>
      $value.departure.copyWith.$chain((v) => call(departure: v));
  @override
  ArrivalEntityCopyWith<$R, ArrivalEntity, ArrivalEntity> get arrival =>
      $value.arrival.copyWith.$chain((v) => call(arrival: v));
  @override
  LuggageEntityCopyWith<$R, LuggageEntity, LuggageEntity> get luggage =>
      $value.luggage.copyWith.$chain((v) => call(luggage: v));
  @override
  HandLuggageEntityCopyWith<$R, HandLuggageEntity, HandLuggageEntity>
      get handLuggage =>
          $value.handLuggage.copyWith.$chain((v) => call(handLuggage: v));
  @override
  $R call(
          {int? id,
          String? badge,
          PriceEntity? price,
          String? providerName,
          String? company,
          DepartureEntity? departure,
          ArrivalEntity? arrival,
          bool? hasTransfer,
          bool? hasVisaTransfer,
          LuggageEntity? luggage,
          HandLuggageEntity? handLuggage,
          bool? isReturnable,
          bool? isExchangable}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (badge != null) #badge: badge,
        if (price != null) #price: price,
        if (providerName != null) #providerName: providerName,
        if (company != null) #company: company,
        if (departure != null) #departure: departure,
        if (arrival != null) #arrival: arrival,
        if (hasTransfer != null) #hasTransfer: hasTransfer,
        if (hasVisaTransfer != null) #hasVisaTransfer: hasVisaTransfer,
        if (luggage != null) #luggage: luggage,
        if (handLuggage != null) #handLuggage: handLuggage,
        if (isReturnable != null) #isReturnable: isReturnable,
        if (isExchangable != null) #isExchangable: isExchangable
      }));
  @override
  TicketEntity $make(CopyWithData data) => TicketEntity(
      id: data.get(#id, or: $value.id),
      badge: data.get(#badge, or: $value.badge),
      price: data.get(#price, or: $value.price),
      providerName: data.get(#providerName, or: $value.providerName),
      company: data.get(#company, or: $value.company),
      departure: data.get(#departure, or: $value.departure),
      arrival: data.get(#arrival, or: $value.arrival),
      hasTransfer: data.get(#hasTransfer, or: $value.hasTransfer),
      hasVisaTransfer: data.get(#hasVisaTransfer, or: $value.hasVisaTransfer),
      luggage: data.get(#luggage, or: $value.luggage),
      handLuggage: data.get(#handLuggage, or: $value.handLuggage),
      isReturnable: data.get(#isReturnable, or: $value.isReturnable),
      isExchangable: data.get(#isExchangable, or: $value.isExchangable));

  @override
  TicketEntityCopyWith<$R2, TicketEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TicketEntityCopyWithImpl($value, $cast, t);
}

class PriceEntityMapper extends ClassMapperBase<PriceEntity> {
  PriceEntityMapper._();

  static PriceEntityMapper? _instance;
  static PriceEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = PriceEntityMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'PriceEntity';

  static int _$value(PriceEntity v) => v.value;
  static const Field<PriceEntity, int> _f$value = Field('value', _$value);

  @override
  final MappableFields<PriceEntity> fields = const {
    #value: _f$value,
  };

  static PriceEntity _instantiate(DecodingData data) {
    return PriceEntity(value: data.dec(_f$value));
  }

  @override
  final Function instantiate = _instantiate;

  static PriceEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<PriceEntity>(map);
  }

  static PriceEntity fromJson(String json) {
    return ensureInitialized().decodeJson<PriceEntity>(json);
  }
}

mixin PriceEntityMappable {
  String toJson() {
    return PriceEntityMapper.ensureInitialized()
        .encodeJson<PriceEntity>(this as PriceEntity);
  }

  Map<String, dynamic> toMap() {
    return PriceEntityMapper.ensureInitialized()
        .encodeMap<PriceEntity>(this as PriceEntity);
  }

  PriceEntityCopyWith<PriceEntity, PriceEntity, PriceEntity> get copyWith =>
      _PriceEntityCopyWithImpl(this as PriceEntity, $identity, $identity);
  @override
  String toString() {
    return PriceEntityMapper.ensureInitialized()
        .stringifyValue(this as PriceEntity);
  }

  @override
  bool operator ==(Object other) {
    return PriceEntityMapper.ensureInitialized()
        .equalsValue(this as PriceEntity, other);
  }

  @override
  int get hashCode {
    return PriceEntityMapper.ensureInitialized().hashValue(this as PriceEntity);
  }
}

extension PriceEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, PriceEntity, $Out> {
  PriceEntityCopyWith<$R, PriceEntity, $Out> get $asPriceEntity =>
      $base.as((v, t, t2) => _PriceEntityCopyWithImpl(v, t, t2));
}

abstract class PriceEntityCopyWith<$R, $In extends PriceEntity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({int? value});
  PriceEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _PriceEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, PriceEntity, $Out>
    implements PriceEntityCopyWith<$R, PriceEntity, $Out> {
  _PriceEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<PriceEntity> $mapper =
      PriceEntityMapper.ensureInitialized();
  @override
  $R call({int? value}) =>
      $apply(FieldCopyWithData({if (value != null) #value: value}));
  @override
  PriceEntity $make(CopyWithData data) =>
      PriceEntity(value: data.get(#value, or: $value.value));

  @override
  PriceEntityCopyWith<$R2, PriceEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _PriceEntityCopyWithImpl($value, $cast, t);
}

class DepartureEntityMapper extends ClassMapperBase<DepartureEntity> {
  DepartureEntityMapper._();

  static DepartureEntityMapper? _instance;
  static DepartureEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = DepartureEntityMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'DepartureEntity';

  static String _$town(DepartureEntity v) => v.town;
  static const Field<DepartureEntity, String> _f$town = Field('town', _$town);
  static DateTime _$date(DepartureEntity v) => v.date;
  static const Field<DepartureEntity, DateTime> _f$date = Field('date', _$date);
  static String _$airport(DepartureEntity v) => v.airport;
  static const Field<DepartureEntity, String> _f$airport =
      Field('airport', _$airport);

  @override
  final MappableFields<DepartureEntity> fields = const {
    #town: _f$town,
    #date: _f$date,
    #airport: _f$airport,
  };

  static DepartureEntity _instantiate(DecodingData data) {
    return DepartureEntity(
        town: data.dec(_f$town),
        date: data.dec(_f$date),
        airport: data.dec(_f$airport));
  }

  @override
  final Function instantiate = _instantiate;

  static DepartureEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<DepartureEntity>(map);
  }

  static DepartureEntity fromJson(String json) {
    return ensureInitialized().decodeJson<DepartureEntity>(json);
  }
}

mixin DepartureEntityMappable {
  String toJson() {
    return DepartureEntityMapper.ensureInitialized()
        .encodeJson<DepartureEntity>(this as DepartureEntity);
  }

  Map<String, dynamic> toMap() {
    return DepartureEntityMapper.ensureInitialized()
        .encodeMap<DepartureEntity>(this as DepartureEntity);
  }

  DepartureEntityCopyWith<DepartureEntity, DepartureEntity, DepartureEntity>
      get copyWith => _DepartureEntityCopyWithImpl(
          this as DepartureEntity, $identity, $identity);
  @override
  String toString() {
    return DepartureEntityMapper.ensureInitialized()
        .stringifyValue(this as DepartureEntity);
  }

  @override
  bool operator ==(Object other) {
    return DepartureEntityMapper.ensureInitialized()
        .equalsValue(this as DepartureEntity, other);
  }

  @override
  int get hashCode {
    return DepartureEntityMapper.ensureInitialized()
        .hashValue(this as DepartureEntity);
  }
}

extension DepartureEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, DepartureEntity, $Out> {
  DepartureEntityCopyWith<$R, DepartureEntity, $Out> get $asDepartureEntity =>
      $base.as((v, t, t2) => _DepartureEntityCopyWithImpl(v, t, t2));
}

abstract class DepartureEntityCopyWith<$R, $In extends DepartureEntity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? town, DateTime? date, String? airport});
  DepartureEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _DepartureEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, DepartureEntity, $Out>
    implements DepartureEntityCopyWith<$R, DepartureEntity, $Out> {
  _DepartureEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<DepartureEntity> $mapper =
      DepartureEntityMapper.ensureInitialized();
  @override
  $R call({String? town, DateTime? date, String? airport}) =>
      $apply(FieldCopyWithData({
        if (town != null) #town: town,
        if (date != null) #date: date,
        if (airport != null) #airport: airport
      }));
  @override
  DepartureEntity $make(CopyWithData data) => DepartureEntity(
      town: data.get(#town, or: $value.town),
      date: data.get(#date, or: $value.date),
      airport: data.get(#airport, or: $value.airport));

  @override
  DepartureEntityCopyWith<$R2, DepartureEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _DepartureEntityCopyWithImpl($value, $cast, t);
}

class ArrivalEntityMapper extends ClassMapperBase<ArrivalEntity> {
  ArrivalEntityMapper._();

  static ArrivalEntityMapper? _instance;
  static ArrivalEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = ArrivalEntityMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'ArrivalEntity';

  static String _$town(ArrivalEntity v) => v.town;
  static const Field<ArrivalEntity, String> _f$town = Field('town', _$town);
  static DateTime _$date(ArrivalEntity v) => v.date;
  static const Field<ArrivalEntity, DateTime> _f$date = Field('date', _$date);
  static String _$airport(ArrivalEntity v) => v.airport;
  static const Field<ArrivalEntity, String> _f$airport =
      Field('airport', _$airport);

  @override
  final MappableFields<ArrivalEntity> fields = const {
    #town: _f$town,
    #date: _f$date,
    #airport: _f$airport,
  };

  static ArrivalEntity _instantiate(DecodingData data) {
    return ArrivalEntity(
        town: data.dec(_f$town),
        date: data.dec(_f$date),
        airport: data.dec(_f$airport));
  }

  @override
  final Function instantiate = _instantiate;

  static ArrivalEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<ArrivalEntity>(map);
  }

  static ArrivalEntity fromJson(String json) {
    return ensureInitialized().decodeJson<ArrivalEntity>(json);
  }
}

mixin ArrivalEntityMappable {
  String toJson() {
    return ArrivalEntityMapper.ensureInitialized()
        .encodeJson<ArrivalEntity>(this as ArrivalEntity);
  }

  Map<String, dynamic> toMap() {
    return ArrivalEntityMapper.ensureInitialized()
        .encodeMap<ArrivalEntity>(this as ArrivalEntity);
  }

  ArrivalEntityCopyWith<ArrivalEntity, ArrivalEntity, ArrivalEntity>
      get copyWith => _ArrivalEntityCopyWithImpl(
          this as ArrivalEntity, $identity, $identity);
  @override
  String toString() {
    return ArrivalEntityMapper.ensureInitialized()
        .stringifyValue(this as ArrivalEntity);
  }

  @override
  bool operator ==(Object other) {
    return ArrivalEntityMapper.ensureInitialized()
        .equalsValue(this as ArrivalEntity, other);
  }

  @override
  int get hashCode {
    return ArrivalEntityMapper.ensureInitialized()
        .hashValue(this as ArrivalEntity);
  }
}

extension ArrivalEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, ArrivalEntity, $Out> {
  ArrivalEntityCopyWith<$R, ArrivalEntity, $Out> get $asArrivalEntity =>
      $base.as((v, t, t2) => _ArrivalEntityCopyWithImpl(v, t, t2));
}

abstract class ArrivalEntityCopyWith<$R, $In extends ArrivalEntity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? town, DateTime? date, String? airport});
  ArrivalEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _ArrivalEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, ArrivalEntity, $Out>
    implements ArrivalEntityCopyWith<$R, ArrivalEntity, $Out> {
  _ArrivalEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<ArrivalEntity> $mapper =
      ArrivalEntityMapper.ensureInitialized();
  @override
  $R call({String? town, DateTime? date, String? airport}) =>
      $apply(FieldCopyWithData({
        if (town != null) #town: town,
        if (date != null) #date: date,
        if (airport != null) #airport: airport
      }));
  @override
  ArrivalEntity $make(CopyWithData data) => ArrivalEntity(
      town: data.get(#town, or: $value.town),
      date: data.get(#date, or: $value.date),
      airport: data.get(#airport, or: $value.airport));

  @override
  ArrivalEntityCopyWith<$R2, ArrivalEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _ArrivalEntityCopyWithImpl($value, $cast, t);
}

class LuggageEntityMapper extends ClassMapperBase<LuggageEntity> {
  LuggageEntityMapper._();

  static LuggageEntityMapper? _instance;
  static LuggageEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = LuggageEntityMapper._());
      PriceEntityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'LuggageEntity';

  static bool _$hasLuggage(LuggageEntity v) => v.hasLuggage;
  static const Field<LuggageEntity, bool> _f$hasLuggage =
      Field('hasLuggage', _$hasLuggage, key: 'has_luggage');
  static PriceEntity _$price(LuggageEntity v) => v.price;
  static const Field<LuggageEntity, PriceEntity> _f$price =
      Field('price', _$price);

  @override
  final MappableFields<LuggageEntity> fields = const {
    #hasLuggage: _f$hasLuggage,
    #price: _f$price,
  };

  static LuggageEntity _instantiate(DecodingData data) {
    return LuggageEntity(
        hasLuggage: data.dec(_f$hasLuggage), price: data.dec(_f$price));
  }

  @override
  final Function instantiate = _instantiate;

  static LuggageEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<LuggageEntity>(map);
  }

  static LuggageEntity fromJson(String json) {
    return ensureInitialized().decodeJson<LuggageEntity>(json);
  }
}

mixin LuggageEntityMappable {
  String toJson() {
    return LuggageEntityMapper.ensureInitialized()
        .encodeJson<LuggageEntity>(this as LuggageEntity);
  }

  Map<String, dynamic> toMap() {
    return LuggageEntityMapper.ensureInitialized()
        .encodeMap<LuggageEntity>(this as LuggageEntity);
  }

  LuggageEntityCopyWith<LuggageEntity, LuggageEntity, LuggageEntity>
      get copyWith => _LuggageEntityCopyWithImpl(
          this as LuggageEntity, $identity, $identity);
  @override
  String toString() {
    return LuggageEntityMapper.ensureInitialized()
        .stringifyValue(this as LuggageEntity);
  }

  @override
  bool operator ==(Object other) {
    return LuggageEntityMapper.ensureInitialized()
        .equalsValue(this as LuggageEntity, other);
  }

  @override
  int get hashCode {
    return LuggageEntityMapper.ensureInitialized()
        .hashValue(this as LuggageEntity);
  }
}

extension LuggageEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, LuggageEntity, $Out> {
  LuggageEntityCopyWith<$R, LuggageEntity, $Out> get $asLuggageEntity =>
      $base.as((v, t, t2) => _LuggageEntityCopyWithImpl(v, t, t2));
}

abstract class LuggageEntityCopyWith<$R, $In extends LuggageEntity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  PriceEntityCopyWith<$R, PriceEntity, PriceEntity> get price;
  $R call({bool? hasLuggage, PriceEntity? price});
  LuggageEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _LuggageEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, LuggageEntity, $Out>
    implements LuggageEntityCopyWith<$R, LuggageEntity, $Out> {
  _LuggageEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<LuggageEntity> $mapper =
      LuggageEntityMapper.ensureInitialized();
  @override
  PriceEntityCopyWith<$R, PriceEntity, PriceEntity> get price =>
      $value.price.copyWith.$chain((v) => call(price: v));
  @override
  $R call({bool? hasLuggage, PriceEntity? price}) => $apply(FieldCopyWithData({
        if (hasLuggage != null) #hasLuggage: hasLuggage,
        if (price != null) #price: price
      }));
  @override
  LuggageEntity $make(CopyWithData data) => LuggageEntity(
      hasLuggage: data.get(#hasLuggage, or: $value.hasLuggage),
      price: data.get(#price, or: $value.price));

  @override
  LuggageEntityCopyWith<$R2, LuggageEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _LuggageEntityCopyWithImpl($value, $cast, t);
}

class HandLuggageEntityMapper extends ClassMapperBase<HandLuggageEntity> {
  HandLuggageEntityMapper._();

  static HandLuggageEntityMapper? _instance;
  static HandLuggageEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = HandLuggageEntityMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'HandLuggageEntity';

  static bool _$hasHandLuggage(HandLuggageEntity v) => v.hasHandLuggage;
  static const Field<HandLuggageEntity, bool> _f$hasHandLuggage =
      Field('hasHandLuggage', _$hasHandLuggage, key: 'has_hand_luggage');
  static String _$size(HandLuggageEntity v) => v.size;
  static const Field<HandLuggageEntity, String> _f$size = Field('size', _$size);

  @override
  final MappableFields<HandLuggageEntity> fields = const {
    #hasHandLuggage: _f$hasHandLuggage,
    #size: _f$size,
  };

  static HandLuggageEntity _instantiate(DecodingData data) {
    return HandLuggageEntity(
        hasHandLuggage: data.dec(_f$hasHandLuggage), size: data.dec(_f$size));
  }

  @override
  final Function instantiate = _instantiate;

  static HandLuggageEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<HandLuggageEntity>(map);
  }

  static HandLuggageEntity fromJson(String json) {
    return ensureInitialized().decodeJson<HandLuggageEntity>(json);
  }
}

mixin HandLuggageEntityMappable {
  String toJson() {
    return HandLuggageEntityMapper.ensureInitialized()
        .encodeJson<HandLuggageEntity>(this as HandLuggageEntity);
  }

  Map<String, dynamic> toMap() {
    return HandLuggageEntityMapper.ensureInitialized()
        .encodeMap<HandLuggageEntity>(this as HandLuggageEntity);
  }

  HandLuggageEntityCopyWith<HandLuggageEntity, HandLuggageEntity,
          HandLuggageEntity>
      get copyWith => _HandLuggageEntityCopyWithImpl(
          this as HandLuggageEntity, $identity, $identity);
  @override
  String toString() {
    return HandLuggageEntityMapper.ensureInitialized()
        .stringifyValue(this as HandLuggageEntity);
  }

  @override
  bool operator ==(Object other) {
    return HandLuggageEntityMapper.ensureInitialized()
        .equalsValue(this as HandLuggageEntity, other);
  }

  @override
  int get hashCode {
    return HandLuggageEntityMapper.ensureInitialized()
        .hashValue(this as HandLuggageEntity);
  }
}

extension HandLuggageEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, HandLuggageEntity, $Out> {
  HandLuggageEntityCopyWith<$R, HandLuggageEntity, $Out>
      get $asHandLuggageEntity =>
          $base.as((v, t, t2) => _HandLuggageEntityCopyWithImpl(v, t, t2));
}

abstract class HandLuggageEntityCopyWith<$R, $In extends HandLuggageEntity,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({bool? hasHandLuggage, String? size});
  HandLuggageEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _HandLuggageEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, HandLuggageEntity, $Out>
    implements HandLuggageEntityCopyWith<$R, HandLuggageEntity, $Out> {
  _HandLuggageEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<HandLuggageEntity> $mapper =
      HandLuggageEntityMapper.ensureInitialized();
  @override
  $R call({bool? hasHandLuggage, String? size}) => $apply(FieldCopyWithData({
        if (hasHandLuggage != null) #hasHandLuggage: hasHandLuggage,
        if (size != null) #size: size
      }));
  @override
  HandLuggageEntity $make(CopyWithData data) => HandLuggageEntity(
      hasHandLuggage: data.get(#hasHandLuggage, or: $value.hasHandLuggage),
      size: data.get(#size, or: $value.size));

  @override
  HandLuggageEntityCopyWith<$R2, HandLuggageEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _HandLuggageEntityCopyWithImpl($value, $cast, t);
}

class OfferEntityMapper extends ClassMapperBase<OfferEntity> {
  OfferEntityMapper._();

  static OfferEntityMapper? _instance;
  static OfferEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OfferEntityMapper._());
      PriceEntityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'OfferEntity';

  static int _$id(OfferEntity v) => v.id;
  static const Field<OfferEntity, int> _f$id = Field('id', _$id);
  static String _$title(OfferEntity v) => v.title;
  static const Field<OfferEntity, String> _f$title = Field('title', _$title);
  static String _$town(OfferEntity v) => v.town;
  static const Field<OfferEntity, String> _f$town = Field('town', _$town);
  static PriceEntity _$price(OfferEntity v) => v.price;
  static const Field<OfferEntity, PriceEntity> _f$price =
      Field('price', _$price);

  @override
  final MappableFields<OfferEntity> fields = const {
    #id: _f$id,
    #title: _f$title,
    #town: _f$town,
    #price: _f$price,
  };

  static OfferEntity _instantiate(DecodingData data) {
    return OfferEntity(
        id: data.dec(_f$id),
        title: data.dec(_f$title),
        town: data.dec(_f$town),
        price: data.dec(_f$price));
  }

  @override
  final Function instantiate = _instantiate;

  static OfferEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OfferEntity>(map);
  }

  static OfferEntity fromJson(String json) {
    return ensureInitialized().decodeJson<OfferEntity>(json);
  }
}

mixin OfferEntityMappable {
  String toJson() {
    return OfferEntityMapper.ensureInitialized()
        .encodeJson<OfferEntity>(this as OfferEntity);
  }

  Map<String, dynamic> toMap() {
    return OfferEntityMapper.ensureInitialized()
        .encodeMap<OfferEntity>(this as OfferEntity);
  }

  OfferEntityCopyWith<OfferEntity, OfferEntity, OfferEntity> get copyWith =>
      _OfferEntityCopyWithImpl(this as OfferEntity, $identity, $identity);
  @override
  String toString() {
    return OfferEntityMapper.ensureInitialized()
        .stringifyValue(this as OfferEntity);
  }

  @override
  bool operator ==(Object other) {
    return OfferEntityMapper.ensureInitialized()
        .equalsValue(this as OfferEntity, other);
  }

  @override
  int get hashCode {
    return OfferEntityMapper.ensureInitialized().hashValue(this as OfferEntity);
  }
}

extension OfferEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OfferEntity, $Out> {
  OfferEntityCopyWith<$R, OfferEntity, $Out> get $asOfferEntity =>
      $base.as((v, t, t2) => _OfferEntityCopyWithImpl(v, t, t2));
}

abstract class OfferEntityCopyWith<$R, $In extends OfferEntity, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  PriceEntityCopyWith<$R, PriceEntity, PriceEntity> get price;
  $R call({int? id, String? title, String? town, PriceEntity? price});
  OfferEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OfferEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OfferEntity, $Out>
    implements OfferEntityCopyWith<$R, OfferEntity, $Out> {
  _OfferEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OfferEntity> $mapper =
      OfferEntityMapper.ensureInitialized();
  @override
  PriceEntityCopyWith<$R, PriceEntity, PriceEntity> get price =>
      $value.price.copyWith.$chain((v) => call(price: v));
  @override
  $R call({int? id, String? title, String? town, PriceEntity? price}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (title != null) #title: title,
        if (town != null) #town: town,
        if (price != null) #price: price
      }));
  @override
  OfferEntity $make(CopyWithData data) => OfferEntity(
      id: data.get(#id, or: $value.id),
      title: data.get(#title, or: $value.title),
      town: data.get(#town, or: $value.town),
      price: data.get(#price, or: $value.price));

  @override
  OfferEntityCopyWith<$R2, OfferEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OfferEntityCopyWithImpl($value, $cast, t);
}

class TicketsOfferEntityMapper extends ClassMapperBase<TicketsOfferEntity> {
  TicketsOfferEntityMapper._();

  static TicketsOfferEntityMapper? _instance;
  static TicketsOfferEntityMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TicketsOfferEntityMapper._());
      PriceEntityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TicketsOfferEntity';

  static int _$id(TicketsOfferEntity v) => v.id;
  static const Field<TicketsOfferEntity, int> _f$id = Field('id', _$id);
  static String _$title(TicketsOfferEntity v) => v.title;
  static const Field<TicketsOfferEntity, String> _f$title =
      Field('title', _$title);
  static List<String> _$timeRange(TicketsOfferEntity v) => v.timeRange;
  static const Field<TicketsOfferEntity, List<String>> _f$timeRange =
      Field('timeRange', _$timeRange, key: 'time_range');
  static PriceEntity _$price(TicketsOfferEntity v) => v.price;
  static const Field<TicketsOfferEntity, PriceEntity> _f$price =
      Field('price', _$price);

  @override
  final MappableFields<TicketsOfferEntity> fields = const {
    #id: _f$id,
    #title: _f$title,
    #timeRange: _f$timeRange,
    #price: _f$price,
  };

  static TicketsOfferEntity _instantiate(DecodingData data) {
    return TicketsOfferEntity(
        id: data.dec(_f$id),
        title: data.dec(_f$title),
        timeRange: data.dec(_f$timeRange),
        price: data.dec(_f$price));
  }

  @override
  final Function instantiate = _instantiate;

  static TicketsOfferEntity fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TicketsOfferEntity>(map);
  }

  static TicketsOfferEntity fromJson(String json) {
    return ensureInitialized().decodeJson<TicketsOfferEntity>(json);
  }
}

mixin TicketsOfferEntityMappable {
  String toJson() {
    return TicketsOfferEntityMapper.ensureInitialized()
        .encodeJson<TicketsOfferEntity>(this as TicketsOfferEntity);
  }

  Map<String, dynamic> toMap() {
    return TicketsOfferEntityMapper.ensureInitialized()
        .encodeMap<TicketsOfferEntity>(this as TicketsOfferEntity);
  }

  TicketsOfferEntityCopyWith<TicketsOfferEntity, TicketsOfferEntity,
          TicketsOfferEntity>
      get copyWith => _TicketsOfferEntityCopyWithImpl(
          this as TicketsOfferEntity, $identity, $identity);
  @override
  String toString() {
    return TicketsOfferEntityMapper.ensureInitialized()
        .stringifyValue(this as TicketsOfferEntity);
  }

  @override
  bool operator ==(Object other) {
    return TicketsOfferEntityMapper.ensureInitialized()
        .equalsValue(this as TicketsOfferEntity, other);
  }

  @override
  int get hashCode {
    return TicketsOfferEntityMapper.ensureInitialized()
        .hashValue(this as TicketsOfferEntity);
  }
}

extension TicketsOfferEntityValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TicketsOfferEntity, $Out> {
  TicketsOfferEntityCopyWith<$R, TicketsOfferEntity, $Out>
      get $asTicketsOfferEntity =>
          $base.as((v, t, t2) => _TicketsOfferEntityCopyWithImpl(v, t, t2));
}

abstract class TicketsOfferEntityCopyWith<$R, $In extends TicketsOfferEntity,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get timeRange;
  PriceEntityCopyWith<$R, PriceEntity, PriceEntity> get price;
  $R call(
      {int? id, String? title, List<String>? timeRange, PriceEntity? price});
  TicketsOfferEntityCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TicketsOfferEntityCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TicketsOfferEntity, $Out>
    implements TicketsOfferEntityCopyWith<$R, TicketsOfferEntity, $Out> {
  _TicketsOfferEntityCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TicketsOfferEntity> $mapper =
      TicketsOfferEntityMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get timeRange =>
      ListCopyWith($value.timeRange, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(timeRange: v));
  @override
  PriceEntityCopyWith<$R, PriceEntity, PriceEntity> get price =>
      $value.price.copyWith.$chain((v) => call(price: v));
  @override
  $R call(
          {int? id,
          String? title,
          List<String>? timeRange,
          PriceEntity? price}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (title != null) #title: title,
        if (timeRange != null) #timeRange: timeRange,
        if (price != null) #price: price
      }));
  @override
  TicketsOfferEntity $make(CopyWithData data) => TicketsOfferEntity(
      id: data.get(#id, or: $value.id),
      title: data.get(#title, or: $value.title),
      timeRange: data.get(#timeRange, or: $value.timeRange),
      price: data.get(#price, or: $value.price));

  @override
  TicketsOfferEntityCopyWith<$R2, TicketsOfferEntity, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TicketsOfferEntityCopyWithImpl($value, $cast, t);
}
