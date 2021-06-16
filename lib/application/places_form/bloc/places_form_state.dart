part of 'places_form_bloc.dart';

@freezed
class PlacesFormState with _$PlacesFormState {
  const factory PlacesFormState(
    Option<Either<PlacesFailure, List<StatePlace>>> states,
    Option<Either<PlacesFailure, List<Place>>> places,
    String? selectedState,
    String? placeSelected,
    bool isLoadingStatePlaces,
    bool loadStatePlacesFinish,
    bool isLoadingPlaces,
    bool loadPlacesFinish,
    bool isSubmitting,
    Option<Either<PlacesFailure, Unit>> placesFailureOrSuccessOption,
  ) = _PlacesFormState;

  factory PlacesFormState.initial() => PlacesFormState(
      some(right(List.empty())),
      some(right(List.empty())),
      null,
      null,
      true,
      false,
      false,
      false,
      false,
      none());
}
