import 'package:conectacampo/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';

import 'errors.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();

  Either<ValueFailure<T>, T> get value;

  T getOrCrash() {
    return value.fold(
        (failure) => throw UnexpectedValueError(failure), id);
  }

  bool isValid() {
    return value.isRight();
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is ValueObject<T> && value == other.value;

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() {
    return 'Value(: $value)';
  }
}
