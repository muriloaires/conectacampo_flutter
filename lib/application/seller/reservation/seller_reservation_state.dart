part of 'seller_reservation_bloc.dart';

@freezed
class SellerReservationState with _$SellerReservationState {
  const factory SellerReservationState(
      {required Reservation reservation,
      required bool update}) = _SellerReservationState;

  factory SellerReservationState.initial() => SellerReservationState(
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
      update: false);
}
