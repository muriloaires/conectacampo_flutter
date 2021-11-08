part of 'new_advertisement_bloc.dart';

@freezed
class NewAdvertisementEvent with _$NewAdvertisementEvent {
  const factory NewAdvertisementEvent.started() = _Started;

  const factory NewAdvertisementEvent.onPlaceTap() = OnPlaceTap;

  const factory NewAdvertisementEvent.onPlaceSelected() = OnPlaceSelected;

  const factory NewAdvertisementEvent.onContinueTap() = OnContinueTap;

  const factory NewAdvertisementEvent.onDateSelected(DateTime? dateTime) =
      OnDateSelected;

  const factory NewAdvertisementEvent.onDeliveryPlaceSelected(String? where) =
      OnDeliveryPlaceSelected;

  const factory NewAdvertisementEvent.onDeliveryDescriptionChanged(
      String where) = OnDeliveryDescriptionChanged;

  const factory NewAdvertisementEvent.onResetProducts() =
  OnResetProducts;
}
