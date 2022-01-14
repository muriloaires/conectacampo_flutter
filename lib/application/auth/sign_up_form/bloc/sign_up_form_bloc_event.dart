part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormBlocEvent with _$SignUpFormBlocEvent {
  const factory SignUpFormBlocEvent.fullNameChanged(String fullName) =
      FullNameChanged;

  const factory SignUpFormBlocEvent.nicknameChanged(String nickname) =
      NicknameChanged;

  const factory SignUpFormBlocEvent.btnSignUpPressed() = BtnSignUpPressed;
  const factory SignUpFormBlocEvent.btnConcluirPressed() = BtnConcluirPressed;
  const factory SignUpFormBlocEvent.btnConcluirEditionPressed() = BtnConcluirEditionPressed;
  const factory SignUpFormBlocEvent.startedWithUser() = StartedWithUser;
  const factory SignUpFormBlocEvent.photoSelected(String path) = PhotoSelected;
}
