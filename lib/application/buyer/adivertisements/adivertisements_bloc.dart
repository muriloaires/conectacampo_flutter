import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/reservation/i_advertisements_facade.dart';
import 'package:conectacampo/presentation/buyer/widgets/advertisements.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'adivertisements_event.dart';
part 'adivertisements_state.dart';
part 'adivertisements_bloc.freezed.dart';

@injectable
class AdivertisementsBloc
    extends Bloc<AdivertisementsEvent, AdivertisementsState> {
  AdivertisementsBloc(this._advertisementsFacade)
      : super(AdivertisementsState.demo());

  final IAdvertisementsFacade _advertisementsFacade;

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
