import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/products/i_product_facade.dart';
import 'package:conectacampo/domain/products/product.dart';
import 'package:conectacampo/domain/products/product_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'add_product_event.dart';
part 'add_product_state.dart';
part 'add_product_bloc.freezed.dart';

@injectable
class AddProductBloc extends Bloc<AddProductEvent, AddProductState> {
  AddProductBloc(this._productFacade) : super(AddProductState.initial());

  final IProductFacade _productFacade;
  @override
  Stream<AddProductState> mapEventToState(
    AddProductEvent event,
  ) async* {
    yield* event.map(started: (started) async* {
      yield state.copyWith(isLoading: true);
      final productsFailureOrSuccess = await _productFacade.getAllProducts();
      yield state.copyWith(
          optionProductsFailureOrSuccess: some(productsFailureOrSuccess),
          isLoading: false);
    }, productSelected: (ProductSelected value) async* {
      yield state.copyWith(optionOfProductSelected: optionOf(value.product));
    }, kindSelected: (KindSelected value) async* {
      yield state.copyWith(optionOfKindSelected: optionOf(value.kindSelected));
    }, ratingSelected: (RatingSelected value) async* {
      yield state.copyWith(
          optionOfRatingSelected: optionOf(value.ratingSelected));
    }, unitMeasureSelected: (UnitMeasureSelected value) async* {
      yield state.copyWith(
          optionOfUnitMeasureSelected: optionOf(value.unitMeasureSelected));
    });
  }
}
