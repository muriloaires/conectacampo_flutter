import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/advertisement_failure.dart';
import 'package:conectacampo/domain/advertisements/i_advertisements_facade.dart';
import 'package:conectacampo/infrastructure/places/place_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'group_event.dart';

part 'group_state.dart';

part 'group_bloc.freezed.dart';

@injectable
class GroupBloc extends Bloc<GroupEvent, GroupState> {
  GroupBloc(this.iAdvertisementsFacade) : super(GroupState.initial());

  final IAdvertisementsFacade iAdvertisementsFacade;

  @override
  Stream<GroupState> mapEventToState(
    GroupEvent event,
  ) async* {
    yield* event.map(started: (started) async* {
      yield state.copyWith(loading: true);
      final successOrFailure = await iAdvertisementsFacade.getGroupsAds();
      yield state.copyWith(
          loading: false,
          optionOfGroupsAdsSuccessOrFailure: some(successOrFailure));
    }, onSearchTapped: (OnSearchTapped value) async* {
      yield state.copyWith(openSearch: true);
      yield state.copyWith(openSearch: false);
    });
  }
}
