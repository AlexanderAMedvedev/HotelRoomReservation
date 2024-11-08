import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
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

class ReservationPage extends StatefulWidget {
  final String hotelName;
  const ReservationPage({super.key, required this.hotelName});

  @override
  State<ReservationPage> createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  late GlobalKey<FormState> telephoneFormKey;
  late TextEditingController telephoneController;

  late GlobalKey<FormState> emailFormKey;
  late TextEditingController emailController;

  List<GlobalKey<FormState>> touristFormKey = [];
  List<TextEditingController> nameController = [];
  List<TextEditingController> surnameController = [];
  List<TextEditingController> birthdayController = [];
  List<TextEditingController> citizenshipController = [];
  List<TextEditingController>
      numberOfInternationalPasswordController = [];
  List<TextEditingController>
      internationalPasswordValidityPeriodController = [];

  @override
  void initState() {
    super.initState();
    telephoneController = TextEditingController();
    telephoneFormKey = GlobalKey<FormState>();

    emailController = TextEditingController();
    emailFormKey = GlobalKey<FormState>();

    touristFormKey = [GlobalKey<FormState>()];
    nameController = [TextEditingController()];
    surnameController = [TextEditingController()];
    birthdayController = [TextEditingController()];
    citizenshipController = [TextEditingController()];
    numberOfInternationalPasswordController = [
      TextEditingController()
    ];
    internationalPasswordValidityPeriodController = [
      TextEditingController()
    ];
  }

