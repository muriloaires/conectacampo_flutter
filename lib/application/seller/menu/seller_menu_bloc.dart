import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'seller_menu_bloc.freezed.dart';
part 'seller_menu_event.dart';
part 'seller_menu_state.dart';

@injectable
class SellerMenuBloc extends Bloc<SellerMenuEvent, SellerMenuState> {
  SellerMenuBloc() : super(SellerMenuState.initial());

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
          yield state.copyWith(currentIndex: 1, navToRoot: false);
        },
        reservationTapped: (reservationTapped) async* {
          yield state.copyWith(currentIndex: 3, navToRoot: false);
        },
        profileTapped: (profileTapped) async* {
          yield state.copyWith(currentIndex: 4, navToRoot: false);
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
        reservationEditItemsTap: (EditReservation value) async* {
          yield state.copyWith(
              openEditReservation: true,
              optionOfResevationToEdit: some(value.reservation));
        },
        editingEnd: (EditingEnd value) async* {
          yield state.copyWith(
              openEditReservation: false, optionOfResevationToEdit: none());
        },
        logout: (Logout value) async* {
          await logout();
          yield state.copyWith(navToLogin: true);
        });
  }
}
