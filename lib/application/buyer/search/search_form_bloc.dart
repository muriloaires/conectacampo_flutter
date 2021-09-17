import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/advertisement_failure.dart';
import 'package:conectacampo/domain/advertisements/i_advertisements_facade.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:conectacampo/domain/products/i_product_facade.dart';
import 'package:conectacampo/domain/products/product.dart';
import 'package:conectacampo/domain/products/product_failure.dart';
import 'package:conectacampo/infrastructure/places/place_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_form_bloc.freezed.dart';

part 'search_form_event.dart';

part 'search_form_state.dart';

@injectable
class SearchFormBloc extends Bloc<SearchFormEvent, SearchFormState> {
  SearchFormBloc(this._advertisementsFacade, this._productFacade)
      : super(SearchFormState.initial());

  final IAdvertisementsFacade _advertisementsFacade;
  final IProductFacade _productFacade;

  @override
  Stream<SearchFormState> mapEventToState(
    SearchFormEvent event,
  ) async* {
    yield* event.map(started: (e) async* {
      final place = await loadSelectedPlace();
      final history = await _advertisementsFacade.getSearchedNames();
      if (place != null) {
        yield state.copyWith(place: place, history: history, showHistory: true);
      }
    }, productSelected: (e) async* {
      yield state.copyWith(productSelected: true);
      state.copyWith(productSelected: false);
    }, searchTapped: (SearchTapped value) async* {
      if (value.query.length < 3) {
        return;
      }
      yield state.copyWith(
          productSelected: false, searching: true, showHistory: false);
      final place = await loadSelectedPlace();
      if (place != null) {
        final Either<AdvertisementFailure, List<AdProduct>>
            adsProductFailureOrSuccess = await _advertisementsFacade.getProduct(
                place: place, productName: value.query);

        final Either<ProductFailure, Product> productFailureOrSuccess =
            await _productFacade.getProductByName(value.query);

        yield state.copyWith(
            optionOfAdsProductsFailureOrSuccess:
                some(adsProductFailureOrSuccess),
            showFilters: true,
            searching: false,
            showHistory: false,
            optionOfProductFailureOrSuccess: some(productFailureOrSuccess));
      } else {
        yield state.copyWith(
          searching: false,
          optionOfAdsProductsFailureOrSuccess:
              some(left(const AdvertisementFailure.placeNotFound())),
        );
      }
    }, historySelected: (HistorySelected value) async* {
      yield state.copyWith(
          productSelected: false, searching: true, showHistory: false);
      final place = await loadSelectedPlace();
      if (place != null) {
        final Either<AdvertisementFailure, List<AdProduct>>
            adsProductFailureOrSuccess = await _advertisementsFacade.getProduct(
                place: place, productName: value.query);

        final Either<ProductFailure, Product> productFailureOrSuccess =
            await _productFacade.getProductByName(value.query);
        yield state.copyWith(
            optionOfAdsProductsFailureOrSuccess:
                some(adsProductFailureOrSuccess),
            showFilters: true,
            searching: false,
            showHistory: false,
            optionOfProductFailureOrSuccess: some(productFailureOrSuccess));
      } else {
        yield state.copyWith(
          searching: false,
          optionOfAdsProductsFailureOrSuccess:
              some(left(const AdvertisementFailure.placeNotFound())),
        );
      }
    }, onRadioKindTap: (OnRadioKindTap value) async* {
      yield state.copyWith(kindRadioValue: value.index);
    }, onTapKindFilter: (OnTapKindFilter value) async* {
      yield state.copyWith(isKindsVisible: !state.isKindsVisible);
    }, onTapRatingFilter: (OnTapRatingFilter value) async* {
      yield state.copyWith(isRatingVisible: !state.isRatingVisible);
    }, onRadioRatingTap: (OnRadioRatingTap value) async* {
      yield state.copyWith(ratingRadioValue: value.index);
    });
  }
}
