import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/i_advertisements_facade.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:conectacampo/domain/reservation/i_reservation_facade.dart';
import 'package:conectacampo/domain/reservation/product_reservation.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'seller_reservation_event.dart';

part 'seller_reservation_state.dart';

part 'seller_reservation_bloc.freezed.dart';

@injectable
class SellerReservationBloc
    extends Bloc<SellerReservationEvent, SellerReservationState> {
  SellerReservationBloc(this.reservationFacade, this.advertisementsFacade)
      : super(SellerReservationState.initial());

  final IReservationFacade reservationFacade;
  final IAdvertisementsFacade advertisementsFacade;

  @override
  Stream<SellerReservationState> mapEventToState(
    SellerReservationEvent event,
  ) async* {
    yield* event.map(started: (started) async* {
      yield state.copyWith(reservation: started.reservation);
      final adId = started.reservation.productReservations.firstOrNull
          ?.adProduct.advertisementId;
      if (adId != null) {
        final ad = await advertisementsFacade.getAdvertisement(adId);
        yield* ad.fold((l) async* {}, (r) async* {
          yield state.copyWith(advertisement: r);
        });
      }
    }, finish: (Finish value) async* {
      yield state.copyWith(finishing: true);

      for (final element in state.reservation?.productReservations ??
          List<ProductReservation>.empty()) {
        if (element.quantityChanged ?? false) {
          await reservationFacade.updateProductReservation(
              element, element.quantity);
        }
      }

      for (final element in state.deletedItems) {
        await reservationFacade.deleteProductReservation(element);
      }
      yield state.copyWith(finishing: false, finished: true);
    }, quantityEdited: (QuantityEdited value) async* {
      final product = state.reservation?.productReservations[value.index]
          .copyWith(quantity: value.newQuantity,
          quantityChanged: value.newQuantity !=
              state.reservation?.productReservations[value.index].quantity);
      if (product != null) {
        state.reservation?.productReservations[value.index] = product;
        yield state.copyWith(reservation: state.reservation, update: true);
      }
    }, itemRemoved: (ItemRemoved value) async* {
      if (state.reservation != null) {
        var deletedItems = List<ProductReservation>.from(state.deletedItems);
        deletedItems.add(state.reservation!.productReservations[value.index]);

        var normalItems = List<ProductReservation>.from(
            state.reservation!.productReservations);
        normalItems.removeAt(value.index);

        yield state.copyWith(
            reservation: state.reservation!.copyWith(productReservations: []),
            deletedItems: []);
        yield state.copyWith(
            reservation:
                state.reservation!.copyWith(productReservations: normalItems),
            deletedItems: deletedItems);
      }
    }, onCancel: (OnCancel value) async* {
      final reservation = state.reservation;
      if (reservation != null) {
        final cancelResult =
            await reservationFacade.cancelReservation(reservation);
        if (cancelResult.isLeft()) {
        } else {
          final newReservation =
              await reservationFacade.getReservation(reservation.id!);
          if (newReservation.isRight()) {
            yield state.copyWith(
                reservation: newReservation.foldRight(
                    state.reservation, (r, previous) => r));
          }
        }
      }
    }, onConfirm: (OnConfirm value) async* {
      final reservation = state.reservation;
      if (reservation != null) {
        final confirmResult =
            await reservationFacade.confirmReservation(reservation);

        if (confirmResult.isLeft()) {
        } else {
          final newReservation =
              await reservationFacade.getReservation(reservation.id!);
          if (newReservation.isRight()) {
            yield state.copyWith(
                reservation: newReservation.foldRight(
                    state.reservation, (r, previous) => r));
          }
        }
      }
    }, onConfirmPayment: (OnConfirmPayment value) async* {
      final reservation = state.reservation;
      if (reservation != null) {
        final confirmPaymentResult =
            await reservationFacade.confirmReservationPayment(reservation);

        if (confirmPaymentResult.isLeft()) {
        } else {
          final newReservation =
              await reservationFacade.getReservation(reservation.id!);
          if (newReservation.isRight()) {
            yield state.copyWith(
                reservation: newReservation.foldRight(
                    state.reservation, (r, previous) => r));
          }
        }
      }
    }, showItemsTapped: (ShowItemsTapped value) async* {
      yield state.copyWith(isItemsVisible: !state.isItemsVisible);
    });
  }
}
