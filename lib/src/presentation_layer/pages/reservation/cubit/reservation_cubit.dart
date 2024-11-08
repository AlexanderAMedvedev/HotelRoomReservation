import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels/src/data_layer/repository/app_repository.dart';
import 'package:hotels/src/presentation_layer/pages/reservation/cubit/reservation_state.dart';

class ReservationCubit extends Cubit<ReservationState> {
  ReservationCubit({required AppRepository appRepository})
      : _repository = appRepository,
        super(ReservationInitialState()) {
    onInit();
  }

  final AppRepository _repository;

  Future<void> onInit() async {
    try {
      emit(ReservationDownloadedState(
          aboutReservation: await _repository.getReservation()));
    } catch (e, stackTrace) {
      print('Error occured: $stackTrace');
    }
  }
}
