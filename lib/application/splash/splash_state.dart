part of 'splash_bloc.dart';

@freezed
class SplashState with _$SplashState {
  const factory SplashState({required Option<String> firstScreen}) = _SplashState;

  factory SplashState.initial() => SplashState(firstScreen: none());
}
