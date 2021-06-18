import 'package:freezed_annotation/freezed_annotation.dart';

part 'advertisement_failure.freezed.dart';

@freezed
class AdvertisementFailure with _$AdvertisementFailure {
  const factory AdvertisementFailure.unauthorized() = Unauthorized;
  const factory AdvertisementFailure.serverError() = ServerError;
  const factory AdvertisementFailure.requestError() = RequestError;
}
