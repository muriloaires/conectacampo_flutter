import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/reservation/i_reservation_facade.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/domain/reservation/reservation_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'summary_event.dart';
part 'summary_state.dart';
part 'summary_bloc.freezed.dart';

@injectable
class SummaryBloc extends Bloc<SummaryEvent, SummaryState> {
  SummaryBloc(this.reservationFacade) : super(SummaryState.initial());

  final IReservationFacade reservationFacade;

  @override
  Stream<SummaryState> mapEventToState(
    SummaryEvent event,
  ) async* {
    yield* event.map(
        started: (started) async* {},
        onCancelReservationPressed: (onCancelReservationPressed) async* {
          yield state.copyWith(cancellingReservation: true);
          final cancelResult = await reservationFacade
              .cancelReservation(onCancelReservationPressed.reservation);
          yield state.copyWith(
              cancellingReservation: false,
              optionOfReservationCancelFailureOrSuccess: some(cancelResult));
          yield state.copyWith(
              optionOfReservationCancelFailureOrSuccess: none());
        });
  }
}
