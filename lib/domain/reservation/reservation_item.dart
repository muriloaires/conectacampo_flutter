import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'reservation_item.freezed.dart';

@freezed
class ReservationItem with _$ReservationItem {
  const factory ReservationItem(
      {required int id,
      required String name,
      required String image,
      required String measurementUnit,
      required int quantity,
      required String rating,
      required String kind,
      required String sellerName,
      required String sellerPhone}) = _ReservationItem;

  factory ReservationItem.fromAdProduct(AdProduct product) => ReservationItem(
      id: product.id,
      name: product.name ?? '',
      image: product.images.first.mediumAvatar.getOrCrash(),
      measurementUnit: product.unitMeasure,
      quantity: 0,
      rating: product.rating,
      kind: product.kind,
      sellerName: product.advertisement?.seller.name.getOrCrash() ?? '',
      sellerPhone:
          product.advertisement?.seller.phoneNumber.getOrCrash() ?? '');
}
