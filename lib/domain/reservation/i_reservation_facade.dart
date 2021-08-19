import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/reservation/product_reservation.dart';
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

  Future<Either<ReservationFailure, Unit>> updateProductReservation(
      ProductReservation productReservation, int newQuantity);

  Future<Either<ReservationFailure, Unit>> deleteProductReservation(
      ProductReservation productReservation);

  Future<Either<ReservationFailure, Unit>> cancelReservation(
      Reservation reservation);

  Future<Either<ReservationFailure, Unit>> confirmProductReservation(
      ProductReservation productReservation);

  Future<Either<ReservationFailure, Unit>> confirmReservation(
      Reservation reservation);

  Future<Either<ReservationFailure, Unit>> confirmReservationPayment(
      Reservation reservation);

  Future<Either<ReservationFailure, Reservation>> getReservation(
      int reservationId);
}
