import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.invalidSmsCode() = InvalidSmsCode;
  const factory AuthFailure.invalidPhoneNumber() = InvalidPhoneNumber;
  const factory AuthFailure.invalidFullName() = InvalidFullName;
  const factory AuthFailure.invalidNickname() = InvalidNickname;
  const factory AuthFailure.invalidVerificationId() = InvalidVerificationId;
  const factory AuthFailure.userNotFound() = UserNotFound;
  const factory AuthFailure.unauthorized() = Unauthorized;
  const factory AuthFailure.applicationError() = ApplicationError;
  const factory AuthFailure.phoneAlreadyUsed() = PhoneAlreadyUsed;
}
