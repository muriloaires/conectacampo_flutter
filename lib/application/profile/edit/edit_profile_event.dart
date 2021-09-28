part of 'edit_profile_bloc.dart';

@freezed
class EditProfileEvent with _$EditProfileEvent{
  const factory EditProfileEvent.started() = _Started;
  const factory EditProfileEvent.floatingActionButtonPressed() = FloatingActionButtonPressed;
  factory EditProfileEvent.nicknameChanged(String nickname) = NicknameChanged;
  factory EditProfileEvent.fullNameChanged(String fullName) = FullNameChanged;
  factory EditProfileEvent.emailChanged(String email) = EmailChanged;

}
