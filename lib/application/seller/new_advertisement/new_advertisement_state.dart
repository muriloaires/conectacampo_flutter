part of 'new_advertisement_bloc.dart';

@freezed
class NewAdvertisementState with _$NewAdvertisementState {
  const factory NewAdvertisementState(
      {required Place? place,
      required bool openPlace,
      required NewAdvertisementDate? dateSelected,
      required String? deliveryPlace,
      required bool requestDeliveryPlaceFocus,
      required NewAdvertisementDeliveryDescription deliveryDescription,
      required bool isBtnContinueEnabled}) = _NewAdvertisementState;

  factory NewAdvertisementState.initial() => NewAdvertisementState(
        place: null,
        openPlace: false,
        dateSelected: null,
        deliveryPlace: null,
        requestDeliveryPlaceFocus: false,
        deliveryDescription: NewAdvertisementDeliveryDescription(''),
        isBtnContinueEnabled: false,
      );
}
