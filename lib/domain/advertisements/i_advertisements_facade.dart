import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/advertisements/advertisement_failure.dart';
import 'package:conectacampo/domain/advertisements/seller/new_advertisement.dart';
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:conectacampo/domain/places/place.dart';

import 'package:dartz/dartz.dart';

abstract class IAdvertisementsFacade {
  Future<Either<AdvertisementFailure, List<Advertisement>>> getAdvertisements(
      Place place);

  Future<Either<AdvertisementFailure, List<AdProduct>>> getAdProducts({
    required Place place,
    String? productName,
    String? kind,
    int? productId,
    int? quantity,
    String? rating,
    String? date
  });

  Future<Unit> saveSearchedName(String productName);

  Future<List<String>> getSearchedNames();

  Future<Either<AdvertisementFailure, Advertisement>> publishAdvertisement(
      NewAdvertisement newAdvertisement);

  Future<Either<AdvertisementFailure, Advertisement>> getAdvertisement(int adId);

  Future<Either<AdvertisementFailure, List<Advertisement>>> getSellerAds(
      Place place);

  Future<Either<AdvertisementFailure, List<Advertisement>>> getGroupsAds();

  Future<Either<AdvertisementFailure, List<AdProduct>>> getAdProductsByIds(
      List<int> ids);

  Future<Either<AdvertisementFailure, Unit>> leaveGroup(
      {required UniqueId sellerId});

  Future<Either<AdvertisementFailure, Unit>> deleteAd(
      Advertisement advertisement);
}
