import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation_item.freezed.dart';
part 'reservation_item.g.dart';

@freezed
class ReservationItem with _$ReservationItem {
  const factory ReservationItem(
      {required int id,
      required String name,
      required String measurementUnit,
      required int quantity,
      required String rating,
      required String kind,
      required String sellerName,
      required String sellerPhone,
      required String sellerId,
      required int advertisementId,
      required String image}) = _ReservationItem;

  factory ReservationItem.fromAdProduct(AdProduct product) => ReservationItem(
      id: product.id,
      name: product.name ?? '',
      image: product.images.first.mediumAvatar.url,
      measurementUnit: product.unitMeasure,
      quantity: 0,
      rating: product.rating,
      kind: product.kind,
      sellerName: product.advertisement?.seller.name ?? '',
      sellerId: product.advertisement?.seller.id.toString() ?? '',
      sellerPhone: product.advertisement?.seller.phoneNumber ?? '',
      advertisementId: product.advertisementId);

  factory ReservationItem.fromJson(Map<String, dynamic> json) =>
      _$ReservationItemFromJson(json);
}

enum ReservationItemStatus {
  awaitingBuyer,
  pendingSeller,
  buyerCanceled,
  sellerCanceled,
  confirmed,
  paid,
}

enum ReservationStatus {
  awaitingBuyer,
  pendingSeller,
  buyerCanceled,
  sellerCanceled,
  confirmed,
  paid,
}
