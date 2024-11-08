import 'package:dio/dio.dart';
import 'package:hotels/src/data_layer/dto/dto.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@injectable
@RestApi()
abstract class ApiClient {
  @factoryMethod
  factory ApiClient(
    Dio dio, {
    @Named('baseUrl') required String baseUrl,
  }) = _ApiClient;

  @GET('hotels')
  Future<List<HotelDto>> getAllHotels();

  @GET('rooms')
  Future<List<RoomDto>> getAllRooms();
}
