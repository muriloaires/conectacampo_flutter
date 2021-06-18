// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AdvertisementResponse _$AdvertisementResponseFromJson(
    Map<String, dynamic> json) {
  return _AdvertisementResponse.fromJson(json);
}

/// @nodoc
class _$AdvertisementResponseTearOff {
  const _$AdvertisementResponseTearOff();

  _AdvertisementResponse call(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'products') List<ProductResponse> products,
      @JsonKey(name: 'delivery_at') String deliveryAt,
      @JsonKey(name: 'available_for_groups_at') String availableForGroupsAt,
      @JsonKey(name: 'vehicle_license_plate') String vehicleLicensePlate,
      @JsonKey(name: 'place') PlaceResponse place,
      @JsonKey(name: 'seller') UserResponse seller,
      @JsonKey(name: 'created_at') String createdAt) {
    return _AdvertisementResponse(
      id,
      products,
      deliveryAt,
      availableForGroupsAt,
      vehicleLicensePlate,
      place,
      seller,
      createdAt,
    );
  }

  AdvertisementResponse fromJson(Map<String, Object> json) {
    return AdvertisementResponse.fromJson(json);
  }
}

/// @nodoc
const $AdvertisementResponse = _$AdvertisementResponseTearOff();

/// @nodoc
mixin _$AdvertisementResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'products')
  List<ProductResponse> get products => throw _privateConstructorUsedError;
  @JsonKey(name: 'delivery_at')
  String get deliveryAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_for_groups_at')
  String get availableForGroupsAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'vehicle_license_plate')
  String get vehicleLicensePlate => throw _privateConstructorUsedError;
  @JsonKey(name: 'place')
  PlaceResponse get place => throw _privateConstructorUsedError;
  @JsonKey(name: 'seller')
  UserResponse get seller => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdvertisementResponseCopyWith<AdvertisementResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisementResponseCopyWith<$Res> {
  factory $AdvertisementResponseCopyWith(AdvertisementResponse value,
          $Res Function(AdvertisementResponse) then) =
      _$AdvertisementResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'products') List<ProductResponse> products,
      @JsonKey(name: 'delivery_at') String deliveryAt,
      @JsonKey(name: 'available_for_groups_at') String availableForGroupsAt,
      @JsonKey(name: 'vehicle_license_plate') String vehicleLicensePlate,
      @JsonKey(name: 'place') PlaceResponse place,
      @JsonKey(name: 'seller') UserResponse seller,
      @JsonKey(name: 'created_at') String createdAt});

  $PlaceResponseCopyWith<$Res> get place;
  $UserResponseCopyWith<$Res> get seller;
}

/// @nodoc
class _$AdvertisementResponseCopyWithImpl<$Res>
    implements $AdvertisementResponseCopyWith<$Res> {
  _$AdvertisementResponseCopyWithImpl(this._value, this._then);

  final AdvertisementResponse _value;
  // ignore: unused_field
  final $Res Function(AdvertisementResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? products = freezed,
    Object? deliveryAt = freezed,
    Object? availableForGroupsAt = freezed,
    Object? vehicleLicensePlate = freezed,
    Object? place = freezed,
    Object? seller = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>,
      deliveryAt: deliveryAt == freezed
          ? _value.deliveryAt
          : deliveryAt // ignore: cast_nullable_to_non_nullable
              as String,
      availableForGroupsAt: availableForGroupsAt == freezed
          ? _value.availableForGroupsAt
          : availableForGroupsAt // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleLicensePlate: vehicleLicensePlate == freezed
          ? _value.vehicleLicensePlate
          : vehicleLicensePlate // ignore: cast_nullable_to_non_nullable
              as String,
      place: place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as PlaceResponse,
      seller: seller == freezed
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as UserResponse,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $PlaceResponseCopyWith<$Res> get place {
    return $PlaceResponseCopyWith<$Res>(_value.place, (value) {
      return _then(_value.copyWith(place: value));
    });
  }

  @override
  $UserResponseCopyWith<$Res> get seller {
    return $UserResponseCopyWith<$Res>(_value.seller, (value) {
      return _then(_value.copyWith(seller: value));
    });
  }
}

/// @nodoc
abstract class _$AdvertisementResponseCopyWith<$Res>
    implements $AdvertisementResponseCopyWith<$Res> {
  factory _$AdvertisementResponseCopyWith(_AdvertisementResponse value,
          $Res Function(_AdvertisementResponse) then) =
      __$AdvertisementResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'products') List<ProductResponse> products,
      @JsonKey(name: 'delivery_at') String deliveryAt,
      @JsonKey(name: 'available_for_groups_at') String availableForGroupsAt,
      @JsonKey(name: 'vehicle_license_plate') String vehicleLicensePlate,
      @JsonKey(name: 'place') PlaceResponse place,
      @JsonKey(name: 'seller') UserResponse seller,
      @JsonKey(name: 'created_at') String createdAt});

  @override
  $PlaceResponseCopyWith<$Res> get place;
  @override
  $UserResponseCopyWith<$Res> get seller;
}

