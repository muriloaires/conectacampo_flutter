import 'package:conectacampo/infrastructure/auth/model/model.dart';
import 'package:conectacampo/infrastructure/places/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class AdvertisementResponse with _$AdvertisementResponse {
  const factory AdvertisementResponse(
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'products') List<AdProductResponse> products,
    @JsonKey(name: 'delivery_at') String deliveryAt,
    @JsonKey(name: 'available_for_groups_at') String availableForGroupsAt,
    @JsonKey(name: 'vehicle_license_plate') String vehicleLicensePlate,
    @JsonKey(name: 'place') PlaceResponse place,
    @JsonKey(name: 'seller') UserResponse seller,
    @JsonKey(name: 'created_at') String createdAt,
  ) = _AdvertisementResponse;

  factory AdvertisementResponse.fromJson(Map<String, dynamic> json) =>
      _$AdvertisementResponseFromJson(json);
}

@freezed
class AdProductResponse with _$AdProductResponse {
  const factory AdProductResponse(
    @JsonKey(name: 'id') int id,
    @JsonKey(name: 'name') String name,
    @JsonKey(name: 'measurement_unit') String unitMeasure,
    @JsonKey(name: 'quantity') int quantity,
    @JsonKey(name: 'unit_price') String? unitPrice,
    @JsonKey(name: 'rating') String rating,
    @JsonKey(name: 'kind') String kind,
    @JsonKey(name: 'observation') String? observation,
    @JsonKey(name: 'images') List<AvatarResponse> images,
    @JsonKey(name: 'created_at') String createdAt,
  ) = _AdProductResponse;

  factory AdProductResponse.fromJson(Map<String, dynamic> json) =>
      _$AdProductResponseFromJson(json);
}
