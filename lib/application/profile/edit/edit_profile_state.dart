part of 'edit_profile_bloc.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState({
    required FullName fullName,
    required Nickname nickname,
    required Email email,
    required bool showProgress,
    required Option<Either<AuthFailure, User>>
        optionOfUserUpdateSuccessOrFailure,
  }) = _EditProfileState;

  factory EditProfileState.initial() => EditProfileState(
        fullName: FullName(''),
        email: Email(''),
        nickname: Nickname(''),
        showProgress: false,
        optionOfUserUpdateSuccessOrFailure: none(),
      );
}