/// @nodoc
class __$AdvertisementResponseCopyWithImpl<$Res>
    extends _$AdvertisementResponseCopyWithImpl<$Res>
    implements _$AdvertisementResponseCopyWith<$Res> {
  __$AdvertisementResponseCopyWithImpl(_AdvertisementResponse _value,
      $Res Function(_AdvertisementResponse) _then)
      : super(_value, (v) => _then(v as _AdvertisementResponse));

  @override
  _AdvertisementResponse get _value => super._value as _AdvertisementResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? products = freezed,
    Object? deliveryAt = freezed,
    Object? availableForGroupsAt = freezed,
    Object? vehicleLicensePlate = freezed,
    Object? place = freezed,
    Object? seller = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_AdvertisementResponse(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>,
      deliveryAt == freezed
          ? _value.deliveryAt
          : deliveryAt // ignore: cast_nullable_to_non_nullable
              as String,
      availableForGroupsAt == freezed
          ? _value.availableForGroupsAt
          : availableForGroupsAt // ignore: cast_nullable_to_non_nullable
              as String,
      vehicleLicensePlate == freezed
          ? _value.vehicleLicensePlate
          : vehicleLicensePlate // ignore: cast_nullable_to_non_nullable
              as String,
      place == freezed
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as PlaceResponse,
      seller == freezed
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as UserResponse,
      createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AdvertisementResponse implements _AdvertisementResponse {
  const _$_AdvertisementResponse(
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'products') this.products,
      @JsonKey(name: 'delivery_at') this.deliveryAt,
      @JsonKey(name: 'available_for_groups_at') this.availableForGroupsAt,
      @JsonKey(name: 'vehicle_license_plate') this.vehicleLicensePlate,
      @JsonKey(name: 'place') this.place,
      @JsonKey(name: 'seller') this.seller,
      @JsonKey(name: 'created_at') this.createdAt);

  factory _$_AdvertisementResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_AdvertisementResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'products')
  final List<ProductResponse> products;
  @override
  @JsonKey(name: 'delivery_at')
  final String deliveryAt;
  @override
  @JsonKey(name: 'available_for_groups_at')
  final String availableForGroupsAt;
  @override
  @JsonKey(name: 'vehicle_license_plate')
  final String vehicleLicensePlate;
  @override
  @JsonKey(name: 'place')
  final PlaceResponse place;
  @override
  @JsonKey(name: 'seller')
  final UserResponse seller;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'AdvertisementResponse(id: $id, products: $products, deliveryAt: $deliveryAt, availableForGroupsAt: $availableForGroupsAt, vehicleLicensePlate: $vehicleLicensePlate, place: $place, seller: $seller, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdvertisementResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)) &&
            (identical(other.deliveryAt, deliveryAt) ||
                const DeepCollectionEquality()
                    .equals(other.deliveryAt, deliveryAt)) &&
            (identical(other.availableForGroupsAt, availableForGroupsAt) ||
                const DeepCollectionEquality().equals(
                    other.availableForGroupsAt, availableForGroupsAt)) &&
            (identical(other.vehicleLicensePlate, vehicleLicensePlate) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleLicensePlate, vehicleLicensePlate)) &&
            (identical(other.place, place) ||
                const DeepCollectionEquality().equals(other.place, place)) &&
            (identical(other.seller, seller) ||
                const DeepCollectionEquality().equals(other.seller, seller)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(products) ^
      const DeepCollectionEquality().hash(deliveryAt) ^
      const DeepCollectionEquality().hash(availableForGroupsAt) ^
      const DeepCollectionEquality().hash(vehicleLicensePlate) ^
      const DeepCollectionEquality().hash(place) ^
      const DeepCollectionEquality().hash(seller) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$AdvertisementResponseCopyWith<_AdvertisementResponse> get copyWith =>
      __$AdvertisementResponseCopyWithImpl<_AdvertisementResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AdvertisementResponseToJson(this);
  }
}

