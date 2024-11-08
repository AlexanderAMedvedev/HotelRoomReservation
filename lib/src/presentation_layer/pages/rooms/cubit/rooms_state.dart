import 'package:hotels/src/data_layer/models/room_entity.dart';

sealed class RoomsState {}

class RoomsInitialState extends RoomsState {}

class RoomsDownloadedState extends RoomsState {
  final List<RoomEntity> aboutRooms;
  RoomsDownloadedState({required this.aboutRooms});
}
