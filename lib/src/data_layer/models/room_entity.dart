import 'package:hotels/src/data_layer/dto/dto.dart';

class RoomEntity {
  final int id;
  final String name;
  final List<String> imageUrls;
  final List<String> pecularities;
  final double price;
  final String price_per;

  RoomEntity({
    required this.id,
    required this.name,
    required this.imageUrls,
    required this.pecularities,
    required this.price,
    required this.price_per,
  });

  RoomEntity.fromRoomDto(RoomDto roomDto)
      : id = roomDto.id,
        name = roomDto.name,
        imageUrls = roomDto.imageUrls,
        pecularities = roomDto.pecularities,
        price = roomDto.price,
        price_per = roomDto.pricePer;
}
