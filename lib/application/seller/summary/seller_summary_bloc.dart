import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/advertisement_failure.dart';
import 'package:conectacampo/domain/advertisements/i_advertisements_facade.dart';
import 'package:conectacampo/domain/auth/auth_failure.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:conectacampo/domain/reservation/i_reservation_facade.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/domain/reservation/reservation_failure.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:conectacampo/infrastructure/places/place_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'seller_summary_bloc.freezed.dart';
part 'seller_summary_event.dart';
part 'seller_summary_state.dart';

@injectable
class SellerSummaryBloc extends Bloc<SellerSummaryEvent, SellerSummaryState> {
  SellerSummaryBloc(this.adsFacade, this.reservationFacade)
      : super(SellerSummaryState.initial());

  final IAdvertisementsFacade adsFacade;
  final IReservationFacade reservationFacade;
  @override
  Stream<SellerSummaryState> mapEventToState(
    SellerSummaryEvent event,
  ) async* {
    yield* event.map(
      started: (started) async* {
        final place = await loadSelectedPlace();
        final user = await loadLoggedUser();

        yield state.copyWith(loadingReservations: true);
        final reservationFailureOrSucess =
            await reservationFacade.getSellerReservations();

        yield state.copyWith(
          place: place,
          user: user,
          optionOfReservationFailureOrSuccess: some(reservationFailureOrSucess),
          loadingReservations: false,
        );
      },
      onCancelReservationPressed: (OnCancelReservationPressed value) async* {
        yield state.copyWith(cancellingReservation: true);
        final cancelResult =
            await reservationFacade.cancelReservation(value.reservation);
        yield state.copyWith(
            cancellingReservation: false,
            optionOfReservationCancelFailureOrSuccess: some(
              cancelResult,
            ));
        yield state.copyWith(optionOfReservationCancelFailureOrSuccess: none());
      },
      placeChanged: (PlaceChanged value) async* {
        final place = await loadSelectedPlace();
        yield state.copyWith(place: place);
      },
    );
  }
}
