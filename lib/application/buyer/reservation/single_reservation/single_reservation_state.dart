part of 'single_reservation_bloc.dart';

@freezed
class SingleReservationState with _$SingleReservationState {
  const factory SingleReservationState({
    required bool isItemVisible,
    required Reservation reservation,
    required bool showAcceptError,
    required bool showCancelItemError,
  }) = _SingleReservationState;

  factory SingleReservationState.initial() => SingleReservationState(
      isItemVisible: true,
      reservation: Reservation(
          id: -1,
          createdAt: '',
          buyer: User(
              UniqueId.fromUniqueString('as'),
              FullName('Full name'),
              Nickname('nickname'),
              'vehicleLicensePlate',
              PhoneNumber('62999999999'),
              null,
              null,
              null),
          seller: User(
              UniqueId.fromUniqueString('as'),
              FullName('Full name'),
              Nickname('nickname'),
              'vehicleLicensePlate',
              PhoneNumber('62999999999'),
              null,
              null,
              null),
          productReservations: []),
      showAcceptError: false,
      showCancelItemError: false);
}
