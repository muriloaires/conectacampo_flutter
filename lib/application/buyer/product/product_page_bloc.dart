import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/reservation/i_reservation_facade.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/domain/reservation/reservation_failure.dart';
import 'package:conectacampo/domain/reservation/reservation_item.dart';

import 'package:conectacampo/domain/reservation/value_objects.dart';
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
      yield state.copyWith(
          optionOfReservatiomItemFailureOrSuccess:
              reservation.fold(() => none(), (a) => some(right(a))));
    }, ammountChanged: (ammountChanged) async* {
      yield state.copyWith(
          reservationQuantity: ReservationQuantity(ammountChanged.ammount),
          setInitialQuantity: false,
          showErrorMsg: false);
    }, onBtnReservationTap: (onBtnReservationTap) async* {
      final reservatiomItem =
          ReservationItem.fromAdProduct(onBtnReservationTap.product);

      final result = await reservationFacade.insertReservationItemToCart(
          reservatiomItem.copyWith(
              quantity: int.parse(state.reservationQuantity.getOrCrash())));

      yield state.copyWith(
          optionOfReservatiomItemFailureOrSuccess: some(result),
          back: result.isRight(),
          showInserted: result.isRight(),
          showErrorMsg: true);
    });
  }
}
