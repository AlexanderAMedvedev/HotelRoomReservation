import 'package:hotels/src/data_layer/api/api_client.dart';
import 'package:hotels/src/data_layer/dto/dto.dart';
import 'package:hotels/src/data_layer/models/hotel_entity.dart';
import 'package:hotels/src/data_layer/models/reservation_entity.dart';
import 'package:hotels/src/data_layer/models/room_entity.dart';
import 'package:injectable/injectable.dart';

@Injectable()
class AppRepository {
  AppRepository({
    required ApiClient apiClient,
  }) : _apiClient = apiClient;

  final ApiClient _apiClient;

  Future<List<HotelEntity>> getAllHotels() async {
    final hotelsDto = await _apiClient.getAllHotels();
    List<HotelEntity> hotelsEntity = [];
    for (HotelDto hotelDto in hotelsDto) {
      hotelsEntity.add(HotelEntity.fromHotelDto(hotelDto));
    }
    return hotelsEntity;
  }

  Future<List<RoomEntity>> getAllRooms() async {
    final roomsDto = await _apiClient.getAllRooms();
    List<RoomEntity> roomsEntity = [];
    for (RoomDto roomDto in roomsDto) {
      roomsEntity.add(RoomEntity.fromRoomDto(roomDto));
    }
    return roomsEntity;
  }

  Future<ReservationEntity> getReservation() async {
    final reservationsDto = await _apiClient.getReservations();
    final reservationDto = reservationsDto[0];
    return ReservationEntity.fromReservationDto(reservationDto);
  }
}
