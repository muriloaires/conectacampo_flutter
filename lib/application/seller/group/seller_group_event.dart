part of 'seller_group_bloc.dart';

@freezed
class SellerGroupEvent with _$SellerGroupEvent {
  const factory SellerGroupEvent.started() = _Started;
  const factory SellerGroupEvent.onBtnDeleteTap(BuyerReservations buyerGroup) = OnBtnDeleteTap;
}