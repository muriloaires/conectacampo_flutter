import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/i_advertisements_facade.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:conectacampo/infrastructure/places/place_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'advertiser_bloc.freezed.dart';

part 'advertiser_event.dart';

part 'advertiser_state.dart';

@injectable
class AdvertiserBloc extends Bloc<AdvertiserEvent, AdvertiserState> {
  AdvertiserBloc(this.advertisementsFacade) : super(AdvertiserState.initial());

  final IAdvertisementsFacade advertisementsFacade;

  @override
  Stream<AdvertiserState> mapEventToState(
    AdvertiserEvent event,
  ) async* {
    yield* event.map(started: (started) async* {
      yield state.copyWith(seller: started.user);
      final sellerId = started.user?.id;
      if (sellerId != null) {
        final advertisementFailureOrSuccess =
            await advertisementsFacade.getSellerAdsBySellerId(sellerId);

        yield* advertisementFailureOrSuccess.fold((l) async* {}, (r) async* {
          yield state.copyWith(
              seller: state.seller
                  ?.copyWith(lastAdvertisement: r.isEmpty ? null : r.first));
        });
      }
    });
  }
}
