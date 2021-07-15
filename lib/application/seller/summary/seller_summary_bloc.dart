import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/advertisement_failure.dart';
import 'package:conectacampo/domain/advertisements/i_advertisements_facade.dart';
import 'package:conectacampo/domain/auth/auth_failure.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:dartz/dartz.dart';
import 'package:conectacampo/infrastructure/places/place_repository.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'seller_summary_event.dart';
part 'seller_summary_state.dart';
part 'seller_summary_bloc.freezed.dart';

@injectable
class SellerSummaryBloc extends Bloc<SellerSummaryEvent, SellerSummaryState> {
  SellerSummaryBloc(this.adsFacade) : super(SellerSummaryState.initial());

  final IAdvertisementsFacade adsFacade;
  @override
  Stream<SellerSummaryState> mapEventToState(
    SellerSummaryEvent event,
  ) async* {
    yield* event.map(started: (started) async* {
      final place = await loadSelectedPlace();
      final user = await loadLoggedUser();
      final Option<Either<AdvertisementFailure, List<Advertisement>>>
          adsFailureOrSucces;
      if (place != null) {
        adsFailureOrSucces = some(await adsFacade.getSellerAds(place));
      } else {
        adsFailureOrSucces = none();
      }

      yield state.copyWith(
          optionOfOPlace: optionOf(place),
          optionOfOUser: optionOf(user),
          optionOfAdvertisementsFailureOrSuccess: adsFailureOrSucces);
    });
  }
}
