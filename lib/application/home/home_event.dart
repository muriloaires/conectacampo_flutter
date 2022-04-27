part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent{
  const factory HomeEvent.started() = Started;

  const factory HomeEvent.homeTapped() = HomeTapped;
  const factory HomeEvent.searchTapped() = SearchTapped;
  const factory HomeEvent.reservationsTapped() = ReservationsTapped;
  const factory HomeEvent.storesTapped() = StoresTapped;
  const factory HomeEvent.moreTapped() = MoreTapped;


}
