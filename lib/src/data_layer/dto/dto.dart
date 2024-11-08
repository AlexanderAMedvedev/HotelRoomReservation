import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto.freezed.dart';
part 'dto.g.dart';

@freezed
class ReservationDto with _$ReservationDto {
  const factory ReservationDto({
    @JsonKey(name: 'arrival_country') required String arrivalCountry,
    required String departure,
    @JsonKey(name: 'fuel_charge') required double fuelCharge,
    required double horating,
    @JsonKey(name: 'hotel_address') required String hotelAddress,
    @JsonKey(name: 'hotel_name') required String hotelName,
    required int id,
    @JsonKey(name: 'number_of_nights') required String numberOfNights,
    required String nutrition,
    @JsonKey(name: 'rating_name') required String ratingName,
    required String room,
    @JsonKey(name: 'service_charge') required double serviceCharge,
    @JsonKey(name: 'tour_date_start') required String tourDateStart,
    @JsonKey(name: 'tour_date_stop') required String tourDateStop,
    @JsonKey(name: 'tour_price') required double tourPrice,
  }) = _ReservationDto;

  factory ReservationDto.fromJson(Map<String, dynamic> json) =>
      _$ReservationDtoFromJson(json);
}

@freezed
class RoomDto with _$RoomDto {
  const factory RoomDto({
    required int id,
    @JsonKey(name: 'image_urls') required List<String> imageUrls,
    required String name,
    required List<String> pecularities,
    required double price,
    @JsonKey(name: 'price_per') required String pricePer,
  }) = _RoomDto;

  factory RoomDto.fromJson(Map<String, dynamic> json) =>
      _$RoomDtoFromJson(json);
}

@freezed
class HotelDto with _$HotelDto {
  const factory HotelDto(
      {required AboutHotelDto aboutHotel,
      required String address,
      required int id,
      @JsonKey(name: 'image_urls') required List<String> imageUrls,
      @JsonKey(name: 'minimal_price') required double minimalPrice,
      required String name,
      required double rating,
      @JsonKey(name: 'rating_name')
      required String ratingName}) = _HotelDto;

  factory HotelDto.fromJson(Map<String, dynamic> json) =>
      _$HotelDtoFromJson(json);
}

@freezed
class AboutHotelDto with _$AboutHotelDto {
  const factory AboutHotelDto({
    required String description,
    required List<String> pecularities,
  }) = _AboutHotelDto;

  factory AboutHotelDto.fromJson(Map<String, dynamic> json) =>
      _$AboutHotelDtoFromJson(json);
}
