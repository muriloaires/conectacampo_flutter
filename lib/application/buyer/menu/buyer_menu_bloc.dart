import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/reservation/i_reservation_facade.dart';
import 'package:conectacampo/domain/reservation/reservation_item.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
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
          yield state.copyWith(currentIndex: 0, navToRoot: false);
        },
        groupsTapped: (e) async* {
          yield state.copyWith(currentIndex: 1, navToRoot: false);
        },
        buyTapped: (e) async* {},
        reservationTapped: (e) async* {
          yield state.copyWith(currentIndex: 3, navToRoot: false);
        },
        profileTapped: (e) async* {
          yield state.copyWith(currentIndex: 4, navToRoot: false);
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
          final itemsInCart = await reservationFacade.getItemsInCart();
          yield state.copyWith(itemsInCart: itemsInCart);
        },
        onCartTapped: (OnCartTapped value) async* {
          yield state.copyWith(openCart: true);
          yield state.copyWith(openCart: false);
        });
  }
}
