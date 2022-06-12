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
  HomeBloc() : super(HomeState.initial()) {
    on<HomeEvent>(
      (event, emit) {
        event.map(
          started: (value) async {
            emit(state.copyWith(isUserLogged: await isUserLogged()));
          },
          homeTapped: (value) {
            emit(state.copyWith(currentIndex: 0));
          },
          searchTapped: (value) {
            emit(state.copyWith(currentIndex: 1));
          },
          reservationsTapped: (value) {
            emit(state.copyWith(currentIndex: 2));
          },
          storesTapped: (value) {
            emit(state.copyWith(currentIndex: 3));
          },
          moreTapped: (value) {
            emit(state.copyWith(currentIndex: 4));
          },
        );
      },
    );
  }
}