abstract class _AdvertisementResponse implements AdvertisementResponse {
  const factory _AdvertisementResponse(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'products') List<ProductResponse> products,
      @JsonKey(name: 'delivery_at') String deliveryAt,
      @JsonKey(name: 'available_for_groups_at') String availableForGroupsAt,
      @JsonKey(name: 'vehicle_license_plate') String vehicleLicensePlate,
      @JsonKey(name: 'place') PlaceResponse place,
      @JsonKey(name: 'seller') UserResponse seller,
      @JsonKey(name: 'created_at') String createdAt) = _$_AdvertisementResponse;

  factory _AdvertisementResponse.fromJson(Map<String, dynamic> json) =
      _$_AdvertisementResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'products')
  List<ProductResponse> get products => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'delivery_at')
  String get deliveryAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'available_for_groups_at')
  String get availableForGroupsAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'vehicle_license_plate')
  String get vehicleLicensePlate => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'place')
  PlaceResponse get place => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'seller')
  UserResponse get seller => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AdvertisementResponseCopyWith<_AdvertisementResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductResponse _$ProductResponseFromJson(Map<String, dynamic> json) {
  return _ProductResponse.fromJson(json);
}

/// @nodoc
class _$ProductResponseTearOff {
  const _$ProductResponseTearOff();

  _ProductResponse call(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'measurement_unit') String unitMeasure,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'unit_price') String unitPrice,
      @JsonKey(name: 'rating') String rating,
      @JsonKey(name: 'kind') String kind,
      @JsonKey(name: 'observation') String observation,
      @JsonKey(name: 'images') List<AvatarResponse> images,
      @JsonKey(name: 'created_at') String createdAt) {
    return _ProductResponse(
      id,
      unitMeasure,
      quantity,
      unitPrice,
      rating,
      kind,
      observation,
      images,
      createdAt,
    );
  }

  ProductResponse fromJson(Map<String, Object> json) {
    return ProductResponse.fromJson(json);
  }
}

/// @nodoc
const $ProductResponse = _$ProductResponseTearOff();

