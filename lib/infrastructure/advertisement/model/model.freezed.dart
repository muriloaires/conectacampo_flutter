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
      @JsonKey(name: 'products') List<AdProductResponse> products,
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
  List<AdProductResponse> get products => throw _privateConstructorUsedError;
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
      @JsonKey(name: 'products') List<AdProductResponse> products,
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
              as List<AdProductResponse>,
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
      @JsonKey(name: 'products') List<AdProductResponse> products,
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
              as List<AdProductResponse>,
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
  final List<AdProductResponse> products;
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
      @JsonKey(name: 'products') List<AdProductResponse> products,
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
  List<AdProductResponse> get products => throw _privateConstructorUsedError;
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

AdProductResponse _$AdProductResponseFromJson(Map<String, dynamic> json) {
  return _AdProductResponse.fromJson(json);
}

/// @nodoc
class _$AdProductResponseTearOff {
  const _$AdProductResponseTearOff();

  _AdProductResponse call(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'measurement_unit') String unitMeasure,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'unit_price') String? unitPrice,
      @JsonKey(name: 'rating') String rating,
      @JsonKey(name: 'kind') String kind,
      @JsonKey(name: 'observation') String? observation,
      @JsonKey(name: 'images') List<AvatarResponse> images,
      @JsonKey(name: 'created_at') String createdAt) {
    return _AdProductResponse(
      id,
      name,
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

  AdProductResponse fromJson(Map<String, Object> json) {
    return AdProductResponse.fromJson(json);
  }
}

/// @nodoc
const $AdProductResponse = _$AdProductResponseTearOff();

/// @nodoc
mixin _$AdProductResponse {
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'measurement_unit')
  String get unitMeasure => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'unit_price')
  String? get unitPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  String get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'kind')
  String get kind => throw _privateConstructorUsedError;
  @JsonKey(name: 'observation')
  String? get observation => throw _privateConstructorUsedError;
  @JsonKey(name: 'images')
  List<AvatarResponse> get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdProductResponseCopyWith<AdProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdProductResponseCopyWith<$Res> {
  factory $AdProductResponseCopyWith(
          AdProductResponse value, $Res Function(AdProductResponse) then) =
      _$AdProductResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'measurement_unit') String unitMeasure,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'unit_price') String? unitPrice,
      @JsonKey(name: 'rating') String rating,
      @JsonKey(name: 'kind') String kind,
      @JsonKey(name: 'observation') String? observation,
      @JsonKey(name: 'images') List<AvatarResponse> images,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class _$AdProductResponseCopyWithImpl<$Res>
    implements $AdProductResponseCopyWith<$Res> {
  _$AdProductResponseCopyWithImpl(this._value, this._then);

  final AdProductResponse _value;
  // ignore: unused_field
  final $Res Function(AdProductResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String?,
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
              as String?,
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
abstract class _$AdProductResponseCopyWith<$Res>
    implements $AdProductResponseCopyWith<$Res> {
  factory _$AdProductResponseCopyWith(
          _AdProductResponse value, $Res Function(_AdProductResponse) then) =
      __$AdProductResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'measurement_unit') String unitMeasure,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'unit_price') String? unitPrice,
      @JsonKey(name: 'rating') String rating,
      @JsonKey(name: 'kind') String kind,
      @JsonKey(name: 'observation') String? observation,
      @JsonKey(name: 'images') List<AvatarResponse> images,
      @JsonKey(name: 'created_at') String createdAt});
}

/// @nodoc
class __$AdProductResponseCopyWithImpl<$Res>
    extends _$AdProductResponseCopyWithImpl<$Res>
    implements _$AdProductResponseCopyWith<$Res> {
  __$AdProductResponseCopyWithImpl(
      _AdProductResponse _value, $Res Function(_AdProductResponse) _then)
      : super(_value, (v) => _then(v as _AdProductResponse));

  @override
  _AdProductResponse get _value => super._value as _AdProductResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? unitMeasure = freezed,
    Object? quantity = freezed,
    Object? unitPrice = freezed,
    Object? rating = freezed,
    Object? kind = freezed,
    Object? observation = freezed,
    Object? images = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_AdProductResponse(
      id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String?,
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
              as String?,
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
class _$_AdProductResponse implements _AdProductResponse {
  const _$_AdProductResponse(
      @JsonKey(name: 'id') this.id,
      @JsonKey(name: 'name') this.name,
      @JsonKey(name: 'measurement_unit') this.unitMeasure,
      @JsonKey(name: 'quantity') this.quantity,
      @JsonKey(name: 'unit_price') this.unitPrice,
      @JsonKey(name: 'rating') this.rating,
      @JsonKey(name: 'kind') this.kind,
      @JsonKey(name: 'observation') this.observation,
      @JsonKey(name: 'images') this.images,
      @JsonKey(name: 'created_at') this.createdAt);

  factory _$_AdProductResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_AdProductResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'measurement_unit')
  final String unitMeasure;
  @override
  @JsonKey(name: 'quantity')
  final int quantity;
  @override
  @JsonKey(name: 'unit_price')
  final String? unitPrice;
  @override
  @JsonKey(name: 'rating')
  final String rating;
  @override
  @JsonKey(name: 'kind')
  final String kind;
  @override
  @JsonKey(name: 'observation')
  final String? observation;
  @override
  @JsonKey(name: 'images')
  final List<AvatarResponse> images;
  @override
  @JsonKey(name: 'created_at')
  final String createdAt;

  @override
  String toString() {
    return 'AdProductResponse(id: $id, name: $name, unitMeasure: $unitMeasure, quantity: $quantity, unitPrice: $unitPrice, rating: $rating, kind: $kind, observation: $observation, images: $images, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdProductResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
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
      const DeepCollectionEquality().hash(name) ^
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
  _$AdProductResponseCopyWith<_AdProductResponse> get copyWith =>
      __$AdProductResponseCopyWithImpl<_AdProductResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AdProductResponseToJson(this);
  }
}

abstract class _AdProductResponse implements AdProductResponse {
  const factory _AdProductResponse(
      @JsonKey(name: 'id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'measurement_unit') String unitMeasure,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'unit_price') String? unitPrice,
      @JsonKey(name: 'rating') String rating,
      @JsonKey(name: 'kind') String kind,
      @JsonKey(name: 'observation') String? observation,
      @JsonKey(name: 'images') List<AvatarResponse> images,
      @JsonKey(name: 'created_at') String createdAt) = _$_AdProductResponse;

  factory _AdProductResponse.fromJson(Map<String, dynamic> json) =
      _$_AdProductResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'measurement_unit')
  String get unitMeasure => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'quantity')
  int get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'unit_price')
  String? get unitPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'rating')
  String get rating => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'kind')
  String get kind => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'observation')
  String? get observation => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'images')
  List<AvatarResponse> get images => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  String get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AdProductResponseCopyWith<_AdProductResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
