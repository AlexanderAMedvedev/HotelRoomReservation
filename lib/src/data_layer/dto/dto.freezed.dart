// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReservationDto _$ReservationDtoFromJson(Map<String, dynamic> json) {
  return _ReservationDto.fromJson(json);
}

/// @nodoc
mixin _$ReservationDto {
  @JsonKey(name: 'arrival_country')
  String get arrivalCountry => throw _privateConstructorUsedError;
  String get departure => throw _privateConstructorUsedError;
  @JsonKey(name: 'fuel_charge')
  double get fuelCharge => throw _privateConstructorUsedError;
  double get horating => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_address')
  String get hotelAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'hotel_name')
  String get hotelName => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'number_of_nights')
  String get numberOfNights => throw _privateConstructorUsedError;
  String get nutrition => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_name')
  String get ratingName => throw _privateConstructorUsedError;
  String get room => throw _privateConstructorUsedError;
  @JsonKey(name: 'service_charge')
  double get serviceCharge => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_date_start')
  String get tourDateStart => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_date_stop')
  String get tourDateStop => throw _privateConstructorUsedError;
  @JsonKey(name: 'tour_price')
  double get tourPrice => throw _privateConstructorUsedError;

  /// Serializes this ReservationDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ReservationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ReservationDtoCopyWith<ReservationDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationDtoCopyWith<$Res> {
  factory $ReservationDtoCopyWith(
          ReservationDto value, $Res Function(ReservationDto) then) =
      _$ReservationDtoCopyWithImpl<$Res, ReservationDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'arrival_country') String arrivalCountry,
      String departure,
      @JsonKey(name: 'fuel_charge') double fuelCharge,
      double horating,
      @JsonKey(name: 'hotel_address') String hotelAddress,
      @JsonKey(name: 'hotel_name') String hotelName,
      int id,
      @JsonKey(name: 'number_of_nights') String numberOfNights,
      String nutrition,
      @JsonKey(name: 'rating_name') String ratingName,
      String room,
      @JsonKey(name: 'service_charge') double serviceCharge,
      @JsonKey(name: 'tour_date_start') String tourDateStart,
      @JsonKey(name: 'tour_date_stop') String tourDateStop,
      @JsonKey(name: 'tour_price') double tourPrice});
}

/// @nodoc
class _$ReservationDtoCopyWithImpl<$Res, $Val extends ReservationDto>
    implements $ReservationDtoCopyWith<$Res> {
  _$ReservationDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ReservationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arrivalCountry = null,
    Object? departure = null,
    Object? fuelCharge = null,
    Object? horating = null,
    Object? hotelAddress = null,
    Object? hotelName = null,
    Object? id = null,
    Object? numberOfNights = null,
    Object? nutrition = null,
    Object? ratingName = null,
    Object? room = null,
    Object? serviceCharge = null,
    Object? tourDateStart = null,
    Object? tourDateStop = null,
    Object? tourPrice = null,
  }) {
    return _then(_value.copyWith(
      arrivalCountry: null == arrivalCountry
          ? _value.arrivalCountry
          : arrivalCountry // ignore: cast_nullable_to_non_nullable
              as String,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as String,
      fuelCharge: null == fuelCharge
          ? _value.fuelCharge
          : fuelCharge // ignore: cast_nullable_to_non_nullable
              as double,
      horating: null == horating
          ? _value.horating
          : horating // ignore: cast_nullable_to_non_nullable
              as double,
      hotelAddress: null == hotelAddress
          ? _value.hotelAddress
          : hotelAddress // ignore: cast_nullable_to_non_nullable
              as String,
      hotelName: null == hotelName
          ? _value.hotelName
          : hotelName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfNights: null == numberOfNights
          ? _value.numberOfNights
          : numberOfNights // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as String,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      serviceCharge: null == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as double,
      tourDateStart: null == tourDateStart
          ? _value.tourDateStart
          : tourDateStart // ignore: cast_nullable_to_non_nullable
              as String,
      tourDateStop: null == tourDateStop
          ? _value.tourDateStop
          : tourDateStop // ignore: cast_nullable_to_non_nullable
              as String,
      tourPrice: null == tourPrice
          ? _value.tourPrice
          : tourPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReservationDtoImplCopyWith<$Res>
    implements $ReservationDtoCopyWith<$Res> {
  factory _$$ReservationDtoImplCopyWith(_$ReservationDtoImpl value,
          $Res Function(_$ReservationDtoImpl) then) =
      __$$ReservationDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'arrival_country') String arrivalCountry,
      String departure,
      @JsonKey(name: 'fuel_charge') double fuelCharge,
      double horating,
      @JsonKey(name: 'hotel_address') String hotelAddress,
      @JsonKey(name: 'hotel_name') String hotelName,
      int id,
      @JsonKey(name: 'number_of_nights') String numberOfNights,
      String nutrition,
      @JsonKey(name: 'rating_name') String ratingName,
      String room,
      @JsonKey(name: 'service_charge') double serviceCharge,
      @JsonKey(name: 'tour_date_start') String tourDateStart,
      @JsonKey(name: 'tour_date_stop') String tourDateStop,
      @JsonKey(name: 'tour_price') double tourPrice});
}

