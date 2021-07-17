import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/reservation/i_reservation_facade.dart';
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
          await reservationFacade.getReservatiomItemByProduct(started.product);
      yield state.copyWith(optionOfReservatiomItem: reservation);
    }, ammountChanged: (ammountChanged) async* {
      yield state.copyWith(
          reservationQuantity: ReservationQuantity(ammountChanged.ammount),
          setInitialQuantity: false);
    }, onBtnReservationTap: (onBtnReservationTap) async* {
      final reservatiomItem =
          ReservationItem.fromAdProduct(onBtnReservationTap.product);

      final result = await reservationFacade.insertReservationItemToCart(
          reservatiomItem.copyWith(
              quantity: int.parse(state.reservationQuantity.getOrCrash())));
      await Future.delayed(const Duration(seconds: 1));
      yield state.copyWith(optionOfReservatiomItem: result, back: true);
    });
  }
}
