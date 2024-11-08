import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels/src/data_layer/models/reservation_entity.dart';
import 'package:hotels/src/data_layer/repository/app_repository.dart';
import 'package:hotels/src/di.dart';
import 'package:hotels/src/presentation_layer/common_widgets/action_button.dart';
import 'package:hotels/src/presentation_layer/common_widgets/address.dart';
import 'package:hotels/src/presentation_layer/common_widgets/app_bar_title.dart';
import 'package:hotels/src/presentation_layer/common_widgets/back_icon_button.dart';
import 'package:hotels/src/presentation_layer/common_widgets/grey_stripe.dart';
import 'package:hotels/src/presentation_layer/common_widgets/header.dart';
import 'package:hotels/src/presentation_layer/common_widgets/mark.dart';
import 'package:hotels/src/presentation_layer/common_widgets/name.dart';
import 'package:hotels/src/presentation_layer/pages/reservation/cubit/reservation_cubit.dart';
import 'package:hotels/src/presentation_layer/pages/reservation/cubit/reservation_state.dart';

double _totalPrice(ReservationEntity aboutReservation) =>
    aboutReservation.tourPrice +
    aboutReservation.fuelCharge +
    aboutReservation.serviceCharge;

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
          ReservationDownloadedState(:final aboutReservation) =>
            Scaffold(
              appBar: AppBar(
                leading: BackIconButton(
                    onTap: () =>
                        context.go('/choose_room', extra: hotelName)),
                title: const AppBarTitle('Бронирование'),
                centerTitle: true,
              ),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const GreyStripe(),
                    const SizedBox(height: 8),
                    Mark(
                        rating: aboutReservation.horating.toString(),
                        ratingName: aboutReservation.ratingName),
                    const SizedBox(height: 8),
                    Name(
                      name: aboutReservation.hotelName,
                    ),
                    const SizedBox(height: 16),
                    Address(
                        hotelAddress: aboutReservation.hotelAddress),
                    const SizedBox(height: 32),
                    const GreyStripe(),
                    const SizedBox(height: 16),
                    _TableInfo(aboutReservation: aboutReservation),
                    const SizedBox(height: 8),
                    const GreyStripe(),
                    const SizedBox(height: 16),
                    const Header(text: 'Информация о покупателе'),
                    const SizedBox(height: 16),
                    const GreyStripe(),
                    const SizedBox(height: 32),
                    _TableMoney(aboutReservation: aboutReservation),
                    const SizedBox(height: 28),
                    const GreyStripe(),
                    const SizedBox(height: 16),
                    ActionButton(
                        'Оплатить ${_totalPrice(aboutReservation).floor()} P',
                        onTap: () =>
                            context.go('/final', extra: hotelName)),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
        };
      },
    );
  }
}

class _TableMoney extends StatelessWidget {
  final ReservationEntity aboutReservation;
  const _TableMoney({super.key, required this.aboutReservation});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Table(children: [
          TableRow(children: [
            const _TextForLeftColumn('Тур'),
            Align(
              alignment: Alignment.centerRight,
              child: _TextForRightColumn(
                  '${aboutReservation.tourPrice.floor()} Р'),
            ),
          ]),
          TableRow(children: [
            const _TextForLeftColumn('Топливный сбор'),
            Align(
              alignment: Alignment.centerRight,
              child: _TextForRightColumn(
                  '${aboutReservation.fuelCharge.floor()} Р'),
            ),
          ]),
          TableRow(children: [
            const _TextForLeftColumn('Сервисный сбор'),
            Align(
              alignment: Alignment.centerRight,
              child: _TextForRightColumn(
                  '${aboutReservation.serviceCharge.floor()} Р'),
            )
          ]),
          TableRow(children: [
            const _TextForLeftColumn('К оплате'),
            Align(
              alignment: Alignment.centerRight,
              child: _TextForRightColumn(
                  '${_totalPrice(aboutReservation).floor()} Р',
                  textColor: Colors.blue),
            )
          ]),
        ]));
  }
}

class _TableInfo extends StatelessWidget {
  final ReservationEntity aboutReservation;
  const _TableInfo({super.key, required this.aboutReservation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Table(
        children: [
          TableRow(children: [
            const _TextForLeftColumn('Страна'),
            _TextForRightColumn(aboutReservation.arrivalCountry)
          ]),
          TableRow(children: [
            const _TextForLeftColumn('Даты'),
            _TextForRightColumn(
                '${aboutReservation.tourDateStart} - ${aboutReservation.tourDateStop}'),
          ]),
          TableRow(children: [
            const _TextForLeftColumn('Кол-во ночей'),
            _TextForRightColumn(
                '${aboutReservation.numberOfNights} ночей')
          ]),
          TableRow(children: [
            const _TextForLeftColumn('Отель'),
            _TextForRightColumn(aboutReservation.hotelName)
          ]),
          TableRow(children: [
            const _TextForLeftColumn('Номер'),
            _TextForRightColumn(aboutReservation.room)
          ]),
          TableRow(children: [
            const _TextForLeftColumn('Питание'),
            _TextForRightColumn(aboutReservation.nutrition)
          ]),
        ],
      ),
    );
  }
}

class _TextForLeftColumn extends StatelessWidget {
  final String text;
  const _TextForLeftColumn(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(text,
          style: textTheme.headlineSmall?.copyWith(fontSize: 20)),
    );
  }
}

class _TextForRightColumn extends StatelessWidget {
  final String text;
  final Color? textColor;
  const _TextForRightColumn(this.text, {super.key, this.textColor});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Text(text,
          style: textTheme.bodyMedium!.copyWith(
              fontSize: 20,
              color: textColor ?? textTheme.bodyMedium!.color)),
    );
  }
}
