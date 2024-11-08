import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';
import 'package:go_router/go_router.dart';
import 'package:hotels/src/data_layer/repository/app_repository.dart';
import 'package:hotels/src/di.dart';
import 'package:hotels/src/presentation_layer/common_widgets/action_button.dart';
import 'package:hotels/src/presentation_layer/common_widgets/address.dart';
import 'package:hotels/src/presentation_layer/common_widgets/app_bar_title.dart';
import 'package:hotels/src/presentation_layer/common_widgets/features.dart';
import 'package:hotels/src/presentation_layer/common_widgets/grey_stripe.dart';
import 'package:hotels/src/presentation_layer/common_widgets/header.dart';
import 'package:hotels/src/presentation_layer/common_widgets/mark.dart';
import 'package:hotels/src/presentation_layer/common_widgets/name.dart';
import 'package:hotels/src/presentation_layer/common_widgets/page_view_with_dots_T.dart';
import 'package:hotels/src/presentation_layer/common_widgets/price.dart';
import 'package:hotels/src/presentation_layer/pages/hotels/cubit/hotels_cubit.dart';
import 'package:hotels/src/presentation_layer/pages/hotels/cubit/hotels_state.dart';

class ChooseHotel extends StatelessWidget {
  const ChooseHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HotelsCubit>(
        create: (context) =>
            HotelsCubit(appRepository: sl<AppRepository>()),
        child: const ChooseHotelPage());
  }
}

class ChooseHotelPage extends StatelessWidget {
  const ChooseHotelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HotelsCubit, HotelsState>(
        builder: (context, state) {
      return switch (state) {
        InitialState() =>
          const Center(child: CircularProgressIndicator()),
        HotelsDownloadedState(:final aboutHotels) => Scaffold(
            appBar: AppBar(
              title: const AppBarTitle('Отель'),
              centerTitle: true,
            ),
            body: ListView.builder(
                itemCount: aboutHotels.length,
                itemBuilder: (context, index) {
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        PageViewWithDots(
                            aboutTForIndex: aboutHotels[index]),
                        const SizedBox(height: 20),
                        Mark(
                          rating:
                              aboutHotels[index].rating.toString(),
                          ratingName: aboutHotels[index].ratingName,
                        ),
                        const SizedBox(height: 16),
                        Name(name: aboutHotels[index].name),
                        const SizedBox(height: 16),
                        Address(
                            hotelAddress: aboutHotels[index].address),
                        const SizedBox(height: 16),
                        Price(
                            price:
                                'от ${aboutHotels[index].minimalPrice.floor()} P',
                            pricePer: 'за тур с перелётом'),
                        const SizedBox(height: 16),
                        const GreyStripe(),
                        const SizedBox(height: 16),
                        const Header(text: 'Об отеле'),
                        const SizedBox(height: 16),
                        Features(
                            featuresList:
                                aboutHotels[index].pecularities),
                        const SizedBox(height: 8),
                        HotelDescription(
                            description:
                                aboutHotels[index].description),
                        const SizedBox(height: 8),
                        SpecialButton(
                            iconPath:
                                'assets/icons/happy_emoji_icon.svg',
                            title: 'Удобства',
                            subTitle: '',
                            onTap: () =>
                                print('tapped first button')),
                        SpecialButton(
                            iconPath: 'assets/icons/checked_icon.svg',
                            title: 'Что включено',
                            subTitle: 'Самое необходимое',
                            onTap: () =>
                                print('tapped second button')),
                        SpecialButton(
                            iconPath: 'assets/icons/close_icon.svg',
                            title: 'Что не включено',
                            subTitle: '',
                            onTap: () =>
                                print('tapped third button')),
                        const GreyStripe(),
                        const SizedBox(height: 8),
                        ActionButton('К выбору номера', onTap: () {
                          context.go('/choose_room',
                              extra: aboutHotels[index].name);
                        }),
                        const SizedBox(height: 32),
                      ]);
                }),
          ),
      };
    });
  }
}

class SpecialButton extends StatelessWidget {
  final String iconPath;
  final String title;
  final String subTitle;
  final Function() onTap;

  const SpecialButton({
    super.key,
    required this.iconPath,
    required this.title,
    required this.subTitle,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 60,
        color: Colors.white70,
        child: GestureDetector(
          onTap: onTap,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Svg(iconPath),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(title, style: textTheme.bodyMedium!),
                        Text(subTitle, style: textTheme.headlineSmall)
                      ]),
                ),
                const Icon(Icons.chevron_right, color: Colors.grey),
              ]),
        ),
      ),
    );
  }
}

class HotelDescription extends StatelessWidget {
  final String description;

  const HotelDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Text(description,
          textAlign: TextAlign.left, style: textTheme.bodyMedium),
    );
  }
}
