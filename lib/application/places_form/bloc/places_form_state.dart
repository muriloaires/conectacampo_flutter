part of 'places_form_bloc.dart';

@freezed
class PlacesFormState with _$PlacesFormState {
  const factory PlacesFormState({
    required Option<Either<AuthFailure, User>> loggedUser,
    required Option<Either<PlacesFailure, List<StatePlace>>> states,
    required Option<Either<PlacesFailure, List<Place>>> places,
    required StatePlace? selectedState,
    required Place? placeSelected,
    required bool isLoadingStatePlaces,
    required bool loadStatePlacesFinish,
    required bool isLoadingPlaces,
    required bool loadPlacesFinish,
    required bool isSubmitting,
    required bool placeSaved,
    required Option<Either<PlacesFailure, Unit>> placesFailureOrSuccessOption,
  }) = _PlacesFormState;

  factory PlacesFormState.initial() => PlacesFormState(
      loggedUser: some(left(const AuthFailure.userNotFound())),
      states: some(right(List.empty())),
      places: some(right(List.empty())),
      selectedState: null,
      placeSelected: null,
      isLoadingStatePlaces: true,
      loadStatePlacesFinish: false,
      isLoadingPlaces: false,
      loadPlacesFinish: false,
      isSubmitting: false,
      placeSaved: false,
      placesFailureOrSuccessOption: none());
}
