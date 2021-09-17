import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/advertisement_failure.dart';
import 'package:conectacampo/domain/advertisements/i_advertisements_facade.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'single_advertisement_event.dart';
part 'single_advertisement_state.dart';
part 'single_advertisement_bloc.freezed.dart';

@injectable
class SingleAdvertisementBloc
    extends Bloc<SingleAdvertisementEvent, SingleAdvertisementState> {
  SingleAdvertisementBloc(this.advertisementsFacade)
      : super(SingleAdvertisementState.initial());

  final IAdvertisementsFacade advertisementsFacade;

  @override
  Stream<SingleAdvertisementState> mapEventToState(
    SingleAdvertisementEvent event,
  ) async* {
    yield* event.map(
        started: (started) async* {},
        onCancelAdPressed: (onCancelAdPressed) async* {
          yield state.copyWith(canceling: true);
          final result = await advertisementsFacade
              .deleteAd(onCancelAdPressed.advertisement);
          yield state.copyWith(
              canceling: false, optionOfDeleteAdFailureOrSuccess: some(result));
        },
        onItemExapandPressed: (onItemExapandPressed) async* {
          yield state.copyWith(isItemVisible: !state.isItemVisible);
        });
  }
}