/// @nodoc
class __$$ReservationDtoImplCopyWithImpl<$Res>
    extends _$ReservationDtoCopyWithImpl<$Res, _$ReservationDtoImpl>
    implements _$$ReservationDtoImplCopyWith<$Res> {
  __$$ReservationDtoImplCopyWithImpl(
      _$ReservationDtoImpl _value, $Res Function(_$ReservationDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ReservationDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? arrivalCountry = null,
    Object? departure = null,
    Object? fuelCharge = null,
    Object? horating = null,
    Object? hotelAddress = null,
    Object? hotelName = null,
    Object? id = null,
    Object? numberOfNights = null,
    Object? nutrition = null,
    Object? ratingName = null,
    Object? room = null,
    Object? serviceCharge = null,
    Object? tourDateStart = null,
    Object? tourDateStop = null,
    Object? tourPrice = null,
  }) {
    return _then(_$ReservationDtoImpl(
      arrivalCountry: null == arrivalCountry
          ? _value.arrivalCountry
          : arrivalCountry // ignore: cast_nullable_to_non_nullable
              as String,
      departure: null == departure
          ? _value.departure
          : departure // ignore: cast_nullable_to_non_nullable
              as String,
      fuelCharge: null == fuelCharge
          ? _value.fuelCharge
          : fuelCharge // ignore: cast_nullable_to_non_nullable
              as double,
      horating: null == horating
          ? _value.horating
          : horating // ignore: cast_nullable_to_non_nullable
              as double,
      hotelAddress: null == hotelAddress
          ? _value.hotelAddress
          : hotelAddress // ignore: cast_nullable_to_non_nullable
              as String,
      hotelName: null == hotelName
          ? _value.hotelName
          : hotelName // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfNights: null == numberOfNights
          ? _value.numberOfNights
          : numberOfNights // ignore: cast_nullable_to_non_nullable
              as String,
      nutrition: null == nutrition
          ? _value.nutrition
          : nutrition // ignore: cast_nullable_to_non_nullable
              as String,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
      room: null == room
          ? _value.room
          : room // ignore: cast_nullable_to_non_nullable
              as String,
      serviceCharge: null == serviceCharge
          ? _value.serviceCharge
          : serviceCharge // ignore: cast_nullable_to_non_nullable
              as double,
      tourDateStart: null == tourDateStart
          ? _value.tourDateStart
          : tourDateStart // ignore: cast_nullable_to_non_nullable
              as String,
      tourDateStop: null == tourDateStop
          ? _value.tourDateStop
          : tourDateStop // ignore: cast_nullable_to_non_nullable
              as String,
      tourPrice: null == tourPrice
          ? _value.tourPrice
          : tourPrice // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReservationDtoImpl implements _ReservationDto {
  const _$ReservationDtoImpl(
      {@JsonKey(name: 'arrival_country') required this.arrivalCountry,
      required this.departure,
      @JsonKey(name: 'fuel_charge') required this.fuelCharge,
      required this.horating,
      @JsonKey(name: 'hotel_address') required this.hotelAddress,
      @JsonKey(name: 'hotel_name') required this.hotelName,
      required this.id,
      @JsonKey(name: 'number_of_nights') required this.numberOfNights,
      required this.nutrition,
      @JsonKey(name: 'rating_name') required this.ratingName,
      required this.room,
      @JsonKey(name: 'service_charge') required this.serviceCharge,
      @JsonKey(name: 'tour_date_start') required this.tourDateStart,
      @JsonKey(name: 'tour_date_stop') required this.tourDateStop,
      @JsonKey(name: 'tour_price') required this.tourPrice});

  factory _$ReservationDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReservationDtoImplFromJson(json);

  @override
  @JsonKey(name: 'arrival_country')
  final String arrivalCountry;
  @override
  final String departure;
  @override
  @JsonKey(name: 'fuel_charge')
  final double fuelCharge;
  @override
  final double horating;
  @override
  @JsonKey(name: 'hotel_address')
  final String hotelAddress;
  @override
  @JsonKey(name: 'hotel_name')
  final String hotelName;
  @override
  final int id;
  @override
  @JsonKey(name: 'number_of_nights')
  final String numberOfNights;
  @override
  final String nutrition;
  @override
  @JsonKey(name: 'rating_name')
  final String ratingName;
  @override
  final String room;
  @override
  @JsonKey(name: 'service_charge')
  final double serviceCharge;
  @override
  @JsonKey(name: 'tour_date_start')
  final String tourDateStart;
  @override
  @JsonKey(name: 'tour_date_stop')
  final String tourDateStop;
  @override
  @JsonKey(name: 'tour_price')
  final double tourPrice;

  @override
  String toString() {
    return 'ReservationDto(arrivalCountry: $arrivalCountry, departure: $departure, fuelCharge: $fuelCharge, horating: $horating, hotelAddress: $hotelAddress, hotelName: $hotelName, id: $id, numberOfNights: $numberOfNights, nutrition: $nutrition, ratingName: $ratingName, room: $room, serviceCharge: $serviceCharge, tourDateStart: $tourDateStart, tourDateStop: $tourDateStop, tourPrice: $tourPrice)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReservationDtoImpl &&
            (identical(other.arrivalCountry, arrivalCountry) ||
                other.arrivalCountry == arrivalCountry) &&
            (identical(other.departure, departure) ||
                other.departure == departure) &&
            (identical(other.fuelCharge, fuelCharge) ||
                other.fuelCharge == fuelCharge) &&
            (identical(other.horating, horating) ||
                other.horating == horating) &&
            (identical(other.hotelAddress, hotelAddress) ||
                other.hotelAddress == hotelAddress) &&
            (identical(other.hotelName, hotelName) ||
                other.hotelName == hotelName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.numberOfNights, numberOfNights) ||
                other.numberOfNights == numberOfNights) &&
            (identical(other.nutrition, nutrition) ||
                other.nutrition == nutrition) &&
            (identical(other.ratingName, ratingName) ||
                other.ratingName == ratingName) &&
            (identical(other.room, room) || other.room == room) &&
            (identical(other.serviceCharge, serviceCharge) ||
                other.serviceCharge == serviceCharge) &&
            (identical(other.tourDateStart, tourDateStart) ||
                other.tourDateStart == tourDateStart) &&
            (identical(other.tourDateStop, tourDateStop) ||
                other.tourDateStop == tourDateStop) &&
            (identical(other.tourPrice, tourPrice) ||
                other.tourPrice == tourPrice));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      arrivalCountry,
      departure,
      fuelCharge,
      horating,
      hotelAddress,
      hotelName,
      id,
      numberOfNights,
      nutrition,
      ratingName,
      room,
      serviceCharge,
      tourDateStart,
      tourDateStop,
      tourPrice);

  /// Create a copy of ReservationDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ReservationDtoImplCopyWith<_$ReservationDtoImpl> get copyWith =>
      __$$ReservationDtoImplCopyWithImpl<_$ReservationDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReservationDtoImplToJson(
      this,
    );
  }
}

