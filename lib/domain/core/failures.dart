import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidPhoneNumber(
    String failedValue,
  ) = InvalidPhoneNumber<T>;

  const factory ValueFailure.invalidCodeLength(
    String failedValue,
  ) = InvalidCodeLength<T>;

  const factory ValueFailure.invalidFullName(
    String failedValue,
  ) = InvalidFullName<T>;

  const factory ValueFailure.missingSurname(
    String failedValue,
  ) = MissingSurname<T>;

  const factory ValueFailure.invalidNickname(
    String failedValue,
  ) = InvalidNickname<T>;

  const factory ValueFailure.invalidAvatar(
    String failedValue,
  ) = InvalidAvatar<T>;

  const factory ValueFailure.invalidStatePlaceName(
    String failedValue,
  ) = InvalidStatePlaceName<T>;

  const factory ValueFailure.invalidPlaceName(
    String failedValue,
  ) = InvalidPlaceName<T>;

  const factory ValueFailure.invalidCity(
    String failedValue,
  ) = InvalidCity<T>;

  const factory ValueFailure.invalidAddress(
    String failedValue,
  ) = InvalidAddress<T>;
}
