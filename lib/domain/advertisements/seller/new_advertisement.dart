import 'package:conectacampo/domain/advertisements/seller/new_ad_product.dart';
import 'package:conectacampo/domain/advertisements/seller/value_objects.dart';
import 'package:conectacampo/domain/places/place.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_advertisement.freezed.dart';

@freezed
class NewAdvertisement with _$NewAdvertisement {
  const factory NewAdvertisement(
      {required NewAdvertisementDate date,
      required Place? newAdDeliveryPlace,
      required NewAdvertisementDeliveryDescription newAdDeliveryDescription,
      required List<NewAdProduct> products}) = _NewAdvertisement;
}

bool isValidHeader(NewAdvertisement newAdvertisement) =>
    newAdvertisement.date.isValid() &&
    newAdvertisement.newAdDeliveryPlace != null &&
    newAdvertisement.newAdDeliveryDescription.isValid();
