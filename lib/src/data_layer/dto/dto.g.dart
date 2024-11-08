// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RoomDtoImpl _$$RoomDtoImplFromJson(Map<String, dynamic> json) =>
    _$RoomDtoImpl(
      id: (json['id'] as num).toInt(),
      imageUrls: (json['image_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      name: json['name'] as String,
      pecularities: (json['pecularities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      price: (json['price'] as num).toDouble(),
      pricePer: json['price_per'] as String,
    );

Map<String, dynamic> _$$RoomDtoImplToJson(_$RoomDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_urls': instance.imageUrls,
      'name': instance.name,
      'pecularities': instance.pecularities,
      'price': instance.price,
      'price_per': instance.pricePer,
    };

_$HotelDtoImpl _$$HotelDtoImplFromJson(Map<String, dynamic> json) =>
    _$HotelDtoImpl(
      aboutHotel:
          AboutHotelDto.fromJson(json['aboutHotel'] as Map<String, dynamic>),
      address: json['address'] as String,
      id: (json['id'] as num).toInt(),
      imageUrls: (json['image_urls'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      minimalPrice: (json['minimal_price'] as num).toDouble(),
      name: json['name'] as String,
      rating: (json['rating'] as num).toDouble(),
      ratingName: json['rating_name'] as String,
    );

Map<String, dynamic> _$$HotelDtoImplToJson(_$HotelDtoImpl instance) =>
    <String, dynamic>{
      'aboutHotel': instance.aboutHotel,
      'address': instance.address,
      'id': instance.id,
      'image_urls': instance.imageUrls,
      'minimal_price': instance.minimalPrice,
      'name': instance.name,
      'rating': instance.rating,
      'rating_name': instance.ratingName,
    };

_$AboutHotelDtoImpl _$$AboutHotelDtoImplFromJson(Map<String, dynamic> json) =>
    _$AboutHotelDtoImpl(
      description: json['description'] as String,
      pecularities: (json['pecularities'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$AboutHotelDtoImplToJson(_$AboutHotelDtoImpl instance) =>
    <String, dynamic>{
      'description': instance.description,
      'pecularities': instance.pecularities,
    };
