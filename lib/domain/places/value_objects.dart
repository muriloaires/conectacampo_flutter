import 'package:conectacampo/domain/core/failures.dart';
import 'package:conectacampo/domain/core/value_objects.dart';
import 'package:conectacampo/domain/core/value_validators.dart';
import 'package:dartz/dartz.dart';

class StatePlace extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory StatePlace(String input) {
    assert(input != null);
    return StatePlace._(validateStatePlace(input));
  }

  const StatePlace._(this.value);
}

class PlaceName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PlaceName(String input) {
    assert(input != null);
    return PlaceName._(validatePlaceName(input));
  }

  const PlaceName._(this.value);
}

class PlaceCity extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PlaceCity(String input) {
    assert(input != null);
    return PlaceCity._(validatePlaceCity(input));
  }

  const PlaceCity._(this.value);
}

class PlaceAddress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory PlaceAddress(String input) {
    assert(input != null);
    return PlaceAddress._(validatePlaceAddress(input));
  }

  const PlaceAddress._(this.value);
}

// "id": 1,
//         "name": "Ceasa Goiânia",
//         "state": "Goiás",
//         "city": "Goiânia",
//         "address": "",
//         "created_at": "2021-03-27T21:32:30.021Z"
