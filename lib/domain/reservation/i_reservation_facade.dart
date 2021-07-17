import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/reservation/reservation_item.dart';
import 'package:dartz/dartz.dart';

abstract class IReservationFacade {
  Future<List<ReservationItem>> getItemsInCart();
  Future<Option<ReservationItem>> insertReservationItemToCart(
      ReservationItem reservationItem);
  Future<Unit> removeReservationItem(ReservationItem reservationItem);
  Future<Option<ReservationItem>> getReservatiomItemByProduct(
      AdProduct product);
}
