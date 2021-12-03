import 'package:conectacampo/domain/reservation/product_reservation.dart';
import 'package:conectacampo/domain/reservation/reservation.dart';
import 'package:conectacampo/domain/reservation/reservation_item.dart';
import 'package:conectacampo/infrastructure/advertisement/advertisement_mapper.dart';
import 'package:conectacampo/infrastructure/advertisement/model/model.dart';
import 'package:conectacampo/infrastructure/auth/model/model.dart';
import 'package:conectacampo/infrastructure/auth/user_mapper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

part 'model.g.dart';

@freezed
class ReservationItemDB with _$ReservationItemDB {
  const factory ReservationItemDB(
      {@JsonKey(name: '_id') required int id,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'measuremente_unit') required String measurementUnit,
      @JsonKey(name: 'ammount') required int quantity,
      @JsonKey(name: 'rating') required String rating,
      @JsonKey(name: 'kind') required String kind,
      @JsonKey(name: 'seller_name') required String sellerName,
      @JsonKey(name: 'seller_phone') required String sellerPhone,
      @JsonKey(name: 'seller_id') required String sellerId,
      @JsonKey(name: 'advertisement_id') required int advertisementId,
      @JsonKey(name: 'image') required String image}) = _ReservationItemDB;

  factory ReservationItemDB.fromJson(Map<String, dynamic> json) =>
      _$ReservationItemDBFromJson(json);
}

@freezed
class ProductReservationAttributes with _$ProductReservationAttributes {
  const factory ProductReservationAttributes(
      {@JsonKey(name: 'quantity')
          required int quantity,
      @JsonKey(name: 'advertisement_product_id')
          required int adProductId}) = _ProductReservationAttributes;

  factory ProductReservationAttributes.fromJson(Map<String, dynamic> json) =>
      _$ProductReservationAttributesFromJson(json);
}

@freezed
class ReservationRequest with _$ReservationRequest {
  const factory ReservationRequest(
          {@JsonKey(name: 'product_reservations_attributes')
              required List<ProductReservationAttributes> adProducts}) =
      _ReservationRequest;

  factory ReservationRequest.fromJson(Map<String, dynamic> json) =>
      _$ReservationRequestFromJson(json);
}

@freezed
class ReservationObjRequest with _$ReservationObjRequest {
  const factory ReservationObjRequest(
      {@JsonKey(name: 'reservation')
          required ReservationRequest reservation}) = _ReservationObjRequest;

  factory ReservationObjRequest.fromJson(Map<String, dynamic> json) =>
      _$ReservationObjRequestFromJson(json);
}

@freezed
class ReservationResponse with _$ReservationResponse {
  const factory ReservationResponse({
    @JsonKey(name: 'id') required int? id,
    @JsonKey(name: 'created_at') required String? createdAt,
    @JsonKey(name: 'errors') required List<ErrorResponse>? errors,
    @JsonKey(name: 'buyer') required UserResponse buyer,
    @JsonKey(name: 'seller') required UserResponse? seller,
    @JsonKey(name: 'status') required String? status,
    @JsonKey(name: 'product_reservations')
        required List<ProductReservationResponse> productReservations,
  }) = _ReservationResponse;

  factory ReservationResponse.fromJson(Map<String, dynamic> json) =>
      _$ReservationResponseFromJson(json);
}

@freezed
class ProductReservationResponse with _$ProductReservationResponse {
  const factory ProductReservationResponse({
    @JsonKey(name: 'id') required int? id,
    @JsonKey(name: 'created_at') required String? createdAt,
    @JsonKey(name: 'errors') required List<ErrorResponse>? errors,
    @JsonKey(name: 'status') required String status,
    @JsonKey(name: 'quantity') required int quantity,
    @JsonKey(name: 'advertisement_product')
        required AdProductResponse adProduct,
  }) = _ProductReservationResponse;

  factory ProductReservationResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductReservationResponseFromJson(json);
}

@freezed
class ErrorResponse with _$ErrorResponse {
  const factory ErrorResponse({
    @JsonKey(name: 'key') required String key,
    @JsonKey(name: 'message') required String messsage,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}

extension ReservationItemDBExtension on ReservationItemDB {
  ReservationItem toDomain() {
    return ReservationItem(
        id: id,
        image: image,
        kind: kind,
        measurementUnit: measurementUnit,
        name: name,
        quantity: quantity,
        rating: rating,
        sellerName: sellerName,
        sellerPhone: sellerPhone,
        sellerId: sellerId,
        advertisementId: advertisementId);
  }
}

extension ReservationItemDBDomain on ReservationItem {
  ReservationItemDB toLocal() {
    return ReservationItemDB(
        id: id,
        image: image,
        kind: kind,
        measurementUnit: measurementUnit,
        name: name,
        quantity: quantity,
        rating: rating,
        sellerName: sellerName,
        sellerPhone: sellerPhone,
        sellerId: sellerId,
        advertisementId: advertisementId);
  }
}

extension ReservationExt on ReservationResponse {
  Reservation toDomain() {
    return Reservation(
        id: id ?? -1,
        createdAt: createdAt ?? "",
        buyer: buyer.toDomain(),
        seller: seller?.toDomain(),
        status: getStatusReservation(status ?? 'pending_seller'),
        productReservations:
            productReservations.map((e) => e.toDomain()).toList());
  }
}

ReservationStatus getStatusReservation(String status) {
  if (status == 'awaiting_buyer') {
    return ReservationStatus.awaitingBuyer;
  } else if (status == 'pending_seller') {
    return ReservationStatus.pendingSeller;
  } else if (status == 'buyer_canceled') {
    return ReservationStatus.buyerCanceled;
  } else if (status == 'seller_canceled') {
    return ReservationStatus.sellerCanceled;
  } else if (status == 'confirmed') {
    return ReservationStatus.confirmed;
  } else {
    return ReservationStatus.paid;
  }
}

extension ProductReservationExt on ProductReservationResponse {
  ProductReservation toDomain() {
    return ProductReservation(
        id: id,
        createdAt: createdAt,
        status: geStatus(status),
        quantity: quantity,
        adProduct: adProduct.toDomain());
  }

  ReservationItemStatus geStatus(String status) {
    if (status == 'awaiting_buyer') {
      return ReservationItemStatus.awaitingBuyer;
    } else if (status == 'pending_seller') {
      return ReservationItemStatus.pendingSeller;
    } else if (status == 'buyer_canceled') {
      return ReservationItemStatus.buyerCanceled;
    } else if (status == 'seller_canceled') {
      return ReservationItemStatus.sellerCanceled;
    } else if (status == 'confirmed') {
      return ReservationItemStatus.confirmed;
    } else {
      return ReservationItemStatus.paid;
    }
  }
}
