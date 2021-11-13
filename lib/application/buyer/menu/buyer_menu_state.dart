part of 'buyer_menu_bloc.dart';

@freezed
class BuyerMenuState with _$BuyerMenuState {
  const factory BuyerMenuState(
      {required int currentIndex,
      required bool navToRoot,
      required bool navToSeller,
      required List<ReservationItem> itemsInCart,
      required bool openCart,
      required bool navToLogin,
      required bool showToolBar,
      required ReservationToOpen? reservationToOpen}) = _BuyerMenuState;

  factory BuyerMenuState.initial() => BuyerMenuState(
      currentIndex: 0,
      navToRoot: false,
      navToSeller: false,
      itemsInCart: List.empty(),
      openCart: false,
      navToLogin: false,
      showToolBar: true,
      reservationToOpen: null);
}
