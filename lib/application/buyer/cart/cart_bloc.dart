import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/reservation/i_reservation_facade.dart';
import 'package:conectacampo/domain/reservation/reservation_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc(this.reservationFacade) : super(CartState.initial());

  final IReservationFacade reservationFacade;

  @override
  Stream<CartState> mapEventToState(
    CartEvent event,
  ) async* {
    yield* event.map(started: (started) async* {
      final itemsInCart = await reservationFacade.getItemsInCart();
      yield state.copyWith(itemsInCart: itemsInCart);
    }, onBtnDeleteTap: (OnBtnDeleteTap value) async* {
      await reservationFacade.removeReservationItem(value.reservationItem);
      final itemsInCart = await reservationFacade.getItemsInCart();
      yield state.copyWith(itemsInCart: itemsInCart);
    });
  }
}
