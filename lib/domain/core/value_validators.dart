import 'package:conectacampo/domain/core/failures.dart';
import 'package:dartz/dartz.dart';

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  final formated =
      input.replaceAll("(", "").replaceAll(")", "").replaceAll(" ", "");
  if (formated.isEmpty || formated.length != 12) {
    return left(ValueFailure.invalidPhoneNumber(failedValue: formated));
  } else {
    return right(formated);
  }
}

Either<ValueFailure<String>, String> validateSmsCode(String input) {
  if (input.length != 6) {
    return left(ValueFailure.invalidCodeLength(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateFullName(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.invalidFullName(failedValue: input));
  } else if (input.split(' ').length < 2) {
    return left(ValueFailure.missingSurname(failedValue: input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateNickname(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.invalidNickname(failedValue: input));
  } else {
    return right(input);
  }
}
