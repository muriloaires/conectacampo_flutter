part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormBlocEvent with _$SignUpFormBlocEvent {
  const factory SignUpFormBlocEvent.fullNameChanged(String fullName) =
      FullNameChanged;

  const factory SignUpFormBlocEvent.nicknameChanged(String nickname) =
      NicknameChanged;

  const factory SignUpFormBlocEvent.btnSignUpPressed() = BtnSignUpPressed;
}
