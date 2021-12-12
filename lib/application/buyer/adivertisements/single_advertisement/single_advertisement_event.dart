part of 'single_advertisement_bloc.dart';

@freezed
class SingleAdvertisementEvent with _$SingleAdvertisementEvent {
  const factory SingleAdvertisementEvent.started(Advertisement advertisement) = Started;
}
