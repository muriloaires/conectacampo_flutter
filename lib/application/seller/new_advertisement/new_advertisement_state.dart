part of 'new_advertisement_bloc.dart';

@freezed
class NewAdvertisementState with _$NewAdvertisementState {
  const factory NewAdvertisementState(
      {required NewAdvertisement newAdvertisement,
      required bool openPlace,
      required String? deliveryPlace,
      required bool requestDeliveryPlaceFocus,
      required bool isBtnContinueEnabled}) = _NewAdvertisementState;

  factory NewAdvertisementState.initial() => NewAdvertisementState(
        newAdvertisement: NewAdvertisement(
          date: NewAdvertisementDate(DateTime.now()),
          newAdDeliveryPlace: null,
          newAdDeliveryDescription: NewAdvertisementDeliveryDescription(''),
          products: [NewAdProduct()],
        ),
        openPlace: false,
        deliveryPlace: null,
        requestDeliveryPlaceFocus: false,
        isBtnContinueEnabled: false,
      );
}
