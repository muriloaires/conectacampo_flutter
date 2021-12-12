import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/i_advertisements_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'single_advertisement_event.dart';

part 'single_advertisement_state.dart';

part 'single_advertisement_bloc.freezed.dart';

@injectable
class SingleAdvertisementBloc
    extends Bloc<SingleAdvertisementEvent, SingleAdvertisementState> {
  SingleAdvertisementBloc(this._adsFacade)
      : super(SingleAdvertisementState.initial());

  final IAdvertisementsFacade _adsFacade;

  @override
  Stream<SingleAdvertisementState> mapEventToState(
      SingleAdvertisementEvent event) async* {
    yield* event.map(started: (started) async* {
      yield state.copyWith(advertisement: started.advertisement);
      final lastAd = await _adsFacade.getSellerAdsBySellerId(started.advertisement.seller.id);
      yield* lastAd.fold((l) async* {}, (r) async* {
        yield state.copyWith(lastSellerAd: r.first);
      });
    });
  }
}
