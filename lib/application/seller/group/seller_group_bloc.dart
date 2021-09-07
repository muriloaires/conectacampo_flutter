import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/reservation/i_reservation_facade.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/domain/reservation/reservation_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'seller_group_event.dart';
part 'seller_group_state.dart';
part 'seller_group_bloc.freezed.dart';

@injectable
class SellerGroupBloc extends Bloc<SellerGroupEvent, SellerGroupState> {
  SellerGroupBloc(this.reservationFacade) : super(SellerGroupState.initial());

  final IReservationFacade reservationFacade;

  @override
  Stream<SellerGroupState> mapEventToState(
    SellerGroupEvent event,
  ) async* {
    yield* event.map(started: (started) async* {
      //load reservations
      final reservations = await reservationFacade.getSellerGroupReservations();
      yield state.copyWith(groupReservations: reservations);
    });
  }
}

class BuyerReservations {
  final User user;
  final List<Reservation> reservations;
  BuyerReservations(this.user, this.reservations);
}

List<BuyerReservations> createBuyerReservations(
    List<Reservation> reservations) {
  reservations.sort((a, b) => a.id!.compareTo(b.id!));
  var id = '';
  final List<List<Reservation>> listOfLists = [];
  List<Reservation> aux = [];

  for (final element in reservations) {
    if (element.buyer.id.getOrCrash() == id) {
      aux.add(element);
    } else {
      if (aux.isNotEmpty) {
        listOfLists.add(aux);
      }
      aux = [];
      id = element.buyer.id.getOrCrash();
      aux.add(element);
    }
  }
  listOfLists.add(aux);

  final List<BuyerReservations> returnList = [];
  for (final element in listOfLists) {
    if (element.isNotEmpty) {
      returnList.add(BuyerReservations(element.first.buyer, element));
    }
  }

  return returnList;
}
