part of 'seller_group_bloc.dart';

@freezed
class SellerGroupState with _$SellerGroupState {
  const factory SellerGroupState({
    required Either<ReservationFailure, List<Reservation>> groupReservations,
    required bool loading,
    required Either<ReservationFailure, Unit>? groupRemoval,
  }) = _SellerGroupState;

  factory SellerGroupState.initial() =>
      SellerGroupState(groupReservations: right([]), loading: false, groupRemoval: null);
}
