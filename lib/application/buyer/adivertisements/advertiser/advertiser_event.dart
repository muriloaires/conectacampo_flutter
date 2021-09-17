part of 'advertiser_bloc.dart';

@freezed
class AdvertiserEvent with _$AdvertiserEvent{
  const factory AdvertiserEvent.started(User user) = _Started;
}
