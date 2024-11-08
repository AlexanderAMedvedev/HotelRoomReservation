import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels/src/data_layer/repository/app_repository.dart';
import 'package:hotels/src/presentation_layer/pages/rooms/cubit/rooms_state.dart';

class RoomsCubit extends Cubit<RoomsState> {
  RoomsCubit({required AppRepository appRepository})
      : _repository = appRepository,
        super(RoomsInitialState()) {
    onInit();
  }

  final AppRepository _repository;

  Future<void> onInit() async {
    try {
      emit(RoomsDownloadedState(
          aboutRooms: await _repository.getAllRooms()));
    } catch (e, stackTrace) {
      print('Error occured: $stackTrace');
    }
  }
}
