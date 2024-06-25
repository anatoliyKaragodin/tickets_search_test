// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'models_mapper.dart';

class OfferModelMapper extends ClassMapperBase<OfferModel> {
  OfferModelMapper._();

  static OfferModelMapper? _instance;
  static OfferModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = OfferModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'OfferModel';

  static int _$id(OfferModel v) => v.id;
  static const Field<OfferModel, int> _f$id = Field('id', _$id);
  static String _$title(OfferModel v) => v.title;
  static const Field<OfferModel, String> _f$title = Field('title', _$title);
  static String _$town(OfferModel v) => v.town;
  static const Field<OfferModel, String> _f$town = Field('town', _$town);
  static Map<String, dynamic> _$price(OfferModel v) => v.price;
  static const Field<OfferModel, Map<String, dynamic>> _f$price =
      Field('price', _$price);

  @override
  final MappableFields<OfferModel> fields = const {
    #id: _f$id,
    #title: _f$title,
    #town: _f$town,
    #price: _f$price,
  };

  static OfferModel _instantiate(DecodingData data) {
    return OfferModel(
        id: data.dec(_f$id),
        title: data.dec(_f$title),
        town: data.dec(_f$town),
        price: data.dec(_f$price));
  }

  @override
  final Function instantiate = _instantiate;

  static OfferModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<OfferModel>(map);
  }

  static OfferModel fromJson(String json) {
    return ensureInitialized().decodeJson<OfferModel>(json);
  }
}

mixin OfferModelMappable {
  String toJson() {
    return OfferModelMapper.ensureInitialized()
        .encodeJson<OfferModel>(this as OfferModel);
  }

  Map<String, dynamic> toMap() {
    return OfferModelMapper.ensureInitialized()
        .encodeMap<OfferModel>(this as OfferModel);
  }

  OfferModelCopyWith<OfferModel, OfferModel, OfferModel> get copyWith =>
      _OfferModelCopyWithImpl(this as OfferModel, $identity, $identity);
  @override
  String toString() {
    return OfferModelMapper.ensureInitialized()
        .stringifyValue(this as OfferModel);
  }

  @override
  bool operator ==(Object other) {
    return OfferModelMapper.ensureInitialized()
        .equalsValue(this as OfferModel, other);
  }

  @override
  int get hashCode {
    return OfferModelMapper.ensureInitialized().hashValue(this as OfferModel);
  }
}

extension OfferModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, OfferModel, $Out> {
  OfferModelCopyWith<$R, OfferModel, $Out> get $asOfferModel =>
      $base.as((v, t, t2) => _OfferModelCopyWithImpl(v, t, t2));
}

