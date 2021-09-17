import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/i_advertisements_facade.dart';
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'search_result_bloc.freezed.dart';

part 'search_result_event.dart';

part 'search_result_state.dart';

@injectable
class SearchResultBloc extends Bloc<SearchResultEvent, SearchResultState> {
  SearchResultBloc(this.advertisementsFacade)
      : super(SearchResultState.initial());

  final IAdvertisementsFacade advertisementsFacade;

  @override
  Stream<SearchResultState> mapEventToState(
    SearchResultEvent event,
  ) async* {
    yield* event.map(started: (started) async* {
      yield state.copyWith(adProduct: started.product);
      final advertisementFailureOrSuccess = await advertisementsFacade
          .getAdvertisement(started.product.advertisementId);

      yield* advertisementFailureOrSuccess.fold((l) async* {}, (r) async* {
        yield state.copyWith(
            adProduct: state.adProduct.copyWith(advertisement: r));
      });
    });
  }
}
