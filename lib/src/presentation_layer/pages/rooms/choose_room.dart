import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels/src/data_layer/repository/app_repository.dart';
import 'package:hotels/src/di.dart';
import 'package:hotels/src/presentation_layer/common_widgets/action_button.dart';
import 'package:hotels/src/presentation_layer/common_widgets/app_bar_title.dart';
import 'package:hotels/src/presentation_layer/common_widgets/back_icon_button.dart';
import 'package:hotels/src/presentation_layer/common_widgets/features.dart';
import 'package:hotels/src/presentation_layer/common_widgets/grey_stripe.dart';
import 'package:hotels/src/presentation_layer/common_widgets/name.dart';
import 'package:hotels/src/presentation_layer/common_widgets/page_view_with_dots_T.dart';
import 'package:hotels/src/presentation_layer/common_widgets/price.dart';
import 'package:hotels/src/presentation_layer/pages/rooms/cubit/rooms_cubit.dart';
import 'package:hotels/src/presentation_layer/pages/rooms/cubit/rooms_state.dart';

class ChooseRoom extends StatelessWidget {
  final String hotelName;
  const ChooseRoom({super.key, required this.hotelName});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RoomsCubit>(
        create: (context) =>
            RoomsCubit(appRepository: sl<AppRepository>()),
        child: ChooseRoomPage(
          hotelName: hotelName,
        ));
  }
}

class ChooseRoomPage extends StatelessWidget {
  final String hotelName;
  const ChooseRoomPage({super.key, required this.hotelName});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RoomsCubit, RoomsState>(
        builder: (context, state) {
      return switch (state) {
        RoomsInitialState() => Scaffold(
            appBar: AppBar(
              leading: BackIconButton(onTap: () => context.go('/')),
              title: AppBarTitle(hotelName),
              centerTitle: true,
            ),
            body: const Center(child: CircularProgressIndicator()),
          ),
        RoomsDownloadedState(:final aboutRooms) => Scaffold(
            appBar: AppBar(
              leading: BackIconButton(onTap: () => context.go('/')),
              title: AppBarTitle(hotelName),
              centerTitle: true,
            ),
            body: ListView.builder(
              itemCount: aboutRooms.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const GreyStripe(),
                    const SizedBox(height: 16),
                    PageViewWithDots(
                        aboutTForIndex: aboutRooms[index]),
                    Name(name: aboutRooms[index].name),
                    const SizedBox(height: 8),
                    Features(
                      featuresList: aboutRooms[index].pecularities,
                    ),
                    const SizedBox(height: 8),
                    const _MoreAboutRoom('Подробнее о номере'),
                    const SizedBox(height: 16),
                    Price(
                      price:
                          '${aboutRooms[index].price.floor().toString()} P',
                      pricePer: 'за 7 ночей с перелётом',
                    ),
                    const SizedBox(height: 16),
                    ActionButton('Выбрать номер', onTap: () {
                      context.go('/reservation', extra: hotelName);
                    }),
                    const SizedBox(height: 16),
                  ],
                );
              },
            ),
          ),
      };
    });
  }
}

class _MoreAboutRoom extends StatelessWidget {
  final String text;
  const _MoreAboutRoom(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme.displayMedium!;
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.lightBlueAccent,
            borderRadius: BorderRadius.circular(4)),
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
          child: Text(text,
              style: textTheme.copyWith(color: Colors.blue)),
        ),
      ),
    );
  }
}
