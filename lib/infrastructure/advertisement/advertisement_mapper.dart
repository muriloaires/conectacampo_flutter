import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:conectacampo/domain/places/value_objects.dart';
import 'package:conectacampo/infrastructure/advertisement/model/model.dart';
import 'package:conectacampo/infrastructure/auth/user_mapper.dart';
import 'package:conectacampo/infrastructure/places/model/model.dart';

extension AdvertisementExtension on AdvertisementResponse {
  Advertisement toDomain() {
    return Advertisement(
      id,
      products.map((e) => e.toDomain()).toList(),
      deliveryAt,
      availableForGroupsAt,
      vehicleLicensePlate,
      place.toDomain(),
      seller.toDomain(),
      createdAt,
    );
  }
}

extension ProductExtension on AdProductResponse {
  AdProduct toDomain() {
    return AdProduct(
        id,
        name,
        unitMeasure ?? '',
        quantity,
        unitPrice,
        rating,
        kind,
        observation,
        images
                ?.map((element) => ProductImages(
                    ThumbAvatar(element.thumbnail.url),
                    MediumAvatar(element.medium.url),
                    OriginalAvatar(element.original.url)))
                .toList() ??
            List<ProductImages>.empty(),
        createdAt,
        null);
  }
}

extension PlaceExtension on PlaceResponse {
  Place toDomain() {
    return Place(
      id: id.toString(),
      name: name,
      state: state,
      address: address,
    );
  }
}
