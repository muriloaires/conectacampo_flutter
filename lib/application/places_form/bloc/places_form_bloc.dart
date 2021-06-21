import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/auth/auth_failure.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/places/i_places_facade.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:conectacampo/domain/places/places_failure.dart';
import 'package:conectacampo/domain/places/value_objects.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:conectacampo/infrastructure/places/place_repository.dart';
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
      final user = await loadLoggedUser();
      yield state.copyWith(
          loggedUser: optionOf(user), isLoadingStatePlaces: true);
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
      final places = await _placesFacade
          .getAllPlacesByStateName(value.state?.getOrCrash() ?? '');

      yield state.copyWith(
          isLoadingPlaces: false, loadPlacesFinish: true, places: some(places));
    }, placeSelected: (PlaceSelected value) async* {
      if (value.place != null) {
        await persistSelectedPlace(value.place!);
        yield state.copyWith(placeSaved: true, placeSelected: value.place);
      }
    });
  }
}
