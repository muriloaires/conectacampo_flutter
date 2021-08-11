import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/reservation/i_reservation_facade.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/domain/reservation/reservation_failure.dart';
import 'package:conectacampo/domain/reservation/reservation_item.dart';
import 'package:conectacampo/presentation/buyer/reservation/reservation_widget.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'reservation_event.dart';
part 'reservation_state.dart';
part 'reservation_bloc.freezed.dart';

@injectable
class ReservationBloc extends Bloc<ReservationEvent, ReservationState> {
  ReservationBloc(this.reservationFacade) : super(ReservationState.initial());

  final IReservationFacade reservationFacade;

  @override
  Stream<ReservationState> mapEventToState(
    ReservationEvent event,
  ) async* {
    yield* event.map(started: (started) async* {
      yield state.copyWith(loading: true);
      final successOrFailure =
          await reservationFacade.getCurrentUserReservations();
      yield state.copyWith(
          optionOfReservationListFailureOrSuccess: some(successOrFailure),
          loading: false);
    }, showItemsTapped: (showItemsTapped) async* {
      yield state.copyWith(isItemsVisible: !state.isItemsVisible);
    });
  }
}
