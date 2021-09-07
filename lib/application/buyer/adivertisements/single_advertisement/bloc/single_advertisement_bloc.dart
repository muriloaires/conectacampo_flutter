import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'single_advertisement_event.dart';
part 'single_advertisement_state.dart';
part 'single_advertisement_bloc.freezed.dart';

class SingleAdvertisementBloc extends Bloc<SingleAdvertisementEvent, SingleAdvertisementState> {
  SingleAdvertisementBloc() : super(_Initial());

  @override
  Stream<SingleAdvertisementState> mapEventToState(
    SingleAdvertisementEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
