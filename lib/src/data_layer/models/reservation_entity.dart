import 'package:hotels/src/data_layer/dto/dto.dart';

class ReservationEntity {
  final String arrivalCountry;
  final String departure;
  final double fuelCharge;
  final double horating;
  final String hotelAddress;
  final String hotelName;
  final int id;
  final String numberOfNights;
  final String nutrition;
  final String ratingName;
  final String room;
  final double serviceCharge;
  final String tourDateStart;
  final String tourDateStop;
  final double tourPrice;

  ReservationEntity({
    required this.arrivalCountry,
    required this.departure,
    required this.fuelCharge,
    required this.horating,
    required this.hotelAddress,
    required this.hotelName,
    required this.id,
    required this.numberOfNights,
    required this.nutrition,
    required this.ratingName,
    required this.room,
    required this.serviceCharge,
    required this.tourDateStart,
    required this.tourDateStop,
    required this.tourPrice,
  });

  ReservationEntity.fromReservationDto(ReservationDto reservationDto)
      : arrivalCountry = reservationDto.arrivalCountry,
        departure = reservationDto.departure,
        fuelCharge = reservationDto.fuelCharge,
        horating = reservationDto.horating,
        hotelAddress = reservationDto.hotelAddress,
        hotelName = reservationDto.hotelName,
        id = reservationDto.id,
        numberOfNights = reservationDto.numberOfNights,
        nutrition = reservationDto.nutrition,
        ratingName = reservationDto.ratingName,
        room = reservationDto.room,
        serviceCharge = reservationDto.serviceCharge,
        tourDateStart = reservationDto.tourDateStart,
        tourDateStop = reservationDto.tourDateStop,
        tourPrice = reservationDto.tourPrice;
}
