part of 'seller_menu_bloc.dart';

@freezed
class SellerMenuState with _$SellerMenuState {
  const factory SellerMenuState({
    required int currentIndex,
    required bool navToRoot,
    required bool navToBuyer,
    required int reTapIndex,
    required bool navToLogin,
    required User? user,
    required Place? place,
    required ReservationToOpen? reservationToOpen,
  }) = _SellerMenuState;

  factory SellerMenuState.initial() => SellerMenuState(
      currentIndex: 0,
      navToRoot: false,
      place: null,
      navToBuyer: false,
      reTapIndex: -1,
      navToLogin: false,
      user: null,
      reservationToOpen: null);
}
