import 'package:conectacampo/domain/places/place.dart';
import 'package:conectacampo/domain/places/value_objects.dart';
import 'package:conectacampo/domain/reservation/advertisement.dart';
import 'package:conectacampo/domain/reservation/advertisement_failure.dart';
import 'package:dartz/dartz.dart';

abstract class IAdvertisementsFacade {
  Future<Either<AdvertisementFailure, List<Advertisement>>> getAdvertisements(
      StatePlace state, Place place);
}
