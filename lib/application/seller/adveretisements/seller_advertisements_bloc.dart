import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/advertisement_failure.dart';
import 'package:conectacampo/domain/advertisements/i_advertisements_facade.dart';
import 'package:conectacampo/infrastructure/places/place_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'seller_advertisements_event.dart';

part 'seller_advertisements_state.dart';

part 'seller_advertisements_bloc.freezed.dart';

@injectable
class SellerAdvertisementsBloc
    extends Bloc<SellerAdvertisementsEvent, SellerAdvertisementsState> {
  SellerAdvertisementsBloc(this.advertisementsFacade)
      : super(SellerAdvertisementsState.initial());

  final IAdvertisementsFacade advertisementsFacade;

  @override
  Stream<SellerAdvertisementsState> mapEventToState(
    SellerAdvertisementsEvent event,
  ) async* {
    yield* event.map(started: (started) async* {
      yield state.copyWith(loading: true);
      final place = await loadSelectedPlace();
      if (place != null) {
        final result = await advertisementsFacade.getSellerAds(place);
        yield state.copyWith(
          sellerAdsFailureOrSuccess: result,
          loading: false,
        );
      }
    }, someExpandedTap: (SomeExpandedTap value) async* {
      yield state.copyWith(someExpanded: value.isExpanded);
    });
  }
}
