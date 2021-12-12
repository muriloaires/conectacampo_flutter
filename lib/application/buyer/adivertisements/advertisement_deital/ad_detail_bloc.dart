import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/i_advertisements_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'ad_detail_event.dart';

part 'ad_detail_state.dart';

part 'ad_detail_bloc.freezed.dart';

@injectable
class AdDetailBloc extends Bloc<AdDetailEvent, AdDetailState> {
  AdDetailBloc(this._advertisementsFacade) : super(AdDetailState.initial());

  final IAdvertisementsFacade _advertisementsFacade;
  @override
  Stream<AdDetailState> mapEventToState(AdDetailEvent event) async* {
    yield* event.map(started: (started) async* {
        yield state.copyWith(loadingAd: true);
        final adv = await _advertisementsFacade.getAdvertisement(started.adId);
        yield* adv.fold((l) async* {}, (r) async* {
          yield state.copyWith(loadingAd: false, advertisement: r);
        } );
    });
  }
}
