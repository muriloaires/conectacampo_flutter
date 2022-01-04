part of 'seller_advertisements_bloc.dart';

@freezed
class SellerAdvertisementsEvent with _$SellerAdvertisementsEvent {
  const factory SellerAdvertisementsEvent.started() = _Started;
  const factory SellerAdvertisementsEvent.someExpandedTap(bool isExpanded) = SomeExpandedTap;
}