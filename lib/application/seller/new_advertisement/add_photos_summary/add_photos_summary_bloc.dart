import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/seller/new_ad_product.dart';
import 'package:conectacampo/domain/advertisements/seller/new_advertisement.dart';
import 'package:conectacampo/domain/advertisements/seller/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_photos_summary_event.dart';
part 'add_photos_summary_state.dart';
part 'add_photos_summary_bloc.freezed.dart';

@injectable
class AddPhotosSummaryBloc
    extends Bloc<AddPhotosSummaryEvent, AddPhotosSummaryState> {
  AddPhotosSummaryBloc() : super(AddPhotosSummaryState.initial());

  @override
  Stream<AddPhotosSummaryState> mapEventToState(
    AddPhotosSummaryEvent event,
  ) async* {
    yield* event.map(started: (started) async* {
      yield state.copyWith(
          newAdvertisement: started.newAdvertisement,
          showBtnProceed: _showBtnProceed());
    }, itemSelected: (itemSelected) async* {
      yield state.copyWith(
          showBtnProceed: _showBtnProceed(),
          openPhotoIndex: itemSelected.index,
          openPhotoSelection: true);
      yield state.copyWith(
          showBtnProceed: _showBtnProceed(),
          openPhotoIndex: itemSelected.index,
          openPhotoSelection: false);
    }, btnProceedTap: (btnProceedTap) async* {
      yield state.copyWith(proceed: true);
      yield state.copyWith(proceed: false);
    }, photosSelected: (PhotosSelected value) async* {
      state.newAdvertisement.products[value.index].picturesPaths = value.photos;
      yield state.copyWith(
          newAdvertisement:
              state.newAdvertisement.copyWith(products: List.empty()),
          showBtnProceed: _showBtnProceed());
      yield state.copyWith(
          newAdvertisement: state.newAdvertisement
              .copyWith(products: state.newAdvertisement.products),
          showBtnProceed: _showBtnProceed());
    });
  }

  bool _showBtnProceed() {
    if (state.newAdvertisement.products.isEmpty) return false;
    bool allValid = true;
    for (var i = 0; i < state.newAdvertisement.products.length; i++) {
      final product = state.newAdvertisement.products[i];
      if (product.picturesPaths.isEmpty) {
        return false;
      }
    }
    return allValid;
  }
}
