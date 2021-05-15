part of 'sign_up_form_bloc.dart';

@freezed
abstract class SignUpFormBlocState with _$SignUpFormBlocState {
  const factory SignUpFormBlocState({
    @required bool isSubmitting,
    @required FullName fullName,
    @required Nickname nickname,
    @required bool showErrorMessages,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccessOption,
  }) = _SignUpFormBlocState;

  factory SignUpFormBlocState.initial() => SignUpFormBlocState(
      isSubmitting: false,
      fullName: FullName(''),
      nickname: Nickname(''),
      showErrorMessages: false,
      authFailureOrSuccessOption: none());
}
