part of 'ad_detail_bloc.dart';

@freezed
class AdDetailEvent with _$AdDetailEvent {

  const factory AdDetailEvent.started(int adId) = _Started;

}
