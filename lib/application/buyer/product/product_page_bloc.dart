import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/advertisement_failure.dart';
import 'package:conectacampo/domain/advertisements/i_advertisements_facade.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:conectacampo/domain/reservation/i_reservation_facade.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/domain/reservation/reservation_failure.dart';
import 'package:conectacampo/domain/reservation/reservation_item.dart';

import 'package:conectacampo/domain/reservation/value_objects.dart';
import 'package:conectacampo/infrastructure/places/place_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_page_event.dart';

part 'product_page_state.dart';

part 'product_page_bloc.freezed.dart';

@injectable
class ProductPageBloc extends Bloc<ProductPageEvent, ProductPageState> {
  ProductPageBloc(this.reservationFacade, this.advertisementsFacade)
      : super(ProductPageState.initial());

  final IReservationFacade reservationFacade;
  final IAdvertisementsFacade advertisementsFacade;

  @override
  Stream<ProductPageState> mapEventToState(
    ProductPageEvent event,
  ) async* {
    yield* event.map(started: (started) async* {
      final product = started.product;
      if (product != null) {
        final reservation =
            await reservationFacade.getReservationItemByProduct(product);
        final adv = await advertisementsFacade
            .getAdvertisement(product.advertisementId);
        final place = await loadSelectedPlace();
        yield state.copyWith(
            product: product.copyWith(
              advertisement: adv.fold((l) => null, (r) => r),
            ),
            reservationItemFailureOrSuccess:
                reservation.fold(() => null, (a) => right(a)),
            place: place);
      }
    }, amountChanged: (amountChanged) async* {
      final amount = state.product?.quantity;
      yield state.copyWith(
          reservationQuantity:
              ReservationQuantity(amountChanged.amount, current: amount),
          showErrorMsg: false,
          reservationItemFailureOrSuccess: null);
    }, onBtnReservationTap: (onBtnReservationTap) async* {
      final product = state.product;
      if (product != null) {
        final reservationItem = ReservationItem.fromAdProduct(product);

        final result = await reservationFacade.insertReservationItemToCart(
          reservationItem.copyWith(
            quantity: int.parse(state.reservationQuantity.getOrCrash()),
          ),
        );

        yield state.copyWith(
            reservationItemFailureOrSuccess: result,
            showErrorMsg: true,
            openCart: result.isRight());

        yield state.copyWith(openCart: false);
      }
    }, onBtnJoinSellerGroupClick: (OnBtnJoinSellerGroupClick value) async* {
      final sellerId = state.product?.advertisement?.seller.ownGroupId;
      if (sellerId != null) {
        yield state.copyWith(joiningSellerGroup: true);
        final result = await advertisementsFacade.joinSellerGroup(sellerId);
        yield state.copyWith(
          joiningSellerGroup: false,
          joinSellerGroupErrorOrSuccess: result,
        );
      }
    });
  }
}
