import 'package:go_router/go_router.dart';
import 'package:hotels/src/presentation_layer/pages/hotels/choose_hotel.dart';
import 'package:hotels/src/presentation_layer/pages/reservation/reservation.dart';
import 'package:hotels/src/presentation_layer/pages/rooms/choose_room.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const ChooseHotel(),
    ),
    GoRoute(
      path: "/choose_room",
      builder: (context, state) {
        String hotelName = state.extra as String;
        return ChooseRoom(hotelName: hotelName);
      },
    ),
    GoRoute(
        path: "/reservation",
        builder: (context, state) {
          String hotelName = state.extra as String;
          return Reservation(hotelName: hotelName);
        }),
  ],
);
