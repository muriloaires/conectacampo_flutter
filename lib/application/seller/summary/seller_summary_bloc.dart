import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'seller_summary_event.dart';
part 'seller_summary_state.dart';
part 'seller_summary_bloc.freezed.dart';

@injectable
class SellerSummaryBloc extends Bloc<SellerSummaryEvent, SellerSummaryState> {
  SellerSummaryBloc() : super(_Initial());

  @override
  Stream<SellerSummaryState> mapEventToState(
    SellerSummaryEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
