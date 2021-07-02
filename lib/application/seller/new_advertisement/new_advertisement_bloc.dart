import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/seller/new_ad_product.dart';
import 'package:conectacampo/domain/advertisements/seller/new_advertisement.dart';
import 'package:conectacampo/domain/advertisements/seller/value_objects.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';
import 'package:conectacampo/infrastructure/places/place_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'new_advertisement_bloc.freezed.dart';
part 'new_advertisement_event.dart';
part 'new_advertisement_state.dart';

@injectable
class NewAdvertisementBloc
    extends Bloc<NewAdvertisementEvent, NewAdvertisementState> {
  NewAdvertisementBloc() : super(NewAdvertisementState.initial());

  @override
  Stream<NewAdvertisementState> mapEventToState(
    NewAdvertisementEvent event,
  ) async* {
    yield* event.map(
        started: (started) async* {
          final place = await loadSelectedPlace();
          if (place != null) {
            yield state.copyWith(
                newAdvertisement:
                    state.newAdvertisement.copyWith(newAdDeliveryPlace: place));
          }
        },
        onPlaceTap: (onPlaceTap) async* {
          yield state.copyWith(openPlace: true);
          yield state.copyWith(openPlace: false);
        },
        onPlaceSelected: (onPlaceSelected) async* {
          final place = await loadSelectedPlace();
          if (place != null) {
            yield state.copyWith(
                newAdvertisement:
                    state.newAdvertisement.copyWith(newAdDeliveryPlace: place),
                openPlace: false,
                isBtnContinueEnabled: setIsBtnConinueEnabled(state));
          }
        },
        onDateSelected: (OnDateSelected value) async* {
          if (value.dateTime != null) {
            yield state.copyWith(
                newAdvertisement: state.newAdvertisement.copyWith(
                    date: NewAdvertisementDate(
                        value.dateTime!.getDayMonthYear())),
                isBtnContinueEnabled: setIsBtnConinueEnabled(state));
          }
        },
        onDeliveryPlaceSelected: (onDeliveryPlaceSelected) async* {
          if (onDeliveryPlaceSelected.where != null) {
            yield state.copyWith(
                deliveryPlace: onDeliveryPlaceSelected.where,
                requestDeliveryPlaceFocus: true,
                isBtnContinueEnabled: setIsBtnConinueEnabled(state));
          }
        },
        onDeliveryDescriptionChanged:
            (OnDeliveryDescriptionChanged value) async* {
          yield state.copyWith(
              newAdvertisement: state.newAdvertisement.copyWith(
                  newAdDeliveryDescription:
                      NewAdvertisementDeliveryDescription(value.where)),
              isBtnContinueEnabled: setIsBtnConinueEnabled(state));
        },
        onContinueTap: (OnContinueTap value) async* {});
  }

  bool setIsBtnConinueEnabled(NewAdvertisementState state) {
    return state.newAdvertisement.isValidHeader();
  }
}