abstract class _ReservationDto implements ReservationDto {
  const factory _ReservationDto(
      {@JsonKey(name: 'arrival_country') required final String arrivalCountry,
      required final String departure,
      @JsonKey(name: 'fuel_charge') required final double fuelCharge,
      required final double horating,
      @JsonKey(name: 'hotel_address') required final String hotelAddress,
      @JsonKey(name: 'hotel_name') required final String hotelName,
      required final int id,
      @JsonKey(name: 'number_of_nights') required final String numberOfNights,
      required final String nutrition,
      @JsonKey(name: 'rating_name') required final String ratingName,
      required final String room,
      @JsonKey(name: 'service_charge') required final double serviceCharge,
      @JsonKey(name: 'tour_date_start') required final String tourDateStart,
      @JsonKey(name: 'tour_date_stop') required final String tourDateStop,
      @JsonKey(name: 'tour_price')
      required final double tourPrice}) = _$ReservationDtoImpl;

  factory _ReservationDto.fromJson(Map<String, dynamic> json) =
      _$ReservationDtoImpl.fromJson;

  @override
  @JsonKey(name: 'arrival_country')
  String get arrivalCountry;
  @override
  String get departure;
  @override
  @JsonKey(name: 'fuel_charge')
  double get fuelCharge;
  @override
  double get horating;
  @override
  @JsonKey(name: 'hotel_address')
  String get hotelAddress;
  @override
  @JsonKey(name: 'hotel_name')
  String get hotelName;
  @override
  int get id;
  @override
  @JsonKey(name: 'number_of_nights')
  String get numberOfNights;
  @override
  String get nutrition;
  @override
  @JsonKey(name: 'rating_name')
  String get ratingName;
  @override
  String get room;
  @override
  @JsonKey(name: 'service_charge')
  double get serviceCharge;
  @override
  @JsonKey(name: 'tour_date_start')
  String get tourDateStart;
  @override
  @JsonKey(name: 'tour_date_stop')
  String get tourDateStop;
  @override
  @JsonKey(name: 'tour_price')
  double get tourPrice;

