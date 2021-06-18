import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/presentation/buyer/reservation/reservation_widget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'reservation_event.dart';
part 'reservation_state.dart';
part 'reservation_bloc.freezed.dart';

@injectable
class ReservationBloc extends Bloc<ReservationEvent, ReservationState> {
  ReservationBloc() : super(ReservationState.initial());

  @override
  Stream<ReservationState> mapEventToState(
    ReservationEvent event,
  ) async* {
    yield* event.map(
        started: (started) async* {},
        showItemsTapped: (showItemsTapped) async* {
          yield state.copyWith(isItemsVisible: !state.isItemsVisible);
        });
  }
}
