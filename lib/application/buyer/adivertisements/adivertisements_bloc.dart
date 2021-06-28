import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/advertisement_failure.dart';
import 'package:conectacampo/domain/advertisements/i_advertisements_facade.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:conectacampo/infrastructure/places/place_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'adivertisements_event.dart';
part 'adivertisements_state.dart';
part 'adivertisements_bloc.freezed.dart';

@injectable
class AdvertisementsBloc
    extends Bloc<AdvertisementsEvent, AdvertisementsState> {
  AdvertisementsBloc(this._adsFacade) : super(AdvertisementsState.initial());

  final IAdvertisementsFacade _adsFacade;

  @override
  Stream<AdvertisementsState> mapEventToState(
    AdvertisementsEvent event,
  ) async* {
    yield* event.map(expandedChanged: (expandedChanged) async* {
      yield state.copyWith();
    }, started: (_Started value) async* {
      yield state.copyWith(loading: true);
      final selectedPlace = await loadSelectedPlace();
      yield state.copyWith(fromPlace: selectedPlace);
      if (selectedPlace != null) {
        final adsFailureOrSuccess =
            await _adsFacade.getAdvertisements(selectedPlace);
        final groupAdsFailureOrSuccess =
            await _adsFacade.getAdvertisements(selectedPlace);
        yield state.copyWith(
            loading: false,
            adsFailureOrSuccess: adsFailureOrSuccess,
            groupsAdsFailureOrSuccess: groupAdsFailureOrSuccess);
      }
    }, placeChanged: (PlaceChanged value) async* {
      yield state.copyWith(loading: true);
      final selectedPlace = await loadSelectedPlace();
      if (selectedPlace != null) {
        final advertisementsFailureOrSuccess =
            await _adsFacade.getAdvertisements(selectedPlace);
        yield state.copyWith(
            loading: false,
            adsFailureOrSuccess: advertisementsFailureOrSuccess);
      }
    });
  }
}
// [expandedChanged.index].isExpanded = expandedChanged.isExpanded;
