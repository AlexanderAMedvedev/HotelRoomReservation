import 'package:hotels/src/data_layer/models/hotel_entity.dart';

sealed class HotelsState {}

class InitialState extends HotelsState {}

class HotelsDownloadedState extends HotelsState {
  final List<HotelEntity> aboutHotels;

  HotelsDownloadedState({required this.aboutHotels});
}
