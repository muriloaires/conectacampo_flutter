import 'dart:async';

import 'package:bloc/bloc.dart';
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
  PlacesFormBloc(this._placesFacade) : super(PlacesFormState.initial()) {
    on<PlacesFormEvent>(
      (event, emit) async {
        await event.map(
          started: (value) async {
            final user = await loadLoggedUser();
            emit(state.copyWith(loggedUser: user, isLoadingStatePlaces: true));
            final states = await _placesFacade.getAllStates();
            emit(
              state.copyWith(
                states: optionOf(states),
                isLoadingStatePlaces: false,
                loadStatePlacesFinish: true,
              ),
            );
          },
          stateSelected: (value) async {
            emit(
              state.copyWith(
                selectedState: value.state,
                isLoadingPlaces: true,
                places: some(right(List.empty())),
                placeSelected: null,
                loadPlacesFinish: false,
              ),
            );
            final places = await _placesFacade
                .getAllPlacesByStateName(value.state?.getOrCrash() ?? '');

            emit(
              state.copyWith(
                isLoadingPlaces: false,
                loadPlacesFinish: true,
                places: some(places),
              ),
            );
          },
          placeSelected: (value) async {
            if (value.place != null) {
              await persistSelectedPlace(value.place!);
              emit(
                state.copyWith(placeSaved: true, placeSelected: value.place),
              );
            }
          },
        );
      },
    );
  }

  final IPlacesFacade _placesFacade;
}
