part of 'places_form_bloc.dart';

@freezed
class PlacesFormEvent with _$PlacesFormEvent {
  const factory PlacesFormEvent.started() = Started;
  const factory PlacesFormEvent.stateSelected(StatePlace? state) =
      StateSelected;
  const factory PlacesFormEvent.placeSelected(Place? place) = PlaceSelected;
}
