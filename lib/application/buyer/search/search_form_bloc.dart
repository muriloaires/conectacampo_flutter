import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/advertisement_failure.dart';
import 'package:conectacampo/domain/advertisements/i_advertisements_facade.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:conectacampo/domain/products/i_product_facade.dart';
import 'package:conectacampo/domain/products/product.dart';
import 'package:conectacampo/domain/products/product_failure.dart';
import 'package:conectacampo/infrastructure/core/core_extensions.dart';
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
    yield* event.map(
      started: (e) async* {
        yield state.copyWith(searching: true);
        final place = await loadSelectedPlace();
        final productsFailureOrSuccess = await _productFacade.getAllProducts();
        if (place != null) {
          yield state.copyWith(
            optionOfProductsFailureOrSuccess: some(productsFailureOrSuccess),
            place: place,
            filteredProducts:
                productsFailureOrSuccess.fold((l) => [], (r) => r),
            searching: false,
          );
        }
      },
      searchTapped: (SearchTapped value) async* {
        if (value.query.length < 3) {
          return;
        }
        yield state.copyWith(searching: true);
        final place = await loadSelectedPlace();
        if (place != null) {
          final Either<AdvertisementFailure, List<AdProduct>>
              adsProductFailureOrSuccess = await _advertisementsFacade
                  .getAdProducts(place: place, productName: value.query);

          final Either<ProductFailure, Product> productFailureOrSuccess =
              await _productFacade.getProductByName(value.query);

          yield state.copyWith(
            optionOfAdsProductsFailureOrSuccess:
                some(adsProductFailureOrSuccess),
            showFilters: true,
            searching: false,
            optionOfProductFailureOrSuccess: some(productFailureOrSuccess),
          );
          await Future.delayed(Duration(seconds: 3));

          // yield state.copyWith(openSearchDialog: true);
        } else {
          yield state.copyWith(
            searching: false,
            optionOfAdsProductsFailureOrSuccess:
                some(left(const AdvertisementFailure.placeNotFound())),
          );
        }
      },
      historySelected: (HistorySelected value) async* {
        yield state.copyWith(searching: true);
        final place = await loadSelectedPlace();
        if (place != null) {
          final Either<AdvertisementFailure, List<AdProduct>>
              adsProductFailureOrSuccess = await _advertisementsFacade
                  .getAdProducts(place: place, productName: value.query);

          final Either<ProductFailure, Product> productFailureOrSuccess =
              await _productFacade.getProductByName(value.query);
          yield state.copyWith(
              optionOfAdsProductsFailureOrSuccess:
                  some(adsProductFailureOrSuccess),
              showFilters: true,
              searching: false,
              optionOfProductFailureOrSuccess: some(productFailureOrSuccess));
        } else {
          yield state.copyWith(
            searching: false,
            optionOfAdsProductsFailureOrSuccess:
                some(left(const AdvertisementFailure.placeNotFound())),
          );
        }
      },
      onRadioKindTap: (OnRadioKindTap value) async* {
        yield state.copyWith(kindRadioValue: value.index);
      },
      onTapKindFilter: (OnTapKindFilter value) async* {
        yield state.copyWith(isKindsVisible: !state.isKindsVisible);
      },
      onTapRatingFilter: (OnTapRatingFilter value) async* {
        yield state.copyWith(isRatingVisible: !state.isRatingVisible);
      },
      onRadioRatingTap: (OnRadioRatingTap value) async* {
        yield state.copyWith(ratingRadioValue: value.index);
      },
      onProductSelected: (OnProductSelected value) async* {
        yield state.copyWith(
          showFilters: true,
          searching: false,
          optionOfSelectedProduct: some(value.product),
          filteredProducts: [],
          kindRadioValue: 0,
          ratingRadioValue: 0,
        );
      },
      onDateSelected: (OnDateSelected value) async* {
        yield state.copyWith(optionOfDateSelected: some(value.dateSelected));
      },
      onBtnFilterPressed: (OnBtnFilterPressed value) async* {
        final place = await loadSelectedPlace();
        final kind = state.kindRadioValue == 0
            ? null
            : state.optionOfSelectedProduct
                .fold(() => null, (a) => a.kinds[state.kindRadioValue - 1]);
        final rating = state.ratingRadioValue == 0
            ? null
            : state.optionOfSelectedProduct
                .fold(() => null, (a) => a.ratings[state.ratingRadioValue - 1]);
        final dateSelected =
            state.optionOfDateSelected.fold(() => null, (a) => a);
        if (place != null) {
          yield state.copyWith(searching: true);
          final Either<AdvertisementFailure, List<AdProduct>>
              adsProductFailureOrSuccess =
              await _advertisementsFacade.getAdProducts(
            place: place,
            productName:
                state.optionOfSelectedProduct.fold(() => '', (a) => a.name),
            kind: kind,
            rating: rating,
            date: dateSelected?.getDayMonthYear(),
            quantity:
                state.quantity.isNotEmpty ? int.parse(state.quantity) : null,
          );
          yield state.copyWith(
            searching: false,
            showFilters: false,
            optionOfAdsProductsFailureOrSuccess:
                some(adsProductFailureOrSuccess),
          );
        }
      },
      onQtyChanged: (OnQtyChanged value) async* {
        yield state.copyWith(quantity: value.qty);
      },
      nameChanged: (NameChanged value) async* {
        final List<Product> list = state.optionOfProductsFailureOrSuccess.fold(
          () => [],
          (a) => a.fold(
            (l) => [],
            (r) => r
                .where(
                  (element) =>
                      element.name
                          .toLowerCase()
                          .contains(value.newName.toLowerCase()) ||
                      element.synonyms
                          .map((e) => e.toLowerCase())
                          .contains(value.newName.toLowerCase()),
                )
                .toList(),
          ),
        );

        yield state.copyWith(filteredProducts: list, showFilters: false, optionOfSelectedProduct: none());
      },
    );
  }
}