  /// Create a copy of ReservationDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ReservationDtoImplCopyWith<_$ReservationDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RoomDto _$RoomDtoFromJson(Map<String, dynamic> json) {
  return _RoomDto.fromJson(json);
}

/// @nodoc
mixin _$RoomDto {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<String> get pecularities => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_per')
  String get pricePer => throw _privateConstructorUsedError;

  /// Serializes this RoomDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RoomDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RoomDtoCopyWith<RoomDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RoomDtoCopyWith<$Res> {
  factory $RoomDtoCopyWith(RoomDto value, $Res Function(RoomDto) then) =
      _$RoomDtoCopyWithImpl<$Res, RoomDto>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'image_urls') List<String> imageUrls,
      String name,
      List<String> pecularities,
      double price,
      @JsonKey(name: 'price_per') String pricePer});
}

/// @nodoc
class _$RoomDtoCopyWithImpl<$Res, $Val extends RoomDto>
    implements $RoomDtoCopyWith<$Res> {
  _$RoomDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RoomDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrls = null,
    Object? name = null,
    Object? pecularities = null,
    Object? price = null,
    Object? pricePer = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pecularities: null == pecularities
          ? _value.pecularities
          : pecularities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      pricePer: null == pricePer
          ? _value.pricePer
          : pricePer // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RoomDtoImplCopyWith<$Res> implements $RoomDtoCopyWith<$Res> {
  factory _$$RoomDtoImplCopyWith(
          _$RoomDtoImpl value, $Res Function(_$RoomDtoImpl) then) =
      __$$RoomDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'image_urls') List<String> imageUrls,
      String name,
      List<String> pecularities,
      double price,
      @JsonKey(name: 'price_per') String pricePer});
}

