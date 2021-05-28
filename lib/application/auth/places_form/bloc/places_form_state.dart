part of 'places_form_bloc.dart';

@freezed
abstract class PlacesFormState with _$PlacesFormState {
  const factory PlacesFormState({
    @required Option<Either<PlacesFailure, List<StatePlace>>> states,
    @required Option<Either<PlacesFailure, List<Place>>> places,
    String selectedState,
    String placeSelected,
    @required bool isLoadingStatePlaces,
    @required bool loadStatePlacesFinish,
    @required bool isLoadingPlaces,
    @required bool loadPlacesFinish,
    @required bool isSubmitting,
    @required Option<Either<PlacesFailure, Unit>> placesFailureOrSuccessOption,
  }) = _PlacesFormState;

  factory PlacesFormState.initial() => PlacesFormState(
      states: some(right(List.empty())),
      places: some(right(List.empty())),
      selectedState: null,
      placeSelected: null,
      isLoadingStatePlaces: true,
      loadPlacesFinish: false,
      isLoadingPlaces: false,
      loadStatePlacesFinish: false,
      isSubmitting: false,
      placesFailureOrSuccessOption: none());
}
