import 'package:conectacampo/domain/core/failures.dart';
import 'package:conectacampo/domain/core/value_objects.dart';
import 'package:conectacampo/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';

class PhoneNumber extends ValueObject<String> {
  final Either<ValueFailure<String>, String> value;

  factory PhoneNumber(String input) {
    assert(input != null);
    return PhoneNumber._(validatePhoneNumber(input));
  }

  const PhoneNumber._(this.value);
}

class SmsCode extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory SmsCode(String input) {
    assert(input != null);
    return SmsCode._(validateSmsCode(input));
  }

  const SmsCode._(this.value);
}

class FullName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory FullName(String input) {
    assert(input != null);
    return FullName._(validateFullName(input));
  }

  const FullName._(this.value);
}

class Nickname extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Nickname(String input) {
    assert(input != null);
    return Nickname._(validateNickname(input));
  }

  const Nickname._(this.value);
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId.fromUniqueString(String uniqueId) {
    assert(uniqueId != null);
    return UniqueId._(
      right(uniqueId),
    );
  }

  const UniqueId._(this.value);
}

class MediumAvatar extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory MediumAvatar(String input) {
    assert(input != null);
    return MediumAvatar._(validateAvatar(input));
  }

  const MediumAvatar._(this.value);
}

class ThumbAvatar extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ThumbAvatar(String input) {
    assert(input != null);
    return ThumbAvatar._(validateAvatar(input));
  }

  const ThumbAvatar._(this.value);
}

class OriginalAvatar extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory OriginalAvatar(String input) {
    assert(input != null);
    return OriginalAvatar._(validateAvatar(input));
  }

  const OriginalAvatar._(this.value);
}

void test() {
  final phoNumber = PhoneNumber('123');
  String phoneNumberText = phoNumber.value
      .fold((left) => 'Failure happended: $left', (right) => right);

  String teste = phoNumber.value.getOrElse(() => 'Some failure');
}
