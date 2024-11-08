import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels/src/data_layer/repository/app_repository.dart';
import 'package:hotels/src/di.dart';
import 'package:hotels/src/presentation_layer/common_widgets/app_bar_title.dart';
import 'package:hotels/src/presentation_layer/common_widgets/back_icon_button.dart';
import 'package:hotels/src/presentation_layer/pages/reservation/cubit/reservation_cubit.dart';
import 'package:hotels/src/presentation_layer/pages/reservation/cubit/reservation_state.dart';

class Reservation extends StatelessWidget {
  final String hotelName;
  const Reservation({super.key, required this.hotelName});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ReservationCubit>(
      create: (context) =>
          ReservationCubit(appRepository: sl<AppRepository>()),
      child: ReservationPage(hotelName: hotelName),
    );
  }
}

class ReservationPage extends StatelessWidget {
  final String hotelName;
  const ReservationPage({super.key, required this.hotelName});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReservationCubit, ReservationState>(
      builder: (context, state) {
        return switch (state) {
          ReservationInitialState() => Scaffold(
              appBar: AppBar(
                leading: BackIconButton(
                    onTap: () =>
                        context.go('/choose_room', extra: hotelName)),
                title: const AppBarTitle('Бронирование'),
                centerTitle: true,
              ),
              body: const Center(child: CircularProgressIndicator()),
            ),
        };
      },
    );
  }
}
