import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/advertisement_failure.dart';
import 'package:conectacampo/domain/advertisements/seller/new_advertisement.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:conectacampo/domain/places/value_objects.dart';

import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IAdvertisementsFacade {
  Future<Either<AdvertisementFailure, List<Advertisement>>> getAdvertisements(
      Place place);

  Future<Either<AdvertisementFailure, List<AdProduct>>> getProduct({
    required Place place,
    String? productName,
    String? kind,
    int? productId,
    int? quantity,
    String? rating,
  });

  Future<Unit> saveSearchedName(String productName);

  Future<List<String>> getSearchedNames();

  Future<Either<AdvertisementFailure, Advertisement>> publishAdvertisement(
      NewAdvertisement newAdvertisement);

  Future<Either<AdvertisementFailure, List<Advertisement>>> getSellerAds(
      Place place);

  Future<Either<AdvertisementFailure, List<Advertisement>>> getGroupsAds();
}
