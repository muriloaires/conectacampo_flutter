import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'seller_menu_event.dart';
part 'seller_menu_state.dart';
part 'seller_menu_bloc.freezed.dart';

@injectable
class SellerMenuBloc extends Bloc<SellerMenuEvent, SellerMenuState> {
  SellerMenuBloc() : super(SellerMenuState.initial());

  @override
  Stream<SellerMenuState> mapEventToState(
    SellerMenuEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
