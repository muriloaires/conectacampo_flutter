import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/seller/new_ad_product.dart';
import 'package:conectacampo/domain/products/product.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_photo_event.dart';
part 'add_photo_state.dart';
part 'add_photo_bloc.freezed.dart';

@injectable
class AddPhotoBloc extends Bloc<AddPhotoEvent, AddPhotoState> {
  AddPhotoBloc() : super(AddPhotoState.initial());

  @override
  Stream<AddPhotoState> mapEventToState(
    AddPhotoEvent event,
  ) async* {
    yield* event.map(started: (started) async* {
      yield state.copyWith(
          product: started.product, photos: started.product.picturesPaths);
    }, photoSelected: (PhotoSelected value) async* {
      final list = List.of(state.photos);
      list.add(value.path);
      yield state.copyWith(photos: List.empty());
      yield state.copyWith(photos: list);
    });
  }
}
