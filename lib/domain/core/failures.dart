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

  const factory ValueFailure.invalidNewAdDate(
    String failedValue,
  ) = InvalidNewAdDate<T>;

  const factory ValueFailure.invalidNewAdPlace(
    String failedValue,
  ) = InvalidNewAdPlace<T>;

  const factory ValueFailure.invalidNewAdDeliveryPlace(
    String failedValue,
  ) = InvalidNewAdDeliveryPlace<T>;

  const factory ValueFailure.invalidNewAdDeliveryDescription(
    String failedValue,
  ) = InvalidNewAdDeliveryDescription<T>;

  const factory ValueFailure.invalidNewAdProductId(
    int failedValue,
  ) = InvalidNewAdProductId<T>;

  const factory ValueFailure.invalidNewAdProductKind(
    String failedValue,
  ) = InvalidNewAdProductKind<T>;

  const factory ValueFailure.invalidNewAdProductRating(
    String failedValue,
  ) = InvalidNewAdProductRating<T>;

  const factory ValueFailure.invalidNewAdProductUnitMeasureId(
    int failedValue,
  ) = InvalidNewAdProductUnitMeasureId<T>;

  const factory ValueFailure.invalidNewAdProductQuantity(
    int failedValue,
  ) = InvalidNewAdProductQuantity<T>;

  const factory ValueFailure.invalidNewAdProductObservation(
    String failedValue,
  ) = InvalidNewAdProductObservation<T>;
}
