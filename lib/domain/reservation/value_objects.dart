import 'package:conectacampo/domain/core/failures.dart';
import 'package:conectacampo/domain/core/value_objects.dart';
import 'package:conectacampo/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';

class ReservationQuantity extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ReservationQuantity(String input, {int? current}) {
    return ReservationQuantity._(validateReservationQuantity(input, current: current));
  }

  const ReservationQuantity._(this.value);
}
