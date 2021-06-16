import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'summary_event.dart';
part 'summary_state.dart';
part 'summary_bloc.freezed.dart';

class SummaryBloc extends Bloc<SummaryEvent, SummaryState> {
  SummaryBloc() : super(_Initial());

  @override
  Stream<SummaryState> mapEventToState(
    SummaryEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