  @override
  void dispose() {
    telephoneController.dispose();
    emailController.dispose();

    for (int i = 0; i < touristFormKey.length; i++) {
      nameController[i].dispose();
      surnameController[i].dispose();
      birthdayController[i].dispose();
      citizenshipController[i].dispose();
      numberOfInternationalPasswordController[i].dispose();
      internationalPasswordValidityPeriodController[i].dispose();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ReservationCubit, ReservationState>(
      builder: (context, state) {
        return switch (state) {
          ReservationInitialState() => Scaffold(
              appBar: AppBar(
                leading: BackIconButton(
                    onTap: () => context.go('/choose_room',
                        extra: widget.hotelName)),
                title: const AppBarTitle('Бронирование'),
                centerTitle: true,
              ),
              body: const Center(child: CircularProgressIndicator()),
            ),
          ReservationDownloadedState(:final aboutReservation) =>
            Scaffold(
              appBar: AppBar(
                leading: BackIconButton(
                    onTap: () => context.go('/choose_room',
                        extra: widget.hotelName)),
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
                    _Form(
                      specialKey: telephoneFormKey,
                      controller: telephoneController,
                      hintText: 'Номер телефона',
                      validator: context
                          .read<ReservationCubit>()
                          .telephoneValidation,
                    ),
                    const SizedBox(height: 4),
                    _Form(
                      specialKey: emailFormKey,
                      controller: emailController,
                      hintText: 'Почта',
                      validator: context
                          .read<ReservationCubit>()
                          .emailValidation,
                      autoValidation: true,
                    ),
                    const SizedBox(height: 4),
                    const _ConcerningNumberAndEmail(
                        'Эти данные никому не передаются. После оплаты мы вышлем чек на указанный Вами номер и почту'),
                    ...List.generate(
                      touristFormKey.length,
                      (index) => Column(children: [
                        const SizedBox(height: 16),
                        const GreyStripe(),
                        const SizedBox(height: 16),
                        _HeaderWithIconButton(
                            text: 'Турист ${index + 1}',
                            iconPath: 'assets/icons/collapse.svg'),
                        const SizedBox(height: 16),
                        _TouristForm(
                            specialKey: touristFormKey[index],
                            nameController: nameController[index],
                            surnameController:
                                surnameController[index],
                            birthdayController:
                                birthdayController[index],
                            citizenshipController:
                                citizenshipController[index],
                            numberOfInternationalPasswordController:
                                numberOfInternationalPasswordController[
                                    index],
                            internationalPasswordValidityPeriodController:
                                internationalPasswordValidityPeriodController[
                                    index]),
                      ]),
                    ),
                    const GreyStripe(),
                    const SizedBox(height: 24),
                    _HeaderWithIconButton(
                      text: 'Добавить туриста',
                      iconPath: 'assets/icons/add.svg',
                      onTap: () => setState(() => _addTouristForm()),
                    ),
                    const SizedBox(height: 24),
                    const GreyStripe(),
                    const SizedBox(height: 16),
                    _TableMoney(aboutReservation: aboutReservation),
                    const SizedBox(height: 28),
                    const GreyStripe(),
                    const SizedBox(height: 16),
                    ActionButton(
                        'Оплатить ${_totalPrice(aboutReservation).floor()} P',
                        onTap: () {
                      bool telephoneIsOk =
                          telephoneFormKey.currentState!.validate();
                      bool emailIsOk =
                          emailFormKey.currentState!.validate();
                      List<bool> touristFormIsOk = [];
                      for (int i = 0;
                          i < touristFormKey.length;
                          i++) {
                        touristFormIsOk.add(touristFormKey[i]
                            .currentState!
                            .validate());
                      }
                      (telephoneIsOk &&
                              emailIsOk &&
                              !touristFormIsOk.contains(false))
                          ? context.go('/final',
                              extra: widget.hotelName)
                          : null;
                    }),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
        };
      },
    );
  }

  _addTouristForm() {
    touristFormKey.add(GlobalKey<FormState>());
    nameController.add(TextEditingController());
    surnameController.add(TextEditingController());
    birthdayController.add(TextEditingController());
    citizenshipController.add(TextEditingController());
    numberOfInternationalPasswordController
        .add(TextEditingController());
    internationalPasswordValidityPeriodController
        .add(TextEditingController());
  }
}

class _TouristForm extends StatelessWidget {
  final GlobalKey<FormState> specialKey;
  final TextEditingController nameController;
  final TextEditingController surnameController;
  final TextEditingController birthdayController;
  final TextEditingController citizenshipController;
  final TextEditingController numberOfInternationalPasswordController;
  final TextEditingController
      internationalPasswordValidityPeriodController;
  const _TouristForm({
    super.key,
    required this.specialKey,
    required this.nameController,
    required this.surnameController,
    required this.birthdayController,
    required this.citizenshipController,
    required this.numberOfInternationalPasswordController,
    required this.internationalPasswordValidityPeriodController,
  });

  @override
  Widget build(BuildContext context) {
    final reservationCubit = context.read<ReservationCubit>();
    final hintTextStyle = Theme.of(context)
        .textTheme
        .headlineSmall
        ?.copyWith(fontSize: 20);
    final textStyle = Theme.of(context)
        .textTheme
        .headlineSmall
        ?.copyWith(fontSize: 20, color: Colors.black);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Form(
        key: specialKey,
        child: Column(children: [
          TextFormField(
            style: textStyle,
            decoration: InputDecoration(
              hintStyle: hintTextStyle,
              hintText: 'Имя',
            ),
            validator: reservationCubit.touristDataValidator,
            controller: nameController,
          ),
          const SizedBox(height: 4),
          TextFormField(
            style: textStyle,
            decoration: InputDecoration(
              hintStyle: hintTextStyle,
              hintText: 'Фамилия',
            ),
            validator: reservationCubit.touristDataValidator,
            controller: surnameController,
          ),
          const SizedBox(height: 4),
          TextFormField(
            style: textStyle,
            decoration: InputDecoration(
              hintStyle: hintTextStyle,
              hintText: 'Дата рождения',
            ),
            validator: reservationCubit.touristDataValidator,
            controller: birthdayController,
          ),
          const SizedBox(height: 4),
          TextFormField(
            style: textStyle,
            decoration: InputDecoration(
              hintStyle: hintTextStyle,
              hintText: 'Гражданство',
            ),
            validator: reservationCubit.touristDataValidator,
            controller: citizenshipController,
          ),
          const SizedBox(height: 4),
          TextFormField(
            style: textStyle,
            decoration: InputDecoration(
              hintStyle: hintTextStyle,
              hintText: 'Номер загранпаспорта',
            ),
            validator: reservationCubit.touristDataValidator,
            controller: numberOfInternationalPasswordController,
          ),
          const SizedBox(height: 4),
          TextFormField(
            style: textStyle,
            decoration: InputDecoration(
              hintStyle: hintTextStyle,
              hintText: 'Срок действия загранпаспорта',
            ),
            validator: reservationCubit.touristDataValidator,
            controller: internationalPasswordValidityPeriodController,
          ),
          const SizedBox(height: 4),
        ]),
      ),
    );
  }
}

class _HeaderWithIconButton extends StatelessWidget {
  final String text;
  final String iconPath;
  final void Function()? onTap;

  const _HeaderWithIconButton(
      {super.key,
      required this.text,
      required this.iconPath,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Header(text: text),
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Svg(iconPath),
                ),
              ),
              child: GestureDetector(onTap: onTap),
            ),
          ]),
    );
  }
}

class _ConcerningNumberAndEmail extends StatelessWidget {
  final String text;
  const _ConcerningNumberAndEmail(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Text(text,
            style: Theme.of(context)
                .textTheme
                .headlineSmall
                ?.copyWith(fontSize: 18)));
  }
}

class _Form extends StatelessWidget {
  final GlobalKey<FormState> specialKey;
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?) validator;
  final bool autoValidation;

  const _Form({
    super.key,
    required this.specialKey,
    required this.controller,
    required this.hintText,
    required this.validator,
    this.autoValidation = false,
  });

  @override
  Widget build(BuildContext context) {
    final hintTextStyle = Theme.of(context)
        .textTheme
        .headlineSmall
        ?.copyWith(fontSize: 20);
    final textStyle = Theme.of(context)
        .textTheme
        .headlineSmall
        ?.copyWith(fontSize: 20, color: Colors.black);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Form(
        key: specialKey,
        child: TextFormField(
          autovalidateMode: autoValidation
              ? AutovalidateMode.onUserInteraction
              : AutovalidateMode.disabled,
          style: textStyle,
          decoration: InputDecoration(
            hintStyle: hintTextStyle,
            hintText: hintText,
          ),
          validator: validator,
          controller: controller,
        ),
      ),
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