abstract class OfferModelCopyWith<$R, $In extends OfferModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get price;
  $R call({int? id, String? title, String? town, Map<String, dynamic>? price});
  OfferModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _OfferModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, OfferModel, $Out>
    implements OfferModelCopyWith<$R, OfferModel, $Out> {
  _OfferModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<OfferModel> $mapper =
      OfferModelMapper.ensureInitialized();
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get price => MapCopyWith($value.price,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(price: v));
  @override
  $R call(
          {int? id,
          String? title,
          String? town,
          Map<String, dynamic>? price}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (title != null) #title: title,
        if (town != null) #town: town,
        if (price != null) #price: price
      }));
  @override
  OfferModel $make(CopyWithData data) => OfferModel(
      id: data.get(#id, or: $value.id),
      title: data.get(#title, or: $value.title),
      town: data.get(#town, or: $value.town),
      price: data.get(#price, or: $value.price));

  @override
  OfferModelCopyWith<$R2, OfferModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _OfferModelCopyWithImpl($value, $cast, t);
}

class TicketModelMapper extends ClassMapperBase<TicketModel> {
  TicketModelMapper._();

  static TicketModelMapper? _instance;
  static TicketModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TicketModelMapper._());
      PriceEntityMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'TicketModel';

  static int _$id(TicketModel v) => v.id;
  static const Field<TicketModel, int> _f$id = Field('id', _$id);
  static String _$badge(TicketModel v) => v.badge;
  static const Field<TicketModel, String> _f$badge = Field('badge', _$badge);
  static PriceEntity _$price(TicketModel v) => v.price;
  static const Field<TicketModel, PriceEntity> _f$price =
      Field('price', _$price);
  static String _$providerName(TicketModel v) => v.providerName;
  static const Field<TicketModel, String> _f$providerName =
      Field('providerName', _$providerName, key: 'provider_name');
  static String _$company(TicketModel v) => v.company;
  static const Field<TicketModel, String> _f$company =
      Field('company', _$company);
  static Map<String, dynamic> _$departure(TicketModel v) => v.departure;
  static const Field<TicketModel, Map<String, dynamic>> _f$departure =
      Field('departure', _$departure);
  static Map<String, dynamic> _$arrival(TicketModel v) => v.arrival;
  static const Field<TicketModel, Map<String, dynamic>> _f$arrival =
      Field('arrival', _$arrival);
  static bool _$hasTransfer(TicketModel v) => v.hasTransfer;
  static const Field<TicketModel, bool> _f$hasTransfer =
      Field('hasTransfer', _$hasTransfer, key: 'has_transfer');
  static bool _$hasVisaTransfer(TicketModel v) => v.hasVisaTransfer;
  static const Field<TicketModel, bool> _f$hasVisaTransfer =
      Field('hasVisaTransfer', _$hasVisaTransfer, key: 'has_visa_transfer');
  static Map<String, dynamic> _$luggage(TicketModel v) => v.luggage;
  static const Field<TicketModel, Map<String, dynamic>> _f$luggage =
      Field('luggage', _$luggage);
  static Map<String, dynamic> _$handLuggage(TicketModel v) => v.handLuggage;
  static const Field<TicketModel, Map<String, dynamic>> _f$handLuggage =
      Field('handLuggage', _$handLuggage, key: 'hand_luggage');
  static bool _$isReturnable(TicketModel v) => v.isReturnable;
  static const Field<TicketModel, bool> _f$isReturnable =
      Field('isReturnable', _$isReturnable, key: 'is_returnable');
  static bool _$isExchangable(TicketModel v) => v.isExchangable;
  static const Field<TicketModel, bool> _f$isExchangable =
      Field('isExchangable', _$isExchangable, key: 'is_exchangable');

  @override
  final MappableFields<TicketModel> fields = const {
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

  static TicketModel _instantiate(DecodingData data) {
    return TicketModel(
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

  static TicketModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TicketModel>(map);
  }

  static TicketModel fromJson(String json) {
    return ensureInitialized().decodeJson<TicketModel>(json);
  }
}

mixin TicketModelMappable {
  String toJson() {
    return TicketModelMapper.ensureInitialized()
        .encodeJson<TicketModel>(this as TicketModel);
  }

  Map<String, dynamic> toMap() {
    return TicketModelMapper.ensureInitialized()
        .encodeMap<TicketModel>(this as TicketModel);
  }

  TicketModelCopyWith<TicketModel, TicketModel, TicketModel> get copyWith =>
      _TicketModelCopyWithImpl(this as TicketModel, $identity, $identity);
  @override
  String toString() {
    return TicketModelMapper.ensureInitialized()
        .stringifyValue(this as TicketModel);
  }

  @override
  bool operator ==(Object other) {
    return TicketModelMapper.ensureInitialized()
        .equalsValue(this as TicketModel, other);
  }

  @override
  int get hashCode {
    return TicketModelMapper.ensureInitialized().hashValue(this as TicketModel);
  }
}

extension TicketModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TicketModel, $Out> {
  TicketModelCopyWith<$R, TicketModel, $Out> get $asTicketModel =>
      $base.as((v, t, t2) => _TicketModelCopyWithImpl(v, t, t2));
}

abstract class TicketModelCopyWith<$R, $In extends TicketModel, $Out>
    implements ClassCopyWith<$R, $In, $Out> {
  PriceEntityCopyWith<$R, PriceEntity, PriceEntity> get price;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get departure;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get arrival;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get luggage;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get handLuggage;
  $R call(
      {int? id,
      String? badge,
      PriceEntity? price,
      String? providerName,
      String? company,
      Map<String, dynamic>? departure,
      Map<String, dynamic>? arrival,
      bool? hasTransfer,
      bool? hasVisaTransfer,
      Map<String, dynamic>? luggage,
      Map<String, dynamic>? handLuggage,
      bool? isReturnable,
      bool? isExchangable});
  TicketModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _TicketModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TicketModel, $Out>
    implements TicketModelCopyWith<$R, TicketModel, $Out> {
  _TicketModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TicketModel> $mapper =
      TicketModelMapper.ensureInitialized();
  @override
  PriceEntityCopyWith<$R, PriceEntity, PriceEntity> get price =>
      $value.price.copyWith.$chain((v) => call(price: v));
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get departure => MapCopyWith($value.departure,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(departure: v));
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get arrival => MapCopyWith($value.arrival,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(arrival: v));
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get luggage => MapCopyWith($value.luggage,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(luggage: v));
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get handLuggage => MapCopyWith(
          $value.handLuggage,
          (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(handLuggage: v));
  @override
  $R call(
          {int? id,
          String? badge,
          PriceEntity? price,
          String? providerName,
          String? company,
          Map<String, dynamic>? departure,
          Map<String, dynamic>? arrival,
          bool? hasTransfer,
          bool? hasVisaTransfer,
          Map<String, dynamic>? luggage,
          Map<String, dynamic>? handLuggage,
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
  TicketModel $make(CopyWithData data) => TicketModel(
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
  TicketModelCopyWith<$R2, TicketModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TicketModelCopyWithImpl($value, $cast, t);
}

class TicketsOfferModelMapper extends ClassMapperBase<TicketsOfferModel> {
  TicketsOfferModelMapper._();

  static TicketsOfferModelMapper? _instance;
  static TicketsOfferModelMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = TicketsOfferModelMapper._());
    }
    return _instance!;
  }

  @override
  final String id = 'TicketsOfferModel';

  static int _$id(TicketsOfferModel v) => v.id;
  static const Field<TicketsOfferModel, int> _f$id = Field('id', _$id);
  static String _$title(TicketsOfferModel v) => v.title;
  static const Field<TicketsOfferModel, String> _f$title =
      Field('title', _$title);
  static List<String> _$timeRange(TicketsOfferModel v) => v.timeRange;
  static const Field<TicketsOfferModel, List<String>> _f$timeRange =
      Field('timeRange', _$timeRange, key: 'time_range');
  static Map<String, dynamic> _$price(TicketsOfferModel v) => v.price;
  static const Field<TicketsOfferModel, Map<String, dynamic>> _f$price =
      Field('price', _$price);

  @override
  final MappableFields<TicketsOfferModel> fields = const {
    #id: _f$id,
    #title: _f$title,
    #timeRange: _f$timeRange,
    #price: _f$price,
  };

  static TicketsOfferModel _instantiate(DecodingData data) {
    return TicketsOfferModel(
        id: data.dec(_f$id),
        title: data.dec(_f$title),
        timeRange: data.dec(_f$timeRange),
        price: data.dec(_f$price));
  }

  @override
  final Function instantiate = _instantiate;

  static TicketsOfferModel fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<TicketsOfferModel>(map);
  }

  static TicketsOfferModel fromJson(String json) {
    return ensureInitialized().decodeJson<TicketsOfferModel>(json);
  }
}

mixin TicketsOfferModelMappable {
  String toJson() {
    return TicketsOfferModelMapper.ensureInitialized()
        .encodeJson<TicketsOfferModel>(this as TicketsOfferModel);
  }

  Map<String, dynamic> toMap() {
    return TicketsOfferModelMapper.ensureInitialized()
        .encodeMap<TicketsOfferModel>(this as TicketsOfferModel);
  }

  TicketsOfferModelCopyWith<TicketsOfferModel, TicketsOfferModel,
          TicketsOfferModel>
      get copyWith => _TicketsOfferModelCopyWithImpl(
          this as TicketsOfferModel, $identity, $identity);
  @override
  String toString() {
    return TicketsOfferModelMapper.ensureInitialized()
        .stringifyValue(this as TicketsOfferModel);
  }

  @override
  bool operator ==(Object other) {
    return TicketsOfferModelMapper.ensureInitialized()
        .equalsValue(this as TicketsOfferModel, other);
  }

  @override
  int get hashCode {
    return TicketsOfferModelMapper.ensureInitialized()
        .hashValue(this as TicketsOfferModel);
  }
}

extension TicketsOfferModelValueCopy<$R, $Out>
    on ObjectCopyWith<$R, TicketsOfferModel, $Out> {
  TicketsOfferModelCopyWith<$R, TicketsOfferModel, $Out>
      get $asTicketsOfferModel =>
          $base.as((v, t, t2) => _TicketsOfferModelCopyWithImpl(v, t, t2));
}

abstract class TicketsOfferModelCopyWith<$R, $In extends TicketsOfferModel,
    $Out> implements ClassCopyWith<$R, $In, $Out> {
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get timeRange;
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get price;
  $R call(
      {int? id,
      String? title,
      List<String>? timeRange,
      Map<String, dynamic>? price});
  TicketsOfferModelCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(
      Then<$Out2, $R2> t);
}

class _TicketsOfferModelCopyWithImpl<$R, $Out>
    extends ClassCopyWithBase<$R, TicketsOfferModel, $Out>
    implements TicketsOfferModelCopyWith<$R, TicketsOfferModel, $Out> {
  _TicketsOfferModelCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<TicketsOfferModel> $mapper =
      TicketsOfferModelMapper.ensureInitialized();
  @override
  ListCopyWith<$R, String, ObjectCopyWith<$R, String, String>> get timeRange =>
      ListCopyWith($value.timeRange, (v, t) => ObjectCopyWith(v, $identity, t),
          (v) => call(timeRange: v));
  @override
  MapCopyWith<$R, String, dynamic, ObjectCopyWith<$R, dynamic, dynamic>>
      get price => MapCopyWith($value.price,
          (v, t) => ObjectCopyWith(v, $identity, t), (v) => call(price: v));
  @override
  $R call(
          {int? id,
          String? title,
          List<String>? timeRange,
          Map<String, dynamic>? price}) =>
      $apply(FieldCopyWithData({
        if (id != null) #id: id,
        if (title != null) #title: title,
        if (timeRange != null) #timeRange: timeRange,
        if (price != null) #price: price
      }));
  @override
  TicketsOfferModel $make(CopyWithData data) => TicketsOfferModel(
      id: data.get(#id, or: $value.id),
      title: data.get(#title, or: $value.title),
      timeRange: data.get(#timeRange, or: $value.timeRange),
      price: data.get(#price, or: $value.price));

  @override
  TicketsOfferModelCopyWith<$R2, TicketsOfferModel, $Out2> $chain<$R2, $Out2>(
          Then<$Out2, $R2> t) =>
      _TicketsOfferModelCopyWithImpl($value, $cast, t);
}