/// @nodoc
mixin _$ProductResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'measurement_unit')
  String get unitMeasure => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_price')
  String get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  String get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'kind')
  String get kind => throw _privateConstructorUsedError;
  @JsonKey(name: 'observation')
  String get observation => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<AvatarResponse> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductResponseCopyWith<ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductResponseCopyWith<$Res> {
  factory $ProductResponseCopyWith(
          ProductResponse value, $Res Function(ProductResponse) then) =
      _$ProductResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'measurement_unit') String unitMeasure,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'unit_price') String unitPrice,
      @JsonKey(name: 'rating') String rating,
      @JsonKey(name: 'kind') String kind,
      @JsonKey(name: 'observation') String observation,
      @JsonKey(name: 'images') List<AvatarResponse> images,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class _$ProductResponseCopyWithImpl<$Res>
    implements $ProductResponseCopyWith<$Res> {
  _$ProductResponseCopyWithImpl(this._value, this._then);

  final ProductResponse _value;
  // ignore: unused_field
  final $Res Function(ProductResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? unitMeasure = freezed,
    Object? quantity = freezed,
    Object? unitPrice = freezed,
    Object? rating = freezed,
    Object? kind = freezed,
    Object? observation = freezed,
    Object? images = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      unitMeasure: unitMeasure == freezed
          ? _value.unitMeasure
          : unitMeasure // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice: unitPrice == freezed
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      observation: observation == freezed
          ? _value.observation
          : observation // ignore: cast_nullable_to_non_nullable
              as String,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<AvatarResponse>,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ProductResponseCopyWith<$Res>
    implements $ProductResponseCopyWith<$Res> {
  factory _$ProductResponseCopyWith(
          _ProductResponse value, $Res Function(_ProductResponse) then) =
      __$ProductResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'measurement_unit') String unitMeasure,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'unit_price') String unitPrice,
      @JsonKey(name: 'rating') String rating,
      @JsonKey(name: 'kind') String kind,
      @JsonKey(name: 'observation') String observation,
      @JsonKey(name: 'images') List<AvatarResponse> images,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class __$ProductResponseCopyWithImpl<$Res>
    extends _$ProductResponseCopyWithImpl<$Res>
    implements _$ProductResponseCopyWith<$Res> {
  __$ProductResponseCopyWithImpl(
      _ProductResponse _value, $Res Function(_ProductResponse) _then)
      : super(_value, (v) => _then(v as _ProductResponse));

  @override
  _ProductResponse get _value => super._value as _ProductResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? unitMeasure = freezed,
    Object? quantity = freezed,
    Object? unitPrice = freezed,
    Object? rating = freezed,
    Object? kind = freezed,
    Object? observation = freezed,
    Object? images = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_ProductResponse(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      unitMeasure == freezed
          ? _value.unitMeasure
          : unitMeasure // ignore: cast_nullable_to_non_nullable
              as String,
      quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      unitPrice == freezed
          ? _value.unitPrice
          : unitPrice // ignore: cast_nullable_to_non_nullable
              as String,
      rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      observation == freezed
          ? _value.observation
          : observation // ignore: cast_nullable_to_non_nullable
              as String,
      images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<AvatarResponse>,
      createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductResponse implements _ProductResponse {
  const _$_ProductResponse(
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'measurement_unit') this.unitMeasure,
      @JsonKey(name: 'quantity') this.quantity,
      @JsonKey(name: 'unit_price') this.unitPrice,
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'kind') this.kind,
      @JsonKey(name: 'observation') this.observation,
      @JsonKey(name: 'images') this.images,
      @JsonKey(name: 'created_at') this.createdAt);

  factory _$_ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'measurement_unit')
  final String unitMeasure;
  @override
  @JsonKey(name: 'quantity')
  final int quantity;
  @override
  @JsonKey(name: 'unit_price')
  final String unitPrice;
  @override
  @JsonKey(name: 'rating')
  final String rating;
  @override
  @JsonKey(name: 'kind')
  final String kind;
  @override
  @JsonKey(name: 'observation')
  final String observation;
  @override
  @JsonKey(name: 'images')
  final List<AvatarResponse> images;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'ProductResponse(id: $id, unitMeasure: $unitMeasure, quantity: $quantity, unitPrice: $unitPrice, rating: $rating, kind: $kind, observation: $observation, images: $images, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.unitMeasure, unitMeasure) ||
                const DeepCollectionEquality()
                    .equals(other.unitMeasure, unitMeasure)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.unitPrice, unitPrice) ||
                const DeepCollectionEquality()
                    .equals(other.unitPrice, unitPrice)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.observation, observation) ||
                const DeepCollectionEquality()
                    .equals(other.observation, observation)) &&
            (identical(other.images, images) ||
                const DeepCollectionEquality().equals(other.images, images)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(unitMeasure) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(unitPrice) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(observation) ^
      const DeepCollectionEquality().hash(images) ^
      const DeepCollectionEquality().hash(createdAt);

  @JsonKey(ignore: true)
  @override
  _$ProductResponseCopyWith<_ProductResponse> get copyWith =>
      __$ProductResponseCopyWithImpl<_ProductResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductResponseToJson(this);
  }
}

