part of 'product_page_bloc.dart';

@freezed
class ProductPageEvent with _$ProductPageEvent {
  const factory ProductPageEvent.started() = _Started;
  const factory ProductPageEvent.ammountChanged(int ammount) = AmmountChanged;
  const factory ProductPageEvent.onBtnReservationTap() = OnBtnReservationTap;
}
