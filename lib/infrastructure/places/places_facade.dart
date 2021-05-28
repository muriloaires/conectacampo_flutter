import 'dart:convert';

import 'package:conectacampo/domain/places/i_places_facade.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:conectacampo/domain/places/places_failure.dart';
import 'package:conectacampo/domain/places/value_objects.dart';
import 'package:conectacampo/infrastructure/core/http_constants.dart';
import 'package:conectacampo/infrastructure/places/model/model.dart';
import 'package:conectacampo/infrastructure/places/places_mapper.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: IPlacesFacade)
class PlacesFacade implements IPlacesFacade {
  static const routePlaces = '/places';
  static const routeStatesPlaces = '/states';
  final FirebaseAuth _firebaseAuth;
  PlacesFacade(this._firebaseAuth);
  @override
  Future<Either<PlacesFailure, List<Place>>> getAllPlaces() async {
    final url = Uri.parse('${getCurrentApiUrl()}$routePlaces');
    final response =
        await getAuthenticatedRequest(url, headers: getApiHeader());
    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      final Iterable iterable = jsonDecode(response.body) as Iterable;
      final placesResponse = iterable.map(
          (e) => PlaceResponse.fromJson(e as Map<String, dynamic>).toDomain());

      return right(placesResponse.toList());
    } else if (code == 401) {
      return left(const PlacesFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const PlacesFailure.requestError());
    } else {
      return left(const PlacesFailure.serverError());
    }
  }

  @override
  Future<Either<PlacesFailure, List<StatePlace>>> getAllStates() async {
    final url = Uri.https(baseUrl, '$apiVersion$routeStatesPlaces');
    final response =
        await await getAuthenticatedRequest(url, headers: getApiHeader());
    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      final states = List<String>.from(jsonDecode(response.body) as Iterable);
      return right((states.map((e) => StatePlace(e))).toList());
    } else if (code == 401) {
      return left(const PlacesFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const PlacesFailure.requestError());
    } else {
      return left(const PlacesFailure.serverError());
    }
  }

  @override
  Future<Either<PlacesFailure, List<Place>>> getAllPlacesByStateName(
      String state) async {
    final url = Uri.https(baseUrl, '$apiVersion$routePlaces', {'state': state});
    final response =
        await getAuthenticatedRequest(url, headers: getApiHeader());
    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      final Iterable iterable = jsonDecode(response.body) as Iterable;
      final placesResponse = iterable.map(
          (e) => PlaceResponse.fromJson(e as Map<String, dynamic>).toDomain());
      return right(placesResponse.toList());
    } else if (code == 401) {
      return left(const PlacesFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const PlacesFailure.requestError());
    } else {
      return left(const PlacesFailure.serverError());
    }
  }
}
