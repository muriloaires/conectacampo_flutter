part of 'seller_menu_bloc.dart';

@freezed
class SellerMenuState with _$SellerMenuState {
  const factory SellerMenuState({
    required int currentIndex,
    required bool navToRoot,
    required bool navToBuyer,
    required int reTapIndex,
    required Place? place,
    required bool navToLogin,
    required Option<Either<AuthFailure, User>> optionOfUser,
    required Option<Place> optionOfPlace,
    required ReservationToOpen? reservationToOpen,
  }) = _SellerMenuState;

  factory SellerMenuState.initial() => SellerMenuState(
      currentIndex: 0,
      navToRoot: false,
      place: null,
      navToBuyer: false,
      reTapIndex: -1,
      navToLogin: false,
      optionOfUser: none(),
      optionOfPlace: none(),
      reservationToOpen: null);
}
