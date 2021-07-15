import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/reservation/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_page_event.dart';
part 'product_page_state.dart';
part 'product_page_bloc.freezed.dart';

@injectable
class ProductPageBloc extends Bloc<ProductPageEvent, ProductPageState> {
  ProductPageBloc() : super(ProductPageState.initial());

  @override
  Stream<ProductPageState> mapEventToState(
    ProductPageEvent event,
  ) async* {
    yield* event.map(
        started: (started) async* {},
        ammountChanged: (ammountChanged) async* {
          yield state.copyWith(
              reservationQuantity: ReservationQuantity(ammountChanged.ammount));
        },
        onBtnReservationTap: (onBtnReservationTap) async* {});
  }
}
