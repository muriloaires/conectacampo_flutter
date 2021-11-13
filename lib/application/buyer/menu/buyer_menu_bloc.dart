import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/reservation/i_reservation_facade.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/domain/reservation/reservation_item.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:conectacampo/infrastructure/notification/model.dart';
import 'package:conectacampo/infrastructure/notification/notification_controller.dart';
import 'package:conectacampo/infrastructure/reservation/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'buyer_menu_bloc.freezed.dart';

part 'buyer_menu_event.dart';

part 'buyer_menu_state.dart';

@injectable
class BuyerMenuBloc extends Bloc<BuyerMenuEvent, BuyerMenuState> {
  BuyerMenuBloc(this.reservationFacade) : super(BuyerMenuState.initial());

  final IReservationFacade reservationFacade;

  @override
  Stream<BuyerMenuState> mapEventToState(
    BuyerMenuEvent event,
  ) async* {
    yield* event.map(
        homeTapped: (e) async* {
          yield state.copyWith(
              currentIndex: 0, navToRoot: false, showToolBar: true);
        },
        groupsTapped: (e) async* {
          yield state.copyWith(
              currentIndex: 1, navToRoot: false, showToolBar: true);
        },
        buyTapped: (e) async* {},
        reservationTapped: (e) async* {
          yield state.copyWith(
              currentIndex: 3, navToRoot: false, showToolBar: true);
        },
        profileTapped: (e) async* {
          yield state.copyWith(
              currentIndex: 4, navToRoot: false, showToolBar: false);
        },
        groupsRetapped: (value) async* {
          yield state.copyWith(navToRoot: true);
        },
        homeRetapped: (value) async* {
          yield state.copyWith(navToRoot: true);
        },
        profileRetapped: (value) async* {
          yield state.copyWith(navToRoot: true);
        },
        reservationRetapped: (value) async* {
          yield state.copyWith(navToRoot: true);
        },
        navToSellerTapped: (NavToSellerTapped value) async* {
          await persistUserType('seller');
          yield state.copyWith(navToSeller: true);
        },
        started: (Started value) async* {
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
          final itemsInCart = await reservationFacade.getItemsInCart();
          yield state.copyWith(
              itemsInCart: itemsInCart, reservationToOpen: reservationToOpen);
          yield state.copyWith(
              itemsInCart: itemsInCart, reservationToOpen: null);
        },
        onCartTapped: (OnCartTapped value) async* {
          yield state.copyWith(openCart: true);
          yield state.copyWith(openCart: false);
        },
        logout: (Logout value) async* {
          await logout();
          yield state.copyWith(navToLogin: true);
        },
        produtDetailsOpen: (ProdutDetailsOpen value) async* {
          yield state.copyWith(showToolBar: false);
        },
        produtDetailsClosed: (ProdutDetailsClosed value) async* {
          yield state.copyWith(showToolBar: true);
        });
  }

  Future<void> checkReservationToOpen() async {}
}
