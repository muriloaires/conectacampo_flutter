import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'buyer_menu_bloc.freezed.dart';
part 'buyer_menu_event.dart';
part 'buyer_menu_state.dart';

@injectable
class BuyerMenuBloc extends Bloc<BuyerMenuEvent, BuyerMenuState> {
  BuyerMenuBloc() : super(BuyerMenuState.initial());

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
        });
  }
}
