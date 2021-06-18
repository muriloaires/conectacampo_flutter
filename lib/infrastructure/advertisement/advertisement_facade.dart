import 'dart:convert';

import 'package:conectacampo/domain/places/place.dart';
import 'package:conectacampo/domain/places/value_objects.dart';
import 'package:conectacampo/domain/reservation/advertisement.dart';
import 'package:conectacampo/domain/reservation/advertisement_failure.dart';
import 'package:conectacampo/domain/reservation/i_advertisements_facade.dart';
import 'package:conectacampo/infrastructure/advertisement/advertisement_mapper.dart';
import 'package:conectacampo/infrastructure/advertisement/model/model.dart';
import 'package:conectacampo/infrastructure/core/http_constants.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IAdvertisementsFacade)
class AdvertisementFacade extends IAdvertisementsFacade {
  static const routeAdvertisements = '/advetisements';

  @override
  Future<Either<AdvertisementFailure, List<Advertisement>>> getAdvertisements(
      StatePlace state, Place place) async {
    final url = Uri.https(baseUrl, '$apiVersion$routeAdvertisements');
    final response = await getAuthenticatedRequest(url, getApiHeader());
    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      final Iterable iterable = jsonDecode(response.body) as Iterable;
      final advertisementsResponse = iterable.map((e) =>
          AdvertisementResponse.fromJson(e as Map<String, dynamic>).toDomain());

      return right(advertisementsResponse.toList());
    } else if (code == 401) {
      return left(const AdvertisementFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const AdvertisementFailure.requestError());
    } else {
      return left(const AdvertisementFailure.serverError());
    }
  }
}
