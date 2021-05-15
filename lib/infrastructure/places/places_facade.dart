import 'dart:convert';

import 'package:conectacampo/domain/places/I_places_facade.dart';
import 'package:conectacampo/domain/places/places_failure.dart';
import 'package:conectacampo/infrastructure/core/http_constants.dart';
import 'package:conectacampo/infrastructure/places/model/model.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

@LazySingleton(as: IPlacesFacade)
class PlacesFacade implements IPlacesFacade {
  static const routePlaces = '/places';

  @override
  Future<Either<PlacesFailure, List<PlaceResponse>>> getAllPlaces() async {
    final url = Uri.parse('${getCurrentApiUrl()}$routePlaces');
    var headers = getApiHeader();
    headers.addAll({
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxLCJleHAiOjE2MjEyODI3Mzd9.ALXlueXkyZc4gHSrs6RGDjQipNanbElKEf4Q-YR3uZY'
    });
    final response = await http.get(url, headers: headers);
    final code = response.statusCode;
    if (code >= 200 && code < 300) {
      return right(PlaceListResponse.fromJson(
              jsonDecode(response.body) as Map<String, dynamic>)
          .places);
    } else if (code == 401) {
      return left(const PlacesFailure.unauthorized());
    } else if (code >= 400 && code < 500) {
      return left(const PlacesFailure.requestError());
    } else {
      return left(const PlacesFailure.serverError());
    }
  }
}
