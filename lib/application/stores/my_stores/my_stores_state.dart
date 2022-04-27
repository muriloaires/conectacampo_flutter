part of 'my_stores_bloc.dart';

@freezed
class MyStoresState with _$MyStoresState {
  const factory MyStoresState({
    required bool loading,
    required User? loggedUser,
    required Either<StoresFailure, MyStores>? myStoresSuccessOrFailure,
  }) = _MyStoresState;

  factory MyStoresState.initial() => const MyStoresState(
        loading: true,
        loggedUser: null,
        myStoresSuccessOrFailure: null,
      );
}
