import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/seller/new_ad_product.dart';
import 'package:conectacampo/domain/advertisements/seller/new_advertisement.dart';
import 'package:conectacampo/domain/advertisements/seller/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'new_ad_summary_event.dart';
part 'new_ad_summary_state.dart';
part 'new_ad_summary_bloc.freezed.dart';

@injectable
class NewAdSummaryBloc extends Bloc<NewAdSummaryEvent, NewAdSummaryState> {
  NewAdSummaryBloc() : super(NewAdSummaryState.initial());

  @override
  Stream<NewAdSummaryState> mapEventToState(
    NewAdSummaryEvent event,
  ) async* {
    yield* event.map(started: (started) async* {
      yield state.copyWith(newAdvertisement: started.newAdvertisement);
    }, editTap: (editTap) async* {
      yield state.copyWith(editIndex: editTap.index, openEdit: true);
      yield state.copyWith(editIndex: editTap.index, openEdit: false);
    }, addItemsTap: (addItemsTap) async* {
      yield state.copyWith(addItems: true);
      yield state.copyWith(addItems: false);
    }, finish: (finish) async* {
      yield state.copyWith(finish: true);
    });
  }
}
