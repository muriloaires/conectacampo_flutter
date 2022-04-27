import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';

part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial());

  @override
  Stream<HomeState> mapEventToState(HomeEvent event) async* {
    yield* event.map(
      started: (value) async* {
        yield state.copyWith(isUserLogged: await isUserLogged());
      },
      homeTapped: (value) async* {
        yield state.copyWith(currentIndex: 0);
      },
      searchTapped: (value) async* {
        yield state.copyWith(currentIndex: 1);
      },
      reservationsTapped: (value) async* {
        yield state.copyWith(currentIndex: 2);
      },
      storesTapped: (value) async* {
        yield state.copyWith(currentIndex: 3);
      },
      moreTapped: (value) async* {
        yield state.copyWith(currentIndex: 4);
      },
    );
  }
}
