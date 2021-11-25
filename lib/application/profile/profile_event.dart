part of 'profile_bloc.dart';

@freezed
class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.started() = _Started;
  const factory ProfileEvent.onNotificationSwitchTapped(bool value) = OnNotificationSwitchTapped;

}