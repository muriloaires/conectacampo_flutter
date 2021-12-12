import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/advertisement_failure.dart';
import 'package:conectacampo/domain/advertisements/i_advertisements_facade.dart';
import 'package:conectacampo/domain/reservation/i_reservation_facade.dart';
import 'package:conectacampo/domain/reservation/reservation_failure.dart';
import 'package:conectacampo/domain/reservation/reservation_item.dart';
import 'package:conectacampo/domain/reservation/value_objects.dart';
import 'package:conectacampo/infrastructure/reservation/model/model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cart_bloc.freezed.dart';

part 'cart_event.dart';

part 'cart_state.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(this.reservationFacade, this.advertisementsFacade)
      : super(CartState.initial());

  final IReservationFacade reservationFacade;
  final IAdvertisementsFacade advertisementsFacade;

  @override
  Stream<CartState> mapEventToState(
    CartEvent event,
  ) async* {
    yield* event.map(started: (started) async* {
      final itemsInCart = await reservationFacade.getItemsInCart();
      yield state.copyWith(itemsInCart: itemsInCart);
      final remoteAdProducts = await advertisementsFacade
          .getAdProductsByIds(itemsInCart.map((e) => e.id).toList());
      yield state.copyWith(
          optionOfRemoteAdProductsFailureOrSuccess: some(remoteAdProducts));
    }, onBtnDeleteTap: (OnBtnDeleteTap value) async* {
      await reservationFacade.removeReservationItem(value.reservationItem);
      final itemsInCart = await reservationFacade.getItemsInCart();
      yield state.copyWith(
          itemsInCart: itemsInCart,
          optionOfReservationResponse: none(),
          optionOfreservationResultSuccessOrFailure: none());
    }, quantityChanged: (QuantityChanged value) async* {
      final quantity = ReservationQuantity(value.value);
      if (quantity.isValid()) {
        await reservationFacade.insertReservationItemToCart(value
            .reservationItem
            .copyWith(quantity: int.parse(quantity.getOrCrash())));

        final itemsInCart = await reservationFacade.getItemsInCart();
        yield state.copyWith(
            itemsInCart: itemsInCart,
            optionOfreservationResultSuccessOrFailure: none());
      }
    }, btnFinishPressed: (BtnFinishPressed value) async* {
      yield state.copyWith(
          reservating: true, optionOfReservationResponse: none());
      final ReservationObjRequest reservationObj = ReservationObjRequest(
          reservation: ReservationRequest(
              adProducts: state.itemsInCart
                  .map((e) => ProductReservationAttributes(
                      quantity: e.quantity, adProductId: e.id))
                  .toList()));
      final result = await reservationFacade.requestReservation(
          reservationObj: reservationObj);

      if (result.isRight()) {
        await reservationFacade.clearCart();
      }
      final ReservationResponse? response = result.fold(
          (l) => l.maybeMap(
              orElse: () => null, unavailableItems: (a) => a.response),
          (r) => null);
      yield state.copyWith(
          reservating: false,
          optionOfreservationResultSuccessOrFailure: some(result),
          optionOfReservationResponse: optionOf(response),
          showDialogErrorItems: true);
      await Future.delayed(const Duration(seconds: 2));
      yield state.copyWith(showDialogErrorItems: false);
    });
  }
}
