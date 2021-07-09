import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/advertisement_failure.dart';
import 'package:conectacampo/domain/advertisements/i_advertisements_facade.dart';
import 'package:conectacampo/domain/advertisements/seller/new_ad_product.dart';
import 'package:conectacampo/domain/advertisements/seller/new_advertisement.dart';
import 'package:conectacampo/domain/advertisements/seller/value_objects.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'new_ad_summary_event.dart';
part 'new_ad_summary_state.dart';
part 'new_ad_summary_bloc.freezed.dart';

@injectable
class NewAdSummaryBloc extends Bloc<NewAdSummaryEvent, NewAdSummaryState> {
  NewAdSummaryBloc(this.advertisementsFacade)
      : super(NewAdSummaryState.initial());

  final IAdvertisementsFacade advertisementsFacade;
//  UniqueId id,
//       FullName name,
//       Nickname nickname,
//       String? vehicleLicensePlate,
//       PhoneNumber phoneNumber,
//       ThumbAvatar? thumbAvatar,
//       MediumAvatar? mediumAvatar,
//       OriginalAvatar? originalAvatar
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
      yield state.copyWith(loading: true);
      await Future.delayed(const Duration(seconds: 2));
      final Either<AdvertisementFailure, Advertisement>
          newAdvertisementFailureOrSuccess;

      newAdvertisementFailureOrSuccess = await advertisementsFacade
          .publishAdvertisement(state.newAdvertisement);
      yield state.copyWith(
          loading: false,
          optionOfAdvertisementFailureOrSucess:
              some(newAdvertisementFailureOrSuccess));
    });
  }
}
