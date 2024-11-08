// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReservationDtoImpl _$$ReservationDtoImplFromJson(Map<String, dynamic> json) =>
    _$ReservationDtoImpl(
      arrivalCountry: json['arrival_country'] as String,
      departure: json['departure'] as String,
      fuelCharge: (json['fuel_charge'] as num).toDouble(),
      horating: (json['horating'] as num).toDouble(),
      hotelAddress: json['hotel_address'] as String,
      hotelName: json['hotel_name'] as String,
      id: (json['id'] as num).toInt(),
      numberOfNights: json['number_of_nights'] as String,
      nutrition: json['nutrition'] as String,
      ratingName: json['rating_name'] as String,
      room: json['room'] as String,
      serviceCharge: (json['service_charge'] as num).toDouble(),
      tourDateStart: json['tour_date_start'] as String,
      tourDateStop: json['tour_date_stop'] as String,
      tourPrice: (json['tour_price'] as num).toDouble(),
    );

Map<String, dynamic> _$$ReservationDtoImplToJson(
        _$ReservationDtoImpl instance) =>
    <String, dynamic>{
      'arrival_country': instance.arrivalCountry,
      'departure': instance.departure,
      'fuel_charge': instance.fuelCharge,
      'horating': instance.horating,
      'hotel_address': instance.hotelAddress,
      'hotel_name': instance.hotelName,
      'id': instance.id,
      'number_of_nights': instance.numberOfNights,
      'nutrition': instance.nutrition,
      'rating_name': instance.ratingName,
      'room': instance.room,
      'service_charge': instance.serviceCharge,
      'tour_date_start': instance.tourDateStart,
      'tour_date_stop': instance.tourDateStop,
      'tour_price': instance.tourPrice,
    };

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
