import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/reservation/i_reservation_facade.dart';
import 'package:conectacampo/domain/reservation/reservation_item.dart';
import 'package:conectacampo/infrastructure/core/database/database_provider.dart';
import 'package:conectacampo/infrastructure/reservation/model/model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IReservationFacade)
class ReservationFacade extends IReservationFacade {
  @override
  Future<List<ReservationItem>> getItemsInCart() async {
    final list = await DatabaseHelper.instance.queryAllRows();
    return list.map((e) => e.toDomain()).toList();
  }

  @override
  Future<Option<ReservationItem>> insertReservationItemToCart(
      ReservationItem reservationItem) async {
    final result =
        await DatabaseHelper.instance.updateOrInsert(reservationItem.toLocal());

    return optionOf(result?.toDomain());
  }

  @override
  Future<Unit> removeReservationItem(ReservationItem reservationItem) async {
    await DatabaseHelper.instance.delete(reservationItem.id);
    return unit;
  }

  @override
  Future<Option<ReservationItem>> getReservatiomItemByProduct(
      AdProduct product) async {
    final result = await DatabaseHelper.instance.select(product.id);
    return optionOf(result?.toDomain());
  }
}
