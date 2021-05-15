import 'package:conectacampo/domain/places/places_failure.dart';
import 'package:conectacampo/infrastructure/places/model/model.dart';

import 'package:dartz/dartz.dart';

abstract class IPlacesFacade {
  Future<Either<PlacesFailure, List<PlaceResponse>>> getAllPlaces();
}
