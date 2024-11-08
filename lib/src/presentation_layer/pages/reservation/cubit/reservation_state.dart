import 'package:hotels/src/data_layer/models/reservation_entity.dart';

sealed class ReservationState {}

class ReservationInitialState extends ReservationState {}

class ReservationDownloadedState extends ReservationState {
  final ReservationEntity aboutReservation;
  ReservationDownloadedState({required this.aboutReservation});
}
