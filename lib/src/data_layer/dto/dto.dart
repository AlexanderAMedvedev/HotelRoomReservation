import 'package:freezed_annotation/freezed_annotation.dart';

part 'dto.freezed.dart';
part 'dto.g.dart';

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