/// @nodoc
class __$$RoomDtoImplCopyWithImpl<$Res>
    extends _$RoomDtoCopyWithImpl<$Res, _$RoomDtoImpl>
    implements _$$RoomDtoImplCopyWith<$Res> {
  __$$RoomDtoImplCopyWithImpl(
      _$RoomDtoImpl _value, $Res Function(_$RoomDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RoomDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? imageUrls = null,
    Object? name = null,
    Object? pecularities = null,
    Object? price = null,
    Object? pricePer = null,
  }) {
    return _then(_$RoomDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pecularities: null == pecularities
          ? _value._pecularities
          : pecularities // ignore: cast_nullable_to_non_nullable
              as List<String>,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      pricePer: null == pricePer
          ? _value.pricePer
          : pricePer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RoomDtoImpl implements _RoomDto {
  const _$RoomDtoImpl(
      {required this.id,
      @JsonKey(name: 'image_urls') required final List<String> imageUrls,
      required this.name,
      required final List<String> pecularities,
      required this.price,
      @JsonKey(name: 'price_per') required this.pricePer})
      : _imageUrls = imageUrls,
        _pecularities = pecularities;

  factory _$RoomDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RoomDtoImplFromJson(json);

  @override
  final int id;
  final List<String> _imageUrls;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  final String name;
  final List<String> _pecularities;
  @override
  List<String> get pecularities {
    if (_pecularities is EqualUnmodifiableListView) return _pecularities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pecularities);
  }

  @override
  final double price;
  @override
  @JsonKey(name: 'price_per')
  final String pricePer;

  @override
  String toString() {
    return 'RoomDto(id: $id, imageUrls: $imageUrls, name: $name, pecularities: $pecularities, price: $price, pricePer: $pricePer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RoomDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality()
                .equals(other._pecularities, _pecularities) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.pricePer, pricePer) ||
                other.pricePer == pricePer));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(_imageUrls),
      name,
      const DeepCollectionEquality().hash(_pecularities),
      price,
      pricePer);

  /// Create a copy of RoomDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RoomDtoImplCopyWith<_$RoomDtoImpl> get copyWith =>
      __$$RoomDtoImplCopyWithImpl<_$RoomDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RoomDtoImplToJson(
      this,
    );
  }
}

abstract class _RoomDto implements RoomDto {
  const factory _RoomDto(
          {required final int id,
          @JsonKey(name: 'image_urls') required final List<String> imageUrls,
          required final String name,
          required final List<String> pecularities,
          required final double price,
          @JsonKey(name: 'price_per') required final String pricePer}) =
      _$RoomDtoImpl;

  factory _RoomDto.fromJson(Map<String, dynamic> json) = _$RoomDtoImpl.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls;
  @override
  String get name;
  @override
  List<String> get pecularities;
  @override
  double get price;
  @override
  @JsonKey(name: 'price_per')
  String get pricePer;

