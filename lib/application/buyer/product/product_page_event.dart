part of 'product_page_bloc.dart';

@freezed
class ProductPageEvent with _$ProductPageEvent {
  const factory ProductPageEvent.started(AdProduct product) = _Started;
  const factory ProductPageEvent.amountChanged(String amount) =
      AmountChanged;
  const factory ProductPageEvent.onBtnReservationTap(AdProduct product) =
      OnBtnReservationTap;
}
