import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/auth/auth_failure.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:conectacampo/domain/reservation/i_reservation_facade.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:conectacampo/infrastructure/notification/notification_controller.dart';
import 'package:conectacampo/infrastructure/onboarding/onboarding_repository.dart';
import 'package:conectacampo/infrastructure/places/place_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'seller_menu_bloc.freezed.dart';

part 'seller_menu_event.dart';

part 'seller_menu_state.dart';

@injectable
class SellerMenuBloc extends Bloc<SellerMenuEvent, SellerMenuState> {
  SellerMenuBloc(this.reservationFacade) : super(SellerMenuState.initial());

  IReservationFacade reservationFacade;

  @override
  Stream<SellerMenuState> mapEventToState(
    SellerMenuEvent event,
  ) async* {
    yield* event.map(
        sellTapped: (sellTapped) async* {},
        homeTapped: (homeTapped) async* {
          yield state.copyWith(currentIndex: 0, navToRoot: false);
        },
        groupsTapped: (groupsTapped) async* {
          yield state.copyWith(
            currentIndex: 1,
            navToRoot: false,
          );
        },
        reservationTapped: (reservationTapped) async* {
          yield state.copyWith(currentIndex: 3, navToRoot: false);
        },
        profileTapped: (profileTapped) async* {
          yield state.copyWith(
            currentIndex: 4,
            navToRoot: false,
          );
        },
        homeRetapped: (homeRetapped) async* {
          yield state.copyWith(reTapIndex: 0, navToRoot: false);
          state.copyWith(reTapIndex: -1, navToRoot: false);
        },
        groupsRetapped: (groupsRetapped) async* {
          yield state.copyWith(reTapIndex: 1, navToRoot: false);
          state.copyWith(reTapIndex: -1, navToRoot: false);
        },
        reservationRetapped: (reservationRetapped) async* {
          yield state.copyWith(reTapIndex: 3, navToRoot: false);
          state.copyWith(reTapIndex: -1, navToRoot: false);
        },
        profileRetapped: (profileRetapped) async* {
          yield state.copyWith(reTapIndex: 4, navToRoot: false);
          state.copyWith(reTapIndex: -1, navToRoot: false);
        },
        navToBuyerTapped: (navToBuyerTapped) async* {
          await persistUserType('buyer');
          yield state.copyWith(navToBuyer: true);
        },
        logout: (Logout value) async* {
          await logout();
          yield state.copyWith(navToLogin: true);
        },
        placeChanged: (PlaceChanged value) async* {
          final place = await loadSelectedPlace();
          yield state.copyWith(optionOfPlace: optionOf(place));
        },
        started: (Started value) async* {
          await saveOnboardingCheck();
          ReservationToOpen? reservationToOpen;
          final reservationToOpenMap = await getReservationIdToOpen();
          if (reservationToOpenMap != null) {
            final reservationId = reservationToOpenMap["notificableId"] as int;
            final kind = reservationToOpenMap["kind"] as String;
            final reservation =
                await reservationFacade.getReservation(reservationId);
            reservation.fold((l) => null, (r) {
              reservationToOpen = ReservationToOpen(kind, r);
            });
          }
          final place = await loadSelectedPlace();
          final user = await loadLoggedUser();
          yield state.copyWith(
              optionOfPlace: optionOf(place),
              optionOfUser: some(user),
              reservationToOpen: reservationToOpen);
          yield state.copyWith(
              optionOfPlace: optionOf(place),
              optionOfUser: some(user),
              reservationToOpen: null);
        });
  }
}
