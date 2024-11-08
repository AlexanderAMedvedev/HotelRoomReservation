import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotels/src/data_layer/repository/app_repository.dart';
import 'package:hotels/src/presentation_layer/pages/hotels/cubit/hotels_state.dart';

class HotelsCubit extends Cubit<HotelsState> {
  HotelsCubit({required AppRepository appRepository})
      : _repository = appRepository,
        super(InitialState()) {
    onInit();
  }

  final AppRepository _repository;

  Future<void> onInit() async {
    try {
      emit(HotelsDownloadedState(
          aboutHotels: await _repository.getAllHotels()));
    } catch (e, stackTrace) {
      print('Error occured: $stackTrace');
    }
  }
}
