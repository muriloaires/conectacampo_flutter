import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/domain/reservation/reservation_failure.dart';
import 'package:conectacampo/domain/reservation/reservation_item.dart';
import 'package:conectacampo/infrastructure/reservation/model/model.dart';
import 'package:dartz/dartz.dart';

abstract class IReservationFacade {
  Future<List<ReservationItem>> getItemsInCart();

  Future<Either<ReservationFailure, ReservationItem>>
      insertReservationItemToCart(ReservationItem reservationItem);

  Future<Unit> removeReservationItem(ReservationItem reservationItem);

  Future<Option<ReservationItem>> getReservationItemByProduct(
      AdProduct product);

  Future<Either<ReservationFailure, Unit>> requestReservation(
      {required ReservationObjRequest reservationObj});

  Future<Unit> clearCart();

  Future<Either<ReservationFailure, List<Reservation>>>
      getCurrentUserReservations();

  Future<Either<ReservationFailure, List<Reservation>>> getSellerReservations();
}
