import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/reservation/i_reservation_facade.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/domain/reservation/reservation_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'summary_reservations_event.dart';

part 'summary_reservations_state.dart';

part 'summary_reservations_bloc.freezed.dart';

@injectable
class SummaryReservationsBloc
    extends Bloc<SummaryReservationsEvent, SummaryReservationsState> {
  SummaryReservationsBloc(this.reservationFacade)
      : super(SummaryReservationsState.initial());

  final IReservationFacade reservationFacade;

  @override
  Stream<SummaryReservationsState> mapEventToState(
    SummaryReservationsEvent event,
  ) async* {
    yield* event.map(started: (started) async* {
      yield state.copyWith(loading: true, optionOfReservationsFailureOrSuccess: none());

      final reservationsSuccessOrFailure =
          await reservationFacade.getSellerReservations();
      yield state.copyWith(
          loading: false,
          optionOfReservationsFailureOrSuccess:
              some(reservationsSuccessOrFailure));
    });
  }
}
