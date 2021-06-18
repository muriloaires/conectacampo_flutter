import 'package:freezed_annotation/freezed_annotation.dart';

part 'places_failure.freezed.dart';

@freezed
class PlacesFailure with _$PlacesFailure {
  const factory PlacesFailure.unauthorized() = Unauthorized;
  const factory PlacesFailure.serverError() = ServerError;
  const factory PlacesFailure.requestError() = RequestError;
  const factory PlacesFailure.placeNotFound() = PlaceNotFound;
}
