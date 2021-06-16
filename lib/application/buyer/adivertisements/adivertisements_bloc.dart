import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/application/places_form/bloc/places_form_bloc.dart';
import 'package:conectacampo/presentation/buyer/widgets/advertisements.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'adivertisements_event.dart';
part 'adivertisements_state.dart';
part 'adivertisements_bloc.freezed.dart';

@injectable
class AdivertisementsBloc
    extends Bloc<AdivertisementsEvent, AdivertisementsState> {
  AdivertisementsBloc() : super(AdivertisementsState.demo());

  @override
  Stream<AdivertisementsState> mapEventToState(
    AdivertisementsEvent event,
  ) async* {
    yield* event.map(expandedChanged: (expandedChanged) async* {
      state.ads[expandedChanged.index].isExpanded = expandedChanged.isExpanded;
      var newList = List<Advertising>.from(state.ads);
      yield state.copyWith(ads: newList);
    });
  }
}
