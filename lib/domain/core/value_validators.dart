import 'package:dartz/dartz.dart';
import 'package:conectacampo/domain/core/failures.dart';

Either<ValueFailure<String>, String> validatePhoneNumber(String input) {
  final formated =
      input.replaceAll("(", "").replaceAll(")", "").replaceAll(" ", "");
  if (formated.isEmpty || formated.length != 12) {
    return left(ValueFailure.invalidPhoneNumber(formated));
  } else {
    return right(formated);
  }
}

Either<ValueFailure<String>, String> validateSmsCode(String input) {
  if (input.length != 6) {
    return left(ValueFailure.invalidCodeLength(input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateFullName(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.invalidFullName(input));
  } else if (input.split(' ').length < 2) {
    return left(ValueFailure.missingSurname(input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateNickname(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.invalidNickname(input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateAvatar(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.invalidAvatar(input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateStatePlace(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.invalidStatePlaceName(input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validatePlaceName(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.invalidPlaceName(input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validatePlaceCity(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.invalidCity(input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validatePlaceAddress(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.invalidAddress(input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<DateTime>, DateTime> validateNewAdDate(DateTime input) {
  if (input.isAfter(DateTime.now())) {
    return left(ValueFailure.invalidNewAdDate(input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateNewAdPlace(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.invalidNewAdPlace(input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateNewAdDeliveryPlace(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.invalidNewAdDeliveryPlace(input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateNewAdDeliveryDescription(
    String input) {
  if (input.isEmpty) {
    return left(ValueFailure.invalidNewAdDeliveryDescription(input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<int>, int> validateNewAdProductId(int input) {
  if (input < 0) {
    return left(ValueFailure.invalidNewAdProductId(input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateNewAdProductKind(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.invalidNewAdProductKind(input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateNewAdProductRating(String input) {
  if (input.isEmpty) {
    return left(ValueFailure.invalidNewAdProductRating(input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<int>, int> validateNewAdProductUnitMeasureId(int input) {
  if (input < 0) {
    return left(ValueFailure.invalidNewAdProductUnitMeasureId(input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<int>, int> validateNewAdProductQuantity(int input) {
  if (input <= 0) {
    return left(ValueFailure.invalidNewAdProductQuantity(input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateNewAdProductObservation(
    String input) {
  if (input.isEmpty) {
    return left(ValueFailure.invalidNewAdProductObservation(input));
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateReservationQuantity(String input) {
  final intValue = int.tryParse(input);
  if (intValue == null || intValue <= 0) {
    return left(ValueFailure.invalidReservationQuantity(input));
  } else {
    return right(input);
  }
}
