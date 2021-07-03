part of 'add_product_bloc.dart';

@freezed
class AddProductState with _$AddProductState {
  const factory AddProductState(
      {required NewAdvertisement newAdvertisement,
      required bool isLoading,
      required Option<Either<ProductFailure, List<Product>>>
          optionProductsFailureOrSuccess,
      required bool showErrors,
      required bool showBtnProceed,
      required bool proceed}) = _AddProductState;

  factory AddProductState.initial() => AddProductState(
      newAdvertisement: NewAdvertisement(
          date: NewAdvertisementDate(''),
          newAdDeliveryDescription: NewAdvertisementDeliveryDescription(''),
          newAdDeliveryPlace: null,
          products: [NewAdProduct()]),
      isLoading: true,
      optionProductsFailureOrSuccess: none(),
      showErrors: false,
      showBtnProceed: false,
      proceed: false);
}
