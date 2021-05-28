import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidPhoneNumber({
    @required String failedValue,
  }) = InvalidPhoneNumber<T>;

  const factory ValueFailure.invalidCodeLength({
    @required String failedValue,
  }) = InvalidCodeLength<T>;

  const factory ValueFailure.invalidFullName({
    @required String failedValue,
  }) = InvalidFullName<T>;

  const factory ValueFailure.missingSurname({
    @required String failedValue,
  }) = MissingSurname<T>;

  const factory ValueFailure.invalidNickname({
    @required String failedValue,
  }) = InvalidNickname<T>;

  const factory ValueFailure.invalidAvatar({
    @required String failedValue,
  }) = InvalidAvatar<T>;

  const factory ValueFailure.invalidStatePlaceName({
    @required String failedValue,
  }) = InvalidStatePlaceName<T>;

  const factory ValueFailure.invalidPlaceName({
    @required String failedValue,
  }) = InvalidPlaceName<T>;

  const factory ValueFailure.invalidCity({
    @required String failedValue,
  }) = InvalidCity<T>;

  const factory ValueFailure.invalidAddress({
    @required String failedValue,
  }) = InvalidAddress<T>;
}
