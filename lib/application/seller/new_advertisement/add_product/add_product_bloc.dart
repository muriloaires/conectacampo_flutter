import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/seller/new_ad_product.dart';
import 'package:conectacampo/domain/advertisements/seller/new_advertisement.dart';
import 'package:conectacampo/domain/advertisements/seller/value_objects.dart';
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
    yield* event.map(
      started: (started) async* {
        yield state.copyWith(
          isLoading: true,
          newAdvertisement: started.newAdvertisement,
        );
        final productsFailureOrSuccess = await _productFacade.getAllProducts();
        yield state.copyWith(
          optionProductsFailureOrSuccess: some(productsFailureOrSuccess),
          isLoading: false,
        );
      },
      productSelected: (ProductSelected value) async* {
        if (value.product != null) {
          final currentProducts = state.newAdvertisement.products;
          currentProducts[value.index].newAdProduct = value.product;
          currentProducts[value.index].newAdProductKind = null;
          currentProducts[value.index].newAdProductRating = null;
          currentProducts[value.index].newAdProductUnitMeasure = null;
          yield state.copyWith(
            newAdvertisement:
                state.newAdvertisement.copyWith(products: List.empty()),
          );
          yield state.copyWith(
            newAdvertisement:
                state.newAdvertisement.copyWith(products: currentProducts),
            showBtnProceed: _showBtnProceed(),
          );
        }
      },
      kindSelected: (KindSelected value) async* {
        if (value.kindSelected != null) {
          final currentProducts = state.newAdvertisement.products;
          currentProducts[value.index].newAdProductKind =
              NewAdProductKind(value.kindSelected!);
          yield state.copyWith(
            newAdvertisement:
                state.newAdvertisement.copyWith(products: List.empty()),
          );
          yield state.copyWith(
            newAdvertisement:
                state.newAdvertisement.copyWith(products: currentProducts),
            showBtnProceed: _showBtnProceed(),
          );
        }
      },
      ratingSelected: (RatingSelected value) async* {
        if (value.ratingSelected != null) {
          final currentProducts = state.newAdvertisement.products;
          currentProducts[value.index].newAdProductRating =
              NewAdProductRating(value.ratingSelected!);
          yield state.copyWith(
            newAdvertisement:
                state.newAdvertisement.copyWith(products: List.empty()),
          );
          yield state.copyWith(
            newAdvertisement:
                state.newAdvertisement.copyWith(products: currentProducts),
            showBtnProceed: _showBtnProceed(),
          );
        }
      },
      unitMeasureSelected: (UnitMeasureSelected value) async* {
        if (value.unitMeasureSelected != null) {
          final currentProducts = state.newAdvertisement.products;
          currentProducts[value.index].newAdProductUnitMeasure =
              value.unitMeasureSelected;

          yield state.copyWith(
            newAdvertisement:
                state.newAdvertisement.copyWith(products: List.empty()),
          );
          yield state.copyWith(
            newAdvertisement:
                state.newAdvertisement.copyWith(products: currentProducts),
            showBtnProceed: _showBtnProceed(),
          );
        }
      },
      addMoreTap: (AddMoreTap value) async* {
        bool allValid = true;

        for (var i = 0; i < state.newAdvertisement.products.length; i++) {
          final product = state.newAdvertisement.products[i];
          if (!product.isValid()) {
            allValid = false;
            break;
          }
        }

        if (allValid) {
          var currentProducts = state.newAdvertisement.products;
          currentProducts.add(NewAdProduct());
          yield state.copyWith(
            newAdvertisement:
                state.newAdvertisement.copyWith(products: List.empty()),
          );
          yield state.copyWith(
            newAdvertisement:
                state.newAdvertisement.copyWith(products: currentProducts),
            showBtnProceed: _showBtnProceed(),
          );
        } else {
          yield state.copyWith(showErrors: true);
        }
      },
      quantityChanged: (QuantityChanged value) async* {
        if (value.quantity.isNotEmpty) {
          final currentProducts = state.newAdvertisement.products;
          currentProducts[value.index].newAdProductQuantity =
              NewAdProductQuantity(int.parse(value.quantity));
          yield state.copyWith(
            newAdvertisement:
                state.newAdvertisement.copyWith(products: List.empty()),
          );
          yield state.copyWith(
            newAdvertisement:
                state.newAdvertisement.copyWith(products: currentProducts),
            showBtnProceed: _showBtnProceed(),
          );
        }
      },
      btnProceedTap: (BtnProceedTap value) async* {
        yield state.copyWith(proceed: true);
        yield state.copyWith(proceed: false);
      },
      observationChanged: (ObservationChanged value) async* {
        state.newAdvertisement.products[value.index].newAdProductObservation =
            NewAdProductObservation(value.observation);
      },
    );
  }

  bool _showBtnProceed() {
    bool allValid = true;
    for (var i = 0; i < state.newAdvertisement.products.length; i++) {
      final product = state.newAdvertisement.products[i];
      if (!product.isValid()) {
        return false;
      }
    }
    return allValid;
  }
}
