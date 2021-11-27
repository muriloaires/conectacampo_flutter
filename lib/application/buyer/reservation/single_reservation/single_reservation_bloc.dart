import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/advertisement_failure.dart';
import 'package:conectacampo/domain/advertisements/i_advertisements_facade.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:conectacampo/domain/reservation/i_reservation_facade.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/domain/reservation/reservation_failure.dart';
import 'package:conectacampo/domain/reservation/reservation_item.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'single_reservation_bloc.freezed.dart';

part 'single_reservation_event.dart';

part 'single_reservation_state.dart';

@injectable
class SingleReservationBloc
    extends Bloc<SingleReservationEvent, SingleReservationState> {
  SingleReservationBloc(this.reservationFacade, this.advertisementsFacade)
      : super(SingleReservationState.initial());

  final IReservationFacade reservationFacade;
  final IAdvertisementsFacade advertisementsFacade;

  @override
  Stream<SingleReservationState> mapEventToState(
    SingleReservationEvent event,
  ) async* {
    yield* event.map(started: (started) async* {
      Either<AdvertisementFailure, Advertisement>? adFailureOrSuccess;
      if (started.resservation.productReservations.isNotEmpty) {
        adFailureOrSuccess = await advertisementsFacade.getAdvertisement(started
            .resservation.productReservations.first.adProduct.advertisementId);
      }
      yield state.copyWith(
          reservation: started.resservation,
          adFailureOrSuccess: adFailureOrSuccess);
    }, onAcceptPressed: (OnAcceptPressed value) async* {
      final product = state.reservation?.productReservations
          .where((element) =>
              element.status == ReservationItemStatus.awaitingBuyer)
          .toList()[value.index];
      if (product != null) {
        final result =
            await reservationFacade.confirmProductReservation(product);

        if (result.isLeft()) {
          yield state.copyWith(showAcceptError: true);
        } else {
          final newReservation =
              await reservationFacade.getReservation(state.reservation!.id!);
          if (newReservation.isRight()) {
            yield state.copyWith(
                reservation: newReservation.foldRight(
                    state.reservation, (r, previous) => r));
          }
        }
      }
    }, onAcceptErrorDisplayed: (OnAcceptErrorDisplayed value) async* {
      yield state.copyWith(showAcceptError: false);
    }, onCancelPressed: (OnCancelPressed value) async* {
      final product = state.reservation?.productReservations
          .where((element) =>
              element.status == ReservationItemStatus.awaitingBuyer)
          .toList()[value.index];
      if (product != null) {
        final result =
            await reservationFacade.deleteProductReservation(product);

        if (result.isLeft()) {
          yield state.copyWith(showCancelItemError: true);
        } else {
          final list = state.reservation?.productReservations ?? [];
          list.remove(product);
          yield state.copyWith(
              reservation:
                  state.reservation?.copyWith(productReservations: []));
          yield state.copyWith(
              reservation:
                  state.reservation?.copyWith(productReservations: list));
        }
      }
    }, onCancelErrorDisplayed: (OnCancelErrorDisplayed value) async* {
      yield state.copyWith(showCancelItemError: false);
    }, onExpandPressed: (OnExpandPressed value) async* {
      yield state.copyWith(isItemVisible: !state.isItemVisible);
    }, onCancelReservationPressed: (OnCancelReservationPressed value) async* {
      final result = state.reservation;
      if (result != null) {
        yield state.copyWith(canceling: true);
        final resultCancelation =
            await reservationFacade.cancelReservation(result);
        yield state.copyWith(
            cancelFailureOrSuccess: resultCancelation, canceling: false);
      }
    });
  }
}
