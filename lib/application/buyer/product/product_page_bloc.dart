import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
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
  ProductPageBloc(this.reservationFacade) : super(ProductPageState.initial());

  final IReservationFacade reservationFacade;

  @override
  Stream<ProductPageState> mapEventToState(
    ProductPageEvent event,
  ) async* {
    yield* event.map(started: (started) async* {
      final reservation =
          await reservationFacade.getReservationItemByProduct(started.product);

      final place = await loadSelectedPlace();
      yield state.copyWith(
          reservationItemFailureOrSuccess:
              reservation.fold(() => null, (a) => right(a)),
          place: place);
    }, amountChanged: (amountChanged) async* {
      yield state.copyWith(
          reservationQuantity: ReservationQuantity(amountChanged.amount),
          showErrorMsg: false,
          reservationItemFailureOrSuccess: null);
    }, onBtnReservationTap: (onBtnReservationTap) async* {
      final reservationItem =
          ReservationItem.fromAdProduct(onBtnReservationTap.product);

      final result = await reservationFacade.insertReservationItemToCart(
          reservationItem.copyWith(
              quantity: int.parse(state.reservationQuantity.getOrCrash())));

      yield state.copyWith(
          reservationItemFailureOrSuccess: result,
          showErrorMsg: true,
          openCart: true);

      yield state.copyWith(openCart: false);
    });
  }
}
