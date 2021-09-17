import 'package:conectacampo/domain/core/failures.dart';
import 'package:conectacampo/domain/core/value_objects.dart';
import 'package:conectacampo/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';

class NewAdvertisementDate extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  factory NewAdvertisementDate(DateTime input) {
    var time = DateTime(input.year, input.month, input.day, 6, input.minute,
        input.second, input.millisecond, input.microsecond);

    return NewAdvertisementDate._(validateNewAdDate(input));
  }

  const NewAdvertisementDate._(this.value);

  @override
  bool isValid() {
    if (super.isValid()) {
      return validateNewAdDate(value.fold((l) => DateTime.now(), (r) => r))
          .isRight();
    } else {
      return false;
    }
  }
}

class NewAdvertisementDeliveryPlace extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NewAdvertisementDeliveryPlace(String input) {
    return NewAdvertisementDeliveryPlace._(validateNewAdDeliveryPlace(input));
  }

  const NewAdvertisementDeliveryPlace._(this.value);
}

class NewAdvertisementDeliveryDescription extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NewAdvertisementDeliveryDescription(String input) {
    return NewAdvertisementDeliveryDescription._(
        validateNewAdDeliveryDescription(input));
  }

  const NewAdvertisementDeliveryDescription._(this.value);
}

class NewAdProductId extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory NewAdProductId(int input) {
    return NewAdProductId._(validateNewAdProductId(input));
  }

  const NewAdProductId._(this.value);
}

class NewAdProductKind extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NewAdProductKind(String input) {
    return NewAdProductKind._(validateNewAdProductKind(input));
  }

  const NewAdProductKind._(this.value);
}

class NewAdProductRating extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NewAdProductRating(String input) {
    return NewAdProductRating._(validateNewAdProductRating(input));
  }

  const NewAdProductRating._(this.value);
}

class NewAdProductUnitMeasureId extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory NewAdProductUnitMeasureId(int input) {
    return NewAdProductUnitMeasureId._(
        validateNewAdProductUnitMeasureId(input));
  }

  const NewAdProductUnitMeasureId._(this.value);
}

class NewAdProductQuantity extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  factory NewAdProductQuantity(int input) {
    return NewAdProductQuantity._(validateNewAdProductQuantity(input));
  }

  const NewAdProductQuantity._(this.value);
}

class NewAdProductObservation extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory NewAdProductObservation(String input) {
    return NewAdProductObservation._(validateNewAdProductObservation(input));
  }

  const NewAdProductObservation._(this.value);
}