  /// Create a copy of RoomDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RoomDtoImplCopyWith<_$RoomDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

HotelDto _$HotelDtoFromJson(Map<String, dynamic> json) {
  return _HotelDto.fromJson(json);
}

/// @nodoc
mixin _$HotelDto {
  AboutHotelDto get aboutHotel => throw _privateConstructorUsedError;
  String get address => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls => throw _privateConstructorUsedError;
  @JsonKey(name: 'minimal_price')
  double get minimalPrice => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  double get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating_name')
  String get ratingName => throw _privateConstructorUsedError;

  /// Serializes this HotelDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HotelDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HotelDtoCopyWith<HotelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HotelDtoCopyWith<$Res> {
  factory $HotelDtoCopyWith(HotelDto value, $Res Function(HotelDto) then) =
      _$HotelDtoCopyWithImpl<$Res, HotelDto>;
  @useResult
  $Res call(
      {AboutHotelDto aboutHotel,
      String address,
      int id,
      @JsonKey(name: 'image_urls') List<String> imageUrls,
      @JsonKey(name: 'minimal_price') double minimalPrice,
      String name,
      double rating,
      @JsonKey(name: 'rating_name') String ratingName});

  $AboutHotelDtoCopyWith<$Res> get aboutHotel;
}

/// @nodoc
class _$HotelDtoCopyWithImpl<$Res, $Val extends HotelDto>
    implements $HotelDtoCopyWith<$Res> {
  _$HotelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HotelDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aboutHotel = null,
    Object? address = null,
    Object? id = null,
    Object? imageUrls = null,
    Object? minimalPrice = null,
    Object? name = null,
    Object? rating = null,
    Object? ratingName = null,
  }) {
    return _then(_value.copyWith(
      aboutHotel: null == aboutHotel
          ? _value.aboutHotel
          : aboutHotel // ignore: cast_nullable_to_non_nullable
              as AboutHotelDto,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrls: null == imageUrls
          ? _value.imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minimalPrice: null == minimalPrice
          ? _value.minimalPrice
          : minimalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of HotelDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AboutHotelDtoCopyWith<$Res> get aboutHotel {
    return $AboutHotelDtoCopyWith<$Res>(_value.aboutHotel, (value) {
      return _then(_value.copyWith(aboutHotel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HotelDtoImplCopyWith<$Res>
    implements $HotelDtoCopyWith<$Res> {
  factory _$$HotelDtoImplCopyWith(
          _$HotelDtoImpl value, $Res Function(_$HotelDtoImpl) then) =
      __$$HotelDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {AboutHotelDto aboutHotel,
      String address,
      int id,
      @JsonKey(name: 'image_urls') List<String> imageUrls,
      @JsonKey(name: 'minimal_price') double minimalPrice,
      String name,
      double rating,
      @JsonKey(name: 'rating_name') String ratingName});

  @override
  $AboutHotelDtoCopyWith<$Res> get aboutHotel;
}

/// @nodoc
class __$$HotelDtoImplCopyWithImpl<$Res>
    extends _$HotelDtoCopyWithImpl<$Res, _$HotelDtoImpl>
    implements _$$HotelDtoImplCopyWith<$Res> {
  __$$HotelDtoImplCopyWithImpl(
      _$HotelDtoImpl _value, $Res Function(_$HotelDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of HotelDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aboutHotel = null,
    Object? address = null,
    Object? id = null,
    Object? imageUrls = null,
    Object? minimalPrice = null,
    Object? name = null,
    Object? rating = null,
    Object? ratingName = null,
  }) {
    return _then(_$HotelDtoImpl(
      aboutHotel: null == aboutHotel
          ? _value.aboutHotel
          : aboutHotel // ignore: cast_nullable_to_non_nullable
              as AboutHotelDto,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      imageUrls: null == imageUrls
          ? _value._imageUrls
          : imageUrls // ignore: cast_nullable_to_non_nullable
              as List<String>,
      minimalPrice: null == minimalPrice
          ? _value.minimalPrice
          : minimalPrice // ignore: cast_nullable_to_non_nullable
              as double,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      rating: null == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double,
      ratingName: null == ratingName
          ? _value.ratingName
          : ratingName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HotelDtoImpl implements _HotelDto {
  const _$HotelDtoImpl(
      {required this.aboutHotel,
      required this.address,
      required this.id,
      @JsonKey(name: 'image_urls') required final List<String> imageUrls,
      @JsonKey(name: 'minimal_price') required this.minimalPrice,
      required this.name,
      required this.rating,
      @JsonKey(name: 'rating_name') required this.ratingName})
      : _imageUrls = imageUrls;

  factory _$HotelDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$HotelDtoImplFromJson(json);

  @override
  final AboutHotelDto aboutHotel;
  @override
  final String address;
  @override
  final int id;
  final List<String> _imageUrls;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls {
    if (_imageUrls is EqualUnmodifiableListView) return _imageUrls;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_imageUrls);
  }

  @override
  @JsonKey(name: 'minimal_price')
  final double minimalPrice;
  @override
  final String name;
  @override
  final double rating;
  @override
  @JsonKey(name: 'rating_name')
  final String ratingName;

  @override
  String toString() {
    return 'HotelDto(aboutHotel: $aboutHotel, address: $address, id: $id, imageUrls: $imageUrls, minimalPrice: $minimalPrice, name: $name, rating: $rating, ratingName: $ratingName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HotelDtoImpl &&
            (identical(other.aboutHotel, aboutHotel) ||
                other.aboutHotel == aboutHotel) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other._imageUrls, _imageUrls) &&
            (identical(other.minimalPrice, minimalPrice) ||
                other.minimalPrice == minimalPrice) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.ratingName, ratingName) ||
                other.ratingName == ratingName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      aboutHotel,
      address,
      id,
      const DeepCollectionEquality().hash(_imageUrls),
      minimalPrice,
      name,
      rating,
      ratingName);

  /// Create a copy of HotelDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HotelDtoImplCopyWith<_$HotelDtoImpl> get copyWith =>
      __$$HotelDtoImplCopyWithImpl<_$HotelDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HotelDtoImplToJson(
      this,
    );
  }
}

abstract class _HotelDto implements HotelDto {
  const factory _HotelDto(
          {required final AboutHotelDto aboutHotel,
          required final String address,
          required final int id,
          @JsonKey(name: 'image_urls') required final List<String> imageUrls,
          @JsonKey(name: 'minimal_price') required final double minimalPrice,
          required final String name,
          required final double rating,
          @JsonKey(name: 'rating_name') required final String ratingName}) =
      _$HotelDtoImpl;

  factory _HotelDto.fromJson(Map<String, dynamic> json) =
      _$HotelDtoImpl.fromJson;

  @override
  AboutHotelDto get aboutHotel;
  @override
  String get address;
  @override
  int get id;
  @override
  @JsonKey(name: 'image_urls')
  List<String> get imageUrls;
  @override
  @JsonKey(name: 'minimal_price')
  double get minimalPrice;
  @override
  String get name;
  @override
  double get rating;
  @override
  @JsonKey(name: 'rating_name')
  String get ratingName;

  /// Create a copy of HotelDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HotelDtoImplCopyWith<_$HotelDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AboutHotelDto _$AboutHotelDtoFromJson(Map<String, dynamic> json) {
  return _AboutHotelDto.fromJson(json);
}

/// @nodoc
mixin _$AboutHotelDto {
  String get description => throw _privateConstructorUsedError;
  List<String> get pecularities => throw _privateConstructorUsedError;

  /// Serializes this AboutHotelDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AboutHotelDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AboutHotelDtoCopyWith<AboutHotelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AboutHotelDtoCopyWith<$Res> {
  factory $AboutHotelDtoCopyWith(
          AboutHotelDto value, $Res Function(AboutHotelDto) then) =
      _$AboutHotelDtoCopyWithImpl<$Res, AboutHotelDto>;
  @useResult
  $Res call({String description, List<String> pecularities});
}

/// @nodoc
class _$AboutHotelDtoCopyWithImpl<$Res, $Val extends AboutHotelDto>
    implements $AboutHotelDtoCopyWith<$Res> {
  _$AboutHotelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AboutHotelDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? pecularities = null,
  }) {
    return _then(_value.copyWith(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pecularities: null == pecularities
          ? _value.pecularities
          : pecularities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AboutHotelDtoImplCopyWith<$Res>
    implements $AboutHotelDtoCopyWith<$Res> {
  factory _$$AboutHotelDtoImplCopyWith(
          _$AboutHotelDtoImpl value, $Res Function(_$AboutHotelDtoImpl) then) =
      __$$AboutHotelDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String description, List<String> pecularities});
}

/// @nodoc
class __$$AboutHotelDtoImplCopyWithImpl<$Res>
    extends _$AboutHotelDtoCopyWithImpl<$Res, _$AboutHotelDtoImpl>
    implements _$$AboutHotelDtoImplCopyWith<$Res> {
  __$$AboutHotelDtoImplCopyWithImpl(
      _$AboutHotelDtoImpl _value, $Res Function(_$AboutHotelDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AboutHotelDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = null,
    Object? pecularities = null,
  }) {
    return _then(_$AboutHotelDtoImpl(
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      pecularities: null == pecularities
          ? _value._pecularities
          : pecularities // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AboutHotelDtoImpl implements _AboutHotelDto {
  const _$AboutHotelDtoImpl(
      {required this.description, required final List<String> pecularities})
      : _pecularities = pecularities;

  factory _$AboutHotelDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AboutHotelDtoImplFromJson(json);

  @override
  final String description;
  final List<String> _pecularities;
  @override
  List<String> get pecularities {
    if (_pecularities is EqualUnmodifiableListView) return _pecularities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_pecularities);
  }

  @override
  String toString() {
    return 'AboutHotelDto(description: $description, pecularities: $pecularities)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AboutHotelDtoImpl &&
            (identical(other.description, description) ||
                other.description == description) &&
            const DeepCollectionEquality()
                .equals(other._pecularities, _pecularities));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, description,
      const DeepCollectionEquality().hash(_pecularities));

  /// Create a copy of AboutHotelDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AboutHotelDtoImplCopyWith<_$AboutHotelDtoImpl> get copyWith =>
      __$$AboutHotelDtoImplCopyWithImpl<_$AboutHotelDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AboutHotelDtoImplToJson(
      this,
    );
  }
}

abstract class _AboutHotelDto implements AboutHotelDto {
  const factory _AboutHotelDto(
      {required final String description,
      required final List<String> pecularities}) = _$AboutHotelDtoImpl;

  factory _AboutHotelDto.fromJson(Map<String, dynamic> json) =
      _$AboutHotelDtoImpl.fromJson;

  @override
  String get description;
  @override
  List<String> get pecularities;

  /// Create a copy of AboutHotelDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AboutHotelDtoImplCopyWith<_$AboutHotelDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
