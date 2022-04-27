part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required int currentIndex,
    required bool isUserLogged,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        currentIndex: 0,
        isUserLogged: false,
      );
}
