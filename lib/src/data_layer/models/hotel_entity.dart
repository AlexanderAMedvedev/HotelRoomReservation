import 'package:hotels/src/data_layer/dto/dto.dart';

class HotelEntity {
  final String description;
  final List<String> pecularities;
  final String address;
  final int id;
  final List<String> imageUrls;
  final double minimalPrice;
  final String name;
  final double rating;
  final String ratingName;

  HotelEntity({
    required this.description,
    required this.pecularities,
    required this.address,
    required this.id,
    required this.imageUrls,
    required this.minimalPrice,
    required this.name,
    required this.rating,
    required this.ratingName,
  });

  HotelEntity.fromHotelDto(HotelDto hotelDto)
      : description = hotelDto.aboutHotel.description,
        pecularities = hotelDto.aboutHotel.pecularities,
        address = hotelDto.address,
        id = hotelDto.id,
        imageUrls = hotelDto.imageUrls,
        minimalPrice = hotelDto.minimalPrice,
        name = hotelDto.name,
        rating = hotelDto.rating,
        ratingName = hotelDto.ratingName;
}
