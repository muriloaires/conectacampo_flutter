// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReservationItemDB _$_$_ReservationItemDBFromJson(Map<String, dynamic> json) {
  return _$_ReservationItemDB(
    id: json['_id'] as int,
    name: json['name'] as String,
    measurementUnit: json['measuremente_unit'] as String,
    quantity: json['ammount'] as int,
    rating: json['rating'] as String,
    kind: json['kind'] as String,
    sellerName: json['seller_name'] as String,
    sellerPhone: json['seller_phone'] as String,
    sellerId: json['seller_id'] as String,
    advertisementId: json['advertisement_id'] as int,
    image: json['image'] as String,
  );
}

Map<String, dynamic> _$_$_ReservationItemDBToJson(
        _$_ReservationItemDB instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'measuremente_unit': instance.measurementUnit,
      'ammount': instance.quantity,
      'rating': instance.rating,
      'kind': instance.kind,
      'seller_name': instance.sellerName,
      'seller_phone': instance.sellerPhone,
      'seller_id': instance.sellerId,
      'advertisement_id': instance.advertisementId,
      'image': instance.image,
    };

_$_ProductReservationAttributes _$_$_ProductReservationAttributesFromJson(
    Map<String, dynamic> json) {
  return _$_ProductReservationAttributes(
    quantity: json['quantity'] as int,
    adProductId: json['advertisement_product_id'] as int,
  );
}

Map<String, dynamic> _$_$_ProductReservationAttributesToJson(
        _$_ProductReservationAttributes instance) =>
    <String, dynamic>{
      'quantity': instance.quantity,
      'advertisement_product_id': instance.adProductId,
    };

_$_ReservationRequest _$_$_ReservationRequestFromJson(
    Map<String, dynamic> json) {
  return _$_ReservationRequest(
    adProducts: (json['product_reservations_attributes'] as List<dynamic>)
        .map((e) =>
            ProductReservationAttributes.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ReservationRequestToJson(
        _$_ReservationRequest instance) =>
    <String, dynamic>{
      'product_reservations_attributes': instance.adProducts,
    };

_$_ReservationObjRequest _$_$_ReservationObjRequestFromJson(
    Map<String, dynamic> json) {
  return _$_ReservationObjRequest(
    reservation: ReservationRequest.fromJson(
        json['reservation'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ReservationObjRequestToJson(
        _$_ReservationObjRequest instance) =>
    <String, dynamic>{
      'reservation': instance.reservation,
    };

_$_ReservationResponse _$_$_ReservationResponseFromJson(
    Map<String, dynamic> json) {
  return _$_ReservationResponse(
    id: json['id'] as int?,
    createdAt: json['created_at'] as String?,
    errors: (json['errors'] as List<dynamic>?)
        ?.map((e) => ErrorResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    buyer: UserResponse.fromJson(json['buyer'] as Map<String, dynamic>),
    seller: json['seller'] == null
        ? null
        : UserResponse.fromJson(json['seller'] as Map<String, dynamic>),
    productReservations: (json['product_reservations'] as List<dynamic>)
        .map((e) =>
            ProductReservationResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_ReservationResponseToJson(
        _$_ReservationResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'errors': instance.errors,
      'buyer': instance.buyer,
      'seller': instance.seller,
      'product_reservations': instance.productReservations,
    };

_$_ProductReservationResponse _$_$_ProductReservationResponseFromJson(
    Map<String, dynamic> json) {
  return _$_ProductReservationResponse(
    id: json['id'] as int?,
    createdAt: json['created_at'] as String?,
    errors: (json['errors'] as List<dynamic>?)
        ?.map((e) => ErrorResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
    status: json['status'] as String,
    quantity: json['quantity'] as int,
    adProduct: AdProductResponse.fromJson(
        json['advertisement_product'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_ProductReservationResponseToJson(
        _$_ProductReservationResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt,
      'errors': instance.errors,
      'status': instance.status,
      'quantity': instance.quantity,
      'advertisement_product': instance.adProduct,
    };

_$_ErrorResponse _$_$_ErrorResponseFromJson(Map<String, dynamic> json) {
  return _$_ErrorResponse(
    key: json['key'] as String,
    messsage: json['message'] as String,
  );
}

Map<String, dynamic> _$_$_ErrorResponseToJson(_$_ErrorResponse instance) =>
    <String, dynamic>{
      'key': instance.key,
      'message': instance.messsage,
    };