abstract class _ProductResponse implements ProductResponse {
  const factory _ProductResponse(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'measurement_unit') String unitMeasure,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'unit_price') String unitPrice,
      @JsonKey(name: 'rating') String rating,
      @JsonKey(name: 'kind') String kind,
      @JsonKey(name: 'observation') String observation,
      @JsonKey(name: 'images') List<AvatarResponse> images,
      @JsonKey(name: 'created_at') String createdAt) = _$_ProductResponse;

  factory _ProductResponse.fromJson(Map<String, dynamic> json) =
      _$_ProductResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'measurement_unit')
  String get unitMeasure => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'quantity')
  int get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'unit_price')
  String get unitPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'rating')
  String get rating => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'kind')
  String get kind => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'observation')
  String get observation => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'images')
  List<AvatarResponse> get images => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductResponseCopyWith<_ProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

UnitMeasureResponse _$UnitMeasureResponseFromJson(Map<String, dynamic> json) {
  return _UnitMeasureResponse.fromJson(json);
}

/// @nodoc
class _$UnitMeasureResponseTearOff {
  const _$UnitMeasureResponseTearOff();

  _UnitMeasureResponse call(@JsonKey(name: 'id') int id) {
    return _UnitMeasureResponse(
      id,
    );
  }

  UnitMeasureResponse fromJson(Map<String, Object> json) {
    return UnitMeasureResponse.fromJson(json);
  }
}

/// @nodoc
const $UnitMeasureResponse = _$UnitMeasureResponseTearOff();

/// @nodoc
mixin _$UnitMeasureResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UnitMeasureResponseCopyWith<UnitMeasureResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitMeasureResponseCopyWith<$Res> {
  factory $UnitMeasureResponseCopyWith(
          UnitMeasureResponse value, $Res Function(UnitMeasureResponse) then) =
      _$UnitMeasureResponseCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'id') int id});
}

/// @nodoc
class _$UnitMeasureResponseCopyWithImpl<$Res>
    implements $UnitMeasureResponseCopyWith<$Res> {
  _$UnitMeasureResponseCopyWithImpl(this._value, this._then);

  final UnitMeasureResponse _value;
  // ignore: unused_field
  final $Res Function(UnitMeasureResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$UnitMeasureResponseCopyWith<$Res>
    implements $UnitMeasureResponseCopyWith<$Res> {
  factory _$UnitMeasureResponseCopyWith(_UnitMeasureResponse value,
          $Res Function(_UnitMeasureResponse) then) =
      __$UnitMeasureResponseCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'id') int id});
}

/// @nodoc
class __$UnitMeasureResponseCopyWithImpl<$Res>
    extends _$UnitMeasureResponseCopyWithImpl<$Res>
    implements _$UnitMeasureResponseCopyWith<$Res> {
  __$UnitMeasureResponseCopyWithImpl(
      _UnitMeasureResponse _value, $Res Function(_UnitMeasureResponse) _then)
      : super(_value, (v) => _then(v as _UnitMeasureResponse));

  @override
  _UnitMeasureResponse get _value => super._value as _UnitMeasureResponse;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_UnitMeasureResponse(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UnitMeasureResponse implements _UnitMeasureResponse {
  const _$_UnitMeasureResponse(@JsonKey(name: 'id') this.id);

  factory _$_UnitMeasureResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_UnitMeasureResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;

  @override
  String toString() {
    return 'UnitMeasureResponse(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UnitMeasureResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$UnitMeasureResponseCopyWith<_UnitMeasureResponse> get copyWith =>
      __$UnitMeasureResponseCopyWithImpl<_UnitMeasureResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UnitMeasureResponseToJson(this);
  }
}

abstract class _UnitMeasureResponse implements UnitMeasureResponse {
  const factory _UnitMeasureResponse(@JsonKey(name: 'id') int id) =
      _$_UnitMeasureResponse;

  factory _UnitMeasureResponse.fromJson(Map<String, dynamic> json) =
      _$_UnitMeasureResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UnitMeasureResponseCopyWith<_UnitMeasureResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
