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

  String? Function(String? password) telephoneValidation = (value) {
    if (value == null || value.isEmpty) {
      return 'Введите номер телефона';
    }
    if (value.length != 11) {
      return 'Длина телефона - 11 цифр';
    }
    return null;
  };

  String? Function(String? login) emailValidation = (value) {
    const emailPattern =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    final regex = RegExp(emailPattern);
    if (value == null || value.isEmpty) {
      return 'Введите почту';
    }
    if (!regex.hasMatch(value)) {
      return 'Введите почту в формате anna@gmail.com';
    }
    return null;
  };

  String? Function(String? password) touristDataValidator = (value) {
    if (value == null || value.isEmpty) {
      return 'Заполните поле формы, пожалуйста';
    }
    return null;
  };
}
