part of 'places_form_bloc.dart';

@freezed
class PlacesFormEvent with _$PlacesFormEvent {
  const factory PlacesFormEvent.started() = Started;
  const factory PlacesFormEvent.stateSelected(String state) = StateSelected;
  const factory PlacesFormEvent.placeSelected(String place) = PlaceSelected;
}
