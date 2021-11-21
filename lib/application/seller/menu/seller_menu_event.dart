part of 'seller_menu_bloc.dart';

@freezed
class SellerMenuEvent with _$SellerMenuEvent {
  const factory SellerMenuEvent.started() = Started;

  const factory SellerMenuEvent.sellTapped() = SellTapped;

  const factory SellerMenuEvent.homeTapped() = HomeTapped;
  const factory SellerMenuEvent.groupsTapped() = GroupsTapped;
  const factory SellerMenuEvent.reservationTapped() = ReservationTapped;
  const factory SellerMenuEvent.profileTapped() = ProfileTapped;

  const factory SellerMenuEvent.homeRetapped() = HomeRetapped;
  const factory SellerMenuEvent.groupsRetapped() = GroupsRetapped;
  const factory SellerMenuEvent.reservationRetapped() = ReservationRetapped;
  const factory SellerMenuEvent.profileRetapped() = ProfileRetapped;
  const factory SellerMenuEvent.navToBuyerTapped() = NavToBuyerTapped;
  const factory SellerMenuEvent.reservationEditItemsTap(
      Reservation? reservation) = EditReservation;

  const factory SellerMenuEvent.editingEnd() = EditingEnd;
  const factory SellerMenuEvent.logout() = Logout;
  const factory SellerMenuEvent.placeChanged() = PlaceChanged;
}
