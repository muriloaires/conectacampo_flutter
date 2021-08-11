import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:conectacampo/domain/reservation/product_reservation.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'seller_reservation_event.dart';
part 'seller_reservation_state.dart';
part 'seller_reservation_bloc.freezed.dart';

@injectable
class SellerReservationBloc
    extends Bloc<SellerReservationEvent, SellerReservationState> {
  SellerReservationBloc() : super(SellerReservationState.initial());

  @override
  Stream<SellerReservationState> mapEventToState(
    SellerReservationEvent event,
  ) async* {
    yield* event.map(
        started: (started) async* {
          yield state.copyWith(reservation: started.reservation);
        },
        finish: (Finish value) async* {},
        quantityEdited: (QuantityEdited value) async* {
          final product = state.reservation.productReservations[value.index]
              .copyWith(quantity: value.newQuantity);

          state.reservation.productReservations[value.index] = product;
          yield state.copyWith(reservation: state.reservation, update: true);
        });
  }
}
