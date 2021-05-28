import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:conectacampo/domain/places/i_places_facade.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:conectacampo/domain/places/places_failure.dart';
import 'package:conectacampo/domain/places/value_objects.dart';
import 'package:conectacampo/infrastructure/places/model/model.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'places_form_event.dart';
part 'places_form_state.dart';
part 'places_form_bloc.freezed.dart';

@injectable
class PlacesFormBloc extends Bloc<PlacesFormEvent, PlacesFormState> {
  PlacesFormBloc(this._placesFacade) : super(PlacesFormState.initial());

  final IPlacesFacade _placesFacade;

  @override
  Stream<PlacesFormState> mapEventToState(
    PlacesFormEvent event,
  ) async* {
    yield* event.map(started: (e) async* {
      yield state.copyWith(isLoadingStatePlaces: true);
      final states = await _placesFacade.getAllStates();
      yield state.copyWith(
          states: optionOf(states),
          isLoadingStatePlaces: false,
          loadStatePlacesFinish: true);
    }, stateSelected: (StateSelected value) async* {
      yield state.copyWith(
          selectedState: value.state,
          isLoadingPlaces: true,
          loadPlacesFinish: false);
      final places = await _placesFacade.getAllPlacesByStateName(value.state);

      yield state.copyWith(
          isLoadingPlaces: false, loadPlacesFinish: true, places: some(places));
    }, placeSelected: (PlaceSelected value) async* {
      yield state.copyWith(placeSelected: value.place);
    });
  }
}
