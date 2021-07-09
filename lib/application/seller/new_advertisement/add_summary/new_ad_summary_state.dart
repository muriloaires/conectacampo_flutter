part of 'new_ad_summary_bloc.dart';

@freezed
class NewAdSummaryState with _$NewAdSummaryState {
  const factory NewAdSummaryState(
      {required NewAdvertisement newAdvertisement,
      required bool openEdit,
      required int editIndex,
      required bool addItems,
      required bool loading,
      required Option<Either<AdvertisementFailure, Advertisement>>
          optionOfAdvertisementFailureOrSucess}) = _NewAdSummaryState;

  factory NewAdSummaryState.initial() => NewAdSummaryState(
        newAdvertisement: NewAdvertisement(
            date: NewAdvertisementDate(DateTime.now()),
            newAdDeliveryDescription:
                NewAdvertisementDeliveryDescription('Des'),
            newAdDeliveryPlace: null,
            products: List.empty()),
        openEdit: false,
        editIndex: 0,
        addItems: false,
        loading: false,
        optionOfAdvertisementFailureOrSucess: none(),
      );
}
