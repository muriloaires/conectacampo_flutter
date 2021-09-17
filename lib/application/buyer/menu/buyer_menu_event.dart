part of 'buyer_menu_bloc.dart';

@freezed
class BuyerMenuEvent with _$BuyerMenuEvent {
  const factory BuyerMenuEvent.started() = Started;
  const factory BuyerMenuEvent.onCartTapped() = OnCartTapped;

  const factory BuyerMenuEvent.buyTapped() = BuyTapped;

  const factory BuyerMenuEvent.homeTapped() = HomeTapped;
  const factory BuyerMenuEvent.groupsTapped() = GroupsTapped;
  const factory BuyerMenuEvent.reservationTapped() = ReservationTapped;
  const factory BuyerMenuEvent.profileTapped() = ProfileTapped;

  const factory BuyerMenuEvent.homeRetapped() = HomeRetapped;
  const factory BuyerMenuEvent.groupsRetapped() = GroupsRetapped;
  const factory BuyerMenuEvent.reservationRetapped() = ReservationRetapped;
  const factory BuyerMenuEvent.profileRetapped() = ProfileRetapped;

  const factory BuyerMenuEvent.produtDetailsOpen() = ProdutDetailsOpen;
  const factory BuyerMenuEvent.produtDetailsClosed() = ProdutDetailsClosed;

  const factory BuyerMenuEvent.navToSellerTapped() = NavToSellerTapped;
  const factory BuyerMenuEvent.logout() = Logout;
}
