part of 'seller_reservation_bloc.dart';

@freezed
class SellerReservationState with _$SellerReservationState {
  const factory SellerReservationState(
      {required Reservation reservation,
      required bool update,
      required List<ProductReservation> deletedItems,
      required bool isItemsVisible,
      required bool finishing,
      required bool finished}) = _SellerReservationState;

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
              null,
              null),
          productReservations: []),
      update: false,
      deletedItems: [],
      finishing: false,
      finished: false,
      isItemsVisible: false);
}
