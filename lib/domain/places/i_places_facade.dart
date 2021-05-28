import 'package:conectacampo/domain/places/place.dart';
import 'package:conectacampo/domain/places/places_failure.dart';
import 'package:conectacampo/domain/places/value_objects.dart';

import 'package:dartz/dartz.dart';

abstract class IPlacesFacade {
  Future<Either<PlacesFailure, List<Place>>> getAllPlaces();

  Future<Either<PlacesFailure, List<Place>>> getAllPlacesByStateName(
      String state);

  Future<Either<PlacesFailure, List<StatePlace>>> getAllStates();
}
