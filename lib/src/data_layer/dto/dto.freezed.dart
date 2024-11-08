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
