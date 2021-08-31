part of 'seller_group_bloc.dart';

@freezed
class SellerGroupState with _$SellerGroupState {
  const factory SellerGroupState(
      {required Either<ReservationFailure, List<BuyerReservations>>
          groupReservations}) = _SellerGroupState;

  factory SellerGroupState.initial() =>
      SellerGroupState(groupReservations: right([]));
}
