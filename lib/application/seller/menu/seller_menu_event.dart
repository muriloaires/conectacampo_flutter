part of 'seller_menu_bloc.dart';

@freezed
class SellerMenuEvent with _$SellerMenuEvent {
  const factory SellerMenuEvent.buyTapped() = SellTapped;

  const factory SellerMenuEvent.homeTapped() = HomeTapped;
  const factory SellerMenuEvent.groupsTapped() = GroupsTapped;
  const factory SellerMenuEvent.reservationTapped() = ReservationTapped;
  const factory SellerMenuEvent.profileTapped() = ProfileTapped;

  const factory SellerMenuEvent.homeRetapped() = HomeRetapped;
  const factory SellerMenuEvent.groupsRetapped() = GroupsRetapped;
  const factory SellerMenuEvent.reservationRetapped() = ReservationRetapped;
  const factory SellerMenuEvent.profileRetapped() = ProfileRetapped;
}
