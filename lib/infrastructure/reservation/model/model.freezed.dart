// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReservationItemDB _$ReservationItemDBFromJson(Map<String, dynamic> json) {
  return _ReservationItemDB.fromJson(json);
}

/// @nodoc
class _$ReservationItemDBTearOff {
  const _$ReservationItemDBTearOff();

  _ReservationItemDB call(
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
      @JsonKey(name: 'image') required String image}) {
    return _ReservationItemDB(
      id: id,
      name: name,
      measurementUnit: measurementUnit,
      quantity: quantity,
      rating: rating,
      kind: kind,
      sellerName: sellerName,
      sellerPhone: sellerPhone,
      sellerId: sellerId,
      advertisementId: advertisementId,
      image: image,
    );
  }

  ReservationItemDB fromJson(Map<String, Object> json) {
    return ReservationItemDB.fromJson(json);
  }
}

/// @nodoc
const $ReservationItemDB = _$ReservationItemDBTearOff();

/// @nodoc
mixin _$ReservationItemDB {
  @JsonKey(name: '_id')
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'measuremente_unit')
  String get measurementUnit => throw _privateConstructorUsedError;
  @JsonKey(name: 'ammount')
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'rating')
  String get rating => throw _privateConstructorUsedError;
  @JsonKey(name: 'kind')
  String get kind => throw _privateConstructorUsedError;
  @JsonKey(name: 'seller_name')
  String get sellerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'seller_phone')
  String get sellerPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'seller_id')
  String get sellerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'advertisement_id')
  int get advertisementId => throw _privateConstructorUsedError;
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReservationItemDBCopyWith<ReservationItemDB> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationItemDBCopyWith<$Res> {
  factory $ReservationItemDBCopyWith(
          ReservationItemDB value, $Res Function(ReservationItemDB) then) =
      _$ReservationItemDBCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: '_id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'measuremente_unit') String measurementUnit,
      @JsonKey(name: 'ammount') int quantity,
      @JsonKey(name: 'rating') String rating,
      @JsonKey(name: 'kind') String kind,
      @JsonKey(name: 'seller_name') String sellerName,
      @JsonKey(name: 'seller_phone') String sellerPhone,
      @JsonKey(name: 'seller_id') String sellerId,
      @JsonKey(name: 'advertisement_id') int advertisementId,
      @JsonKey(name: 'image') String image});
}

/// @nodoc
class _$ReservationItemDBCopyWithImpl<$Res>
    implements $ReservationItemDBCopyWith<$Res> {
  _$ReservationItemDBCopyWithImpl(this._value, this._then);

  final ReservationItemDB _value;
  // ignore: unused_field
  final $Res Function(ReservationItemDB) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? measurementUnit = freezed,
    Object? quantity = freezed,
    Object? rating = freezed,
    Object? kind = freezed,
    Object? sellerName = freezed,
    Object? sellerPhone = freezed,
    Object? sellerId = freezed,
    Object? advertisementId = freezed,
    Object? image = freezed,
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
      measurementUnit: measurementUnit == freezed
          ? _value.measurementUnit
          : measurementUnit // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      sellerName: sellerName == freezed
          ? _value.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
      sellerPhone: sellerPhone == freezed
          ? _value.sellerPhone
          : sellerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      sellerId: sellerId == freezed
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as String,
      advertisementId: advertisementId == freezed
          ? _value.advertisementId
          : advertisementId // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ReservationItemDBCopyWith<$Res>
    implements $ReservationItemDBCopyWith<$Res> {
  factory _$ReservationItemDBCopyWith(
          _ReservationItemDB value, $Res Function(_ReservationItemDB) then) =
      __$ReservationItemDBCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: '_id') int id,
      @JsonKey(name: 'name') String name,
      @JsonKey(name: 'measuremente_unit') String measurementUnit,
      @JsonKey(name: 'ammount') int quantity,
      @JsonKey(name: 'rating') String rating,
      @JsonKey(name: 'kind') String kind,
      @JsonKey(name: 'seller_name') String sellerName,
      @JsonKey(name: 'seller_phone') String sellerPhone,
      @JsonKey(name: 'seller_id') String sellerId,
      @JsonKey(name: 'advertisement_id') int advertisementId,
      @JsonKey(name: 'image') String image});
}

/// @nodoc
class __$ReservationItemDBCopyWithImpl<$Res>
    extends _$ReservationItemDBCopyWithImpl<$Res>
    implements _$ReservationItemDBCopyWith<$Res> {
  __$ReservationItemDBCopyWithImpl(
      _ReservationItemDB _value, $Res Function(_ReservationItemDB) _then)
      : super(_value, (v) => _then(v as _ReservationItemDB));

  @override
  _ReservationItemDB get _value => super._value as _ReservationItemDB;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? measurementUnit = freezed,
    Object? quantity = freezed,
    Object? rating = freezed,
    Object? kind = freezed,
    Object? sellerName = freezed,
    Object? sellerPhone = freezed,
    Object? sellerId = freezed,
    Object? advertisementId = freezed,
    Object? image = freezed,
  }) {
    return _then(_ReservationItemDB(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      measurementUnit: measurementUnit == freezed
          ? _value.measurementUnit
          : measurementUnit // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String,
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      sellerName: sellerName == freezed
          ? _value.sellerName
          : sellerName // ignore: cast_nullable_to_non_nullable
              as String,
      sellerPhone: sellerPhone == freezed
          ? _value.sellerPhone
          : sellerPhone // ignore: cast_nullable_to_non_nullable
              as String,
      sellerId: sellerId == freezed
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as String,
      advertisementId: advertisementId == freezed
          ? _value.advertisementId
          : advertisementId // ignore: cast_nullable_to_non_nullable
              as int,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReservationItemDB implements _ReservationItemDB {
  const _$_ReservationItemDB(
      {@JsonKey(name: '_id') required this.id,
      @JsonKey(name: 'name') required this.name,
      @JsonKey(name: 'measuremente_unit') required this.measurementUnit,
      @JsonKey(name: 'ammount') required this.quantity,
      @JsonKey(name: 'rating') required this.rating,
      @JsonKey(name: 'kind') required this.kind,
      @JsonKey(name: 'seller_name') required this.sellerName,
      @JsonKey(name: 'seller_phone') required this.sellerPhone,
      @JsonKey(name: 'seller_id') required this.sellerId,
      @JsonKey(name: 'advertisement_id') required this.advertisementId,
      @JsonKey(name: 'image') required this.image});

  factory _$_ReservationItemDB.fromJson(Map<String, dynamic> json) =>
      _$_$_ReservationItemDBFromJson(json);

  @override
  @JsonKey(name: '_id')
  final int id;
  @override
  @JsonKey(name: 'name')
  final String name;
  @override
  @JsonKey(name: 'measuremente_unit')
  final String measurementUnit;
  @override
  @JsonKey(name: 'ammount')
  final int quantity;
  @override
  @JsonKey(name: 'rating')
  final String rating;
  @override
  @JsonKey(name: 'kind')
  final String kind;
  @override
  @JsonKey(name: 'seller_name')
  final String sellerName;
  @override
  @JsonKey(name: 'seller_phone')
  final String sellerPhone;
  @override
  @JsonKey(name: 'seller_id')
  final String sellerId;
  @override
  @JsonKey(name: 'advertisement_id')
  final int advertisementId;
  @override
  @JsonKey(name: 'image')
  final String image;

  @override
  String toString() {
    return 'ReservationItemDB(id: $id, name: $name, measurementUnit: $measurementUnit, quantity: $quantity, rating: $rating, kind: $kind, sellerName: $sellerName, sellerPhone: $sellerPhone, sellerId: $sellerId, advertisementId: $advertisementId, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReservationItemDB &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.measurementUnit, measurementUnit) ||
                const DeepCollectionEquality()
                    .equals(other.measurementUnit, measurementUnit)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.rating, rating) ||
                const DeepCollectionEquality().equals(other.rating, rating)) &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.sellerName, sellerName) ||
                const DeepCollectionEquality()
                    .equals(other.sellerName, sellerName)) &&
            (identical(other.sellerPhone, sellerPhone) ||
                const DeepCollectionEquality()
                    .equals(other.sellerPhone, sellerPhone)) &&
            (identical(other.sellerId, sellerId) ||
                const DeepCollectionEquality()
                    .equals(other.sellerId, sellerId)) &&
            (identical(other.advertisementId, advertisementId) ||
                const DeepCollectionEquality()
                    .equals(other.advertisementId, advertisementId)) &&
            (identical(other.image, image) ||
                const DeepCollectionEquality().equals(other.image, image)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(measurementUnit) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(sellerName) ^
      const DeepCollectionEquality().hash(sellerPhone) ^
      const DeepCollectionEquality().hash(sellerId) ^
      const DeepCollectionEquality().hash(advertisementId) ^
      const DeepCollectionEquality().hash(image);

  @JsonKey(ignore: true)
  @override
  _$ReservationItemDBCopyWith<_ReservationItemDB> get copyWith =>
      __$ReservationItemDBCopyWithImpl<_ReservationItemDB>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReservationItemDBToJson(this);
  }
}

abstract class _ReservationItemDB implements ReservationItemDB {
  const factory _ReservationItemDB(
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
      @JsonKey(name: 'image') required String image}) = _$_ReservationItemDB;

  factory _ReservationItemDB.fromJson(Map<String, dynamic> json) =
      _$_ReservationItemDB.fromJson;

  @override
  @JsonKey(name: '_id')
  int get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'name')
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'measuremente_unit')
  String get measurementUnit => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ammount')
  int get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'rating')
  String get rating => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'kind')
  String get kind => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'seller_name')
  String get sellerName => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'seller_phone')
  String get sellerPhone => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'seller_id')
  String get sellerId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'advertisement_id')
  int get advertisementId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReservationItemDBCopyWith<_ReservationItemDB> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductReservationAttributes _$ProductReservationAttributesFromJson(
    Map<String, dynamic> json) {
  return _ProductReservationAttributes.fromJson(json);
}

/// @nodoc
class _$ProductReservationAttributesTearOff {
  const _$ProductReservationAttributesTearOff();

  _ProductReservationAttributes call(
      {@JsonKey(name: 'quantity') required int quantity,
      @JsonKey(name: 'advertisement_product_id') required int adProductId}) {
    return _ProductReservationAttributes(
      quantity: quantity,
      adProductId: adProductId,
    );
  }

  ProductReservationAttributes fromJson(Map<String, Object> json) {
    return ProductReservationAttributes.fromJson(json);
  }
}

/// @nodoc
const $ProductReservationAttributes = _$ProductReservationAttributesTearOff();

/// @nodoc
mixin _$ProductReservationAttributes {
  @JsonKey(name: 'quantity')
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'advertisement_product_id')
  int get adProductId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductReservationAttributesCopyWith<ProductReservationAttributes>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductReservationAttributesCopyWith<$Res> {
  factory $ProductReservationAttributesCopyWith(
          ProductReservationAttributes value,
          $Res Function(ProductReservationAttributes) then) =
      _$ProductReservationAttributesCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'advertisement_product_id') int adProductId});
}

/// @nodoc
class _$ProductReservationAttributesCopyWithImpl<$Res>
    implements $ProductReservationAttributesCopyWith<$Res> {
  _$ProductReservationAttributesCopyWithImpl(this._value, this._then);

  final ProductReservationAttributes _value;
  // ignore: unused_field
  final $Res Function(ProductReservationAttributes) _then;

  @override
  $Res call({
    Object? quantity = freezed,
    Object? adProductId = freezed,
  }) {
    return _then(_value.copyWith(
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      adProductId: adProductId == freezed
          ? _value.adProductId
          : adProductId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ProductReservationAttributesCopyWith<$Res>
    implements $ProductReservationAttributesCopyWith<$Res> {
  factory _$ProductReservationAttributesCopyWith(
          _ProductReservationAttributes value,
          $Res Function(_ProductReservationAttributes) then) =
      __$ProductReservationAttributesCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'advertisement_product_id') int adProductId});
}

/// @nodoc
class __$ProductReservationAttributesCopyWithImpl<$Res>
    extends _$ProductReservationAttributesCopyWithImpl<$Res>
    implements _$ProductReservationAttributesCopyWith<$Res> {
  __$ProductReservationAttributesCopyWithImpl(
      _ProductReservationAttributes _value,
      $Res Function(_ProductReservationAttributes) _then)
      : super(_value, (v) => _then(v as _ProductReservationAttributes));

  @override
  _ProductReservationAttributes get _value =>
      super._value as _ProductReservationAttributes;

  @override
  $Res call({
    Object? quantity = freezed,
    Object? adProductId = freezed,
  }) {
    return _then(_ProductReservationAttributes(
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      adProductId: adProductId == freezed
          ? _value.adProductId
          : adProductId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductReservationAttributes implements _ProductReservationAttributes {
  const _$_ProductReservationAttributes(
      {@JsonKey(name: 'quantity') required this.quantity,
      @JsonKey(name: 'advertisement_product_id') required this.adProductId});

  factory _$_ProductReservationAttributes.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductReservationAttributesFromJson(json);

  @override
  @JsonKey(name: 'quantity')
  final int quantity;
  @override
  @JsonKey(name: 'advertisement_product_id')
  final int adProductId;

  @override
  String toString() {
    return 'ProductReservationAttributes(quantity: $quantity, adProductId: $adProductId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductReservationAttributes &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.adProductId, adProductId) ||
                const DeepCollectionEquality()
                    .equals(other.adProductId, adProductId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(adProductId);

  @JsonKey(ignore: true)
  @override
  _$ProductReservationAttributesCopyWith<_ProductReservationAttributes>
      get copyWith => __$ProductReservationAttributesCopyWithImpl<
          _ProductReservationAttributes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductReservationAttributesToJson(this);
  }
}

abstract class _ProductReservationAttributes
    implements ProductReservationAttributes {
  const factory _ProductReservationAttributes(
      {@JsonKey(name: 'quantity')
          required int quantity,
      @JsonKey(name: 'advertisement_product_id')
          required int adProductId}) = _$_ProductReservationAttributes;

  factory _ProductReservationAttributes.fromJson(Map<String, dynamic> json) =
      _$_ProductReservationAttributes.fromJson;

  @override
  @JsonKey(name: 'quantity')
  int get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'advertisement_product_id')
  int get adProductId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductReservationAttributesCopyWith<_ProductReservationAttributes>
      get copyWith => throw _privateConstructorUsedError;
}

ReservationRequest _$ReservationRequestFromJson(Map<String, dynamic> json) {
  return _ReservationRequest.fromJson(json);
}

/// @nodoc
class _$ReservationRequestTearOff {
  const _$ReservationRequestTearOff();

  _ReservationRequest call(
      {@JsonKey(name: 'product_reservations_attributes')
          required List<ProductReservationAttributes> adProducts}) {
    return _ReservationRequest(
      adProducts: adProducts,
    );
  }

  ReservationRequest fromJson(Map<String, Object> json) {
    return ReservationRequest.fromJson(json);
  }
}

/// @nodoc
const $ReservationRequest = _$ReservationRequestTearOff();

/// @nodoc
mixin _$ReservationRequest {
  @JsonKey(name: 'product_reservations_attributes')
  List<ProductReservationAttributes> get adProducts =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReservationRequestCopyWith<ReservationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationRequestCopyWith<$Res> {
  factory $ReservationRequestCopyWith(
          ReservationRequest value, $Res Function(ReservationRequest) then) =
      _$ReservationRequestCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'product_reservations_attributes')
          List<ProductReservationAttributes> adProducts});
}

/// @nodoc
class _$ReservationRequestCopyWithImpl<$Res>
    implements $ReservationRequestCopyWith<$Res> {
  _$ReservationRequestCopyWithImpl(this._value, this._then);

  final ReservationRequest _value;
  // ignore: unused_field
  final $Res Function(ReservationRequest) _then;

  @override
  $Res call({
    Object? adProducts = freezed,
  }) {
    return _then(_value.copyWith(
      adProducts: adProducts == freezed
          ? _value.adProducts
          : adProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductReservationAttributes>,
    ));
  }
}

/// @nodoc
abstract class _$ReservationRequestCopyWith<$Res>
    implements $ReservationRequestCopyWith<$Res> {
  factory _$ReservationRequestCopyWith(
          _ReservationRequest value, $Res Function(_ReservationRequest) then) =
      __$ReservationRequestCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'product_reservations_attributes')
          List<ProductReservationAttributes> adProducts});
}

/// @nodoc
class __$ReservationRequestCopyWithImpl<$Res>
    extends _$ReservationRequestCopyWithImpl<$Res>
    implements _$ReservationRequestCopyWith<$Res> {
  __$ReservationRequestCopyWithImpl(
      _ReservationRequest _value, $Res Function(_ReservationRequest) _then)
      : super(_value, (v) => _then(v as _ReservationRequest));

  @override
  _ReservationRequest get _value => super._value as _ReservationRequest;

  @override
  $Res call({
    Object? adProducts = freezed,
  }) {
    return _then(_ReservationRequest(
      adProducts: adProducts == freezed
          ? _value.adProducts
          : adProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductReservationAttributes>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReservationRequest implements _ReservationRequest {
  const _$_ReservationRequest(
      {@JsonKey(name: 'product_reservations_attributes')
          required this.adProducts});

  factory _$_ReservationRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_ReservationRequestFromJson(json);

  @override
  @JsonKey(name: 'product_reservations_attributes')
  final List<ProductReservationAttributes> adProducts;

  @override
  String toString() {
    return 'ReservationRequest(adProducts: $adProducts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReservationRequest &&
            (identical(other.adProducts, adProducts) ||
                const DeepCollectionEquality()
                    .equals(other.adProducts, adProducts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(adProducts);

  @JsonKey(ignore: true)
  @override
  _$ReservationRequestCopyWith<_ReservationRequest> get copyWith =>
      __$ReservationRequestCopyWithImpl<_ReservationRequest>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReservationRequestToJson(this);
  }
}

abstract class _ReservationRequest implements ReservationRequest {
  const factory _ReservationRequest(
          {@JsonKey(name: 'product_reservations_attributes')
              required List<ProductReservationAttributes> adProducts}) =
      _$_ReservationRequest;

  factory _ReservationRequest.fromJson(Map<String, dynamic> json) =
      _$_ReservationRequest.fromJson;

  @override
  @JsonKey(name: 'product_reservations_attributes')
  List<ProductReservationAttributes> get adProducts =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReservationRequestCopyWith<_ReservationRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

ReservationObjRequest _$ReservationObjRequestFromJson(
    Map<String, dynamic> json) {
  return _ReservationObjRequest.fromJson(json);
}

/// @nodoc
class _$ReservationObjRequestTearOff {
  const _$ReservationObjRequestTearOff();

  _ReservationObjRequest call(
      {@JsonKey(name: 'reservation') required ReservationRequest reservation}) {
    return _ReservationObjRequest(
      reservation: reservation,
    );
  }

  ReservationObjRequest fromJson(Map<String, Object> json) {
    return ReservationObjRequest.fromJson(json);
  }
}

/// @nodoc
const $ReservationObjRequest = _$ReservationObjRequestTearOff();

/// @nodoc
mixin _$ReservationObjRequest {
  @JsonKey(name: 'reservation')
  ReservationRequest get reservation => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReservationObjRequestCopyWith<ReservationObjRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationObjRequestCopyWith<$Res> {
  factory $ReservationObjRequestCopyWith(ReservationObjRequest value,
          $Res Function(ReservationObjRequest) then) =
      _$ReservationObjRequestCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'reservation') ReservationRequest reservation});

  $ReservationRequestCopyWith<$Res> get reservation;
}

/// @nodoc
class _$ReservationObjRequestCopyWithImpl<$Res>
    implements $ReservationObjRequestCopyWith<$Res> {
  _$ReservationObjRequestCopyWithImpl(this._value, this._then);

  final ReservationObjRequest _value;
  // ignore: unused_field
  final $Res Function(ReservationObjRequest) _then;

  @override
  $Res call({
    Object? reservation = freezed,
  }) {
    return _then(_value.copyWith(
      reservation: reservation == freezed
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as ReservationRequest,
    ));
  }

  @override
  $ReservationRequestCopyWith<$Res> get reservation {
    return $ReservationRequestCopyWith<$Res>(_value.reservation, (value) {
      return _then(_value.copyWith(reservation: value));
    });
  }
}

/// @nodoc
abstract class _$ReservationObjRequestCopyWith<$Res>
    implements $ReservationObjRequestCopyWith<$Res> {
  factory _$ReservationObjRequestCopyWith(_ReservationObjRequest value,
          $Res Function(_ReservationObjRequest) then) =
      __$ReservationObjRequestCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'reservation') ReservationRequest reservation});

  @override
  $ReservationRequestCopyWith<$Res> get reservation;
}

/// @nodoc
class __$ReservationObjRequestCopyWithImpl<$Res>
    extends _$ReservationObjRequestCopyWithImpl<$Res>
    implements _$ReservationObjRequestCopyWith<$Res> {
  __$ReservationObjRequestCopyWithImpl(_ReservationObjRequest _value,
      $Res Function(_ReservationObjRequest) _then)
      : super(_value, (v) => _then(v as _ReservationObjRequest));

  @override
  _ReservationObjRequest get _value => super._value as _ReservationObjRequest;

  @override
  $Res call({
    Object? reservation = freezed,
  }) {
    return _then(_ReservationObjRequest(
      reservation: reservation == freezed
          ? _value.reservation
          : reservation // ignore: cast_nullable_to_non_nullable
              as ReservationRequest,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReservationObjRequest implements _ReservationObjRequest {
  const _$_ReservationObjRequest(
      {@JsonKey(name: 'reservation') required this.reservation});

  factory _$_ReservationObjRequest.fromJson(Map<String, dynamic> json) =>
      _$_$_ReservationObjRequestFromJson(json);

  @override
  @JsonKey(name: 'reservation')
  final ReservationRequest reservation;

  @override
  String toString() {
    return 'ReservationObjRequest(reservation: $reservation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReservationObjRequest &&
            (identical(other.reservation, reservation) ||
                const DeepCollectionEquality()
                    .equals(other.reservation, reservation)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(reservation);

  @JsonKey(ignore: true)
  @override
  _$ReservationObjRequestCopyWith<_ReservationObjRequest> get copyWith =>
      __$ReservationObjRequestCopyWithImpl<_ReservationObjRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReservationObjRequestToJson(this);
  }
}

abstract class _ReservationObjRequest implements ReservationObjRequest {
  const factory _ReservationObjRequest(
      {@JsonKey(name: 'reservation')
          required ReservationRequest reservation}) = _$_ReservationObjRequest;

  factory _ReservationObjRequest.fromJson(Map<String, dynamic> json) =
      _$_ReservationObjRequest.fromJson;

  @override
  @JsonKey(name: 'reservation')
  ReservationRequest get reservation => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReservationObjRequestCopyWith<_ReservationObjRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

ReservationResponse _$ReservationResponseFromJson(Map<String, dynamic> json) {
  return _ReservationResponse.fromJson(json);
}

/// @nodoc
class _$ReservationResponseTearOff {
  const _$ReservationResponseTearOff();

  _ReservationResponse call(
      {@JsonKey(name: 'id')
          required int? id,
      @JsonKey(name: 'created_at')
          required String? createdAt,
      @JsonKey(name: 'errors')
          required List<ErrorResponse>? errors,
      @JsonKey(name: 'buyer')
          required UserResponse buyer,
      @JsonKey(name: 'seller')
          required UserResponse? seller,
      @JsonKey(name: 'status')
          required String? status,
      @JsonKey(name: 'product_reservations')
          required List<ProductReservationResponse> productReservations}) {
    return _ReservationResponse(
      id: id,
      createdAt: createdAt,
      errors: errors,
      buyer: buyer,
      seller: seller,
      status: status,
      productReservations: productReservations,
    );
  }

  ReservationResponse fromJson(Map<String, Object> json) {
    return ReservationResponse.fromJson(json);
  }
}

/// @nodoc
const $ReservationResponse = _$ReservationResponseTearOff();

/// @nodoc
mixin _$ReservationResponse {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'errors')
  List<ErrorResponse>? get errors => throw _privateConstructorUsedError;
  @JsonKey(name: 'buyer')
  UserResponse get buyer => throw _privateConstructorUsedError;
  @JsonKey(name: 'seller')
  UserResponse? get seller => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_reservations')
  List<ProductReservationResponse> get productReservations =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReservationResponseCopyWith<ReservationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationResponseCopyWith<$Res> {
  factory $ReservationResponseCopyWith(
          ReservationResponse value, $Res Function(ReservationResponse) then) =
      _$ReservationResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id')
          int? id,
      @JsonKey(name: 'created_at')
          String? createdAt,
      @JsonKey(name: 'errors')
          List<ErrorResponse>? errors,
      @JsonKey(name: 'buyer')
          UserResponse buyer,
      @JsonKey(name: 'seller')
          UserResponse? seller,
      @JsonKey(name: 'status')
          String? status,
      @JsonKey(name: 'product_reservations')
          List<ProductReservationResponse> productReservations});

  $UserResponseCopyWith<$Res> get buyer;
  $UserResponseCopyWith<$Res>? get seller;
}

/// @nodoc
class _$ReservationResponseCopyWithImpl<$Res>
    implements $ReservationResponseCopyWith<$Res> {
  _$ReservationResponseCopyWithImpl(this._value, this._then);

  final ReservationResponse _value;
  // ignore: unused_field
  final $Res Function(ReservationResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? errors = freezed,
    Object? buyer = freezed,
    Object? seller = freezed,
    Object? status = freezed,
    Object? productReservations = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ErrorResponse>?,
      buyer: buyer == freezed
          ? _value.buyer
          : buyer // ignore: cast_nullable_to_non_nullable
              as UserResponse,
      seller: seller == freezed
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      productReservations: productReservations == freezed
          ? _value.productReservations
          : productReservations // ignore: cast_nullable_to_non_nullable
              as List<ProductReservationResponse>,
    ));
  }

  @override
  $UserResponseCopyWith<$Res> get buyer {
    return $UserResponseCopyWith<$Res>(_value.buyer, (value) {
      return _then(_value.copyWith(buyer: value));
    });
  }

  @override
  $UserResponseCopyWith<$Res>? get seller {
    if (_value.seller == null) {
      return null;
    }

    return $UserResponseCopyWith<$Res>(_value.seller!, (value) {
      return _then(_value.copyWith(seller: value));
    });
  }
}

/// @nodoc
abstract class _$ReservationResponseCopyWith<$Res>
    implements $ReservationResponseCopyWith<$Res> {
  factory _$ReservationResponseCopyWith(_ReservationResponse value,
          $Res Function(_ReservationResponse) then) =
      __$ReservationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id')
          int? id,
      @JsonKey(name: 'created_at')
          String? createdAt,
      @JsonKey(name: 'errors')
          List<ErrorResponse>? errors,
      @JsonKey(name: 'buyer')
          UserResponse buyer,
      @JsonKey(name: 'seller')
          UserResponse? seller,
      @JsonKey(name: 'status')
          String? status,
      @JsonKey(name: 'product_reservations')
          List<ProductReservationResponse> productReservations});

  @override
  $UserResponseCopyWith<$Res> get buyer;
  @override
  $UserResponseCopyWith<$Res>? get seller;
}

/// @nodoc
class __$ReservationResponseCopyWithImpl<$Res>
    extends _$ReservationResponseCopyWithImpl<$Res>
    implements _$ReservationResponseCopyWith<$Res> {
  __$ReservationResponseCopyWithImpl(
      _ReservationResponse _value, $Res Function(_ReservationResponse) _then)
      : super(_value, (v) => _then(v as _ReservationResponse));

  @override
  _ReservationResponse get _value => super._value as _ReservationResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? errors = freezed,
    Object? buyer = freezed,
    Object? seller = freezed,
    Object? status = freezed,
    Object? productReservations = freezed,
  }) {
    return _then(_ReservationResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ErrorResponse>?,
      buyer: buyer == freezed
          ? _value.buyer
          : buyer // ignore: cast_nullable_to_non_nullable
              as UserResponse,
      seller: seller == freezed
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as UserResponse?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      productReservations: productReservations == freezed
          ? _value.productReservations
          : productReservations // ignore: cast_nullable_to_non_nullable
              as List<ProductReservationResponse>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReservationResponse implements _ReservationResponse {
  const _$_ReservationResponse(
      {@JsonKey(name: 'id')
          required this.id,
      @JsonKey(name: 'created_at')
          required this.createdAt,
      @JsonKey(name: 'errors')
          required this.errors,
      @JsonKey(name: 'buyer')
          required this.buyer,
      @JsonKey(name: 'seller')
          required this.seller,
      @JsonKey(name: 'status')
          required this.status,
      @JsonKey(name: 'product_reservations')
          required this.productReservations});

  factory _$_ReservationResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ReservationResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'errors')
  final List<ErrorResponse>? errors;
  @override
  @JsonKey(name: 'buyer')
  final UserResponse buyer;
  @override
  @JsonKey(name: 'seller')
  final UserResponse? seller;
  @override
  @JsonKey(name: 'status')
  final String? status;
  @override
  @JsonKey(name: 'product_reservations')
  final List<ProductReservationResponse> productReservations;

  @override
  String toString() {
    return 'ReservationResponse(id: $id, createdAt: $createdAt, errors: $errors, buyer: $buyer, seller: $seller, status: $status, productReservations: $productReservations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReservationResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)) &&
            (identical(other.buyer, buyer) ||
                const DeepCollectionEquality().equals(other.buyer, buyer)) &&
            (identical(other.seller, seller) ||
                const DeepCollectionEquality().equals(other.seller, seller)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.productReservations, productReservations) ||
                const DeepCollectionEquality()
                    .equals(other.productReservations, productReservations)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(errors) ^
      const DeepCollectionEquality().hash(buyer) ^
      const DeepCollectionEquality().hash(seller) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(productReservations);

  @JsonKey(ignore: true)
  @override
  _$ReservationResponseCopyWith<_ReservationResponse> get copyWith =>
      __$ReservationResponseCopyWithImpl<_ReservationResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ReservationResponseToJson(this);
  }
}

abstract class _ReservationResponse implements ReservationResponse {
  const factory _ReservationResponse(
          {@JsonKey(name: 'id')
              required int? id,
          @JsonKey(name: 'created_at')
              required String? createdAt,
          @JsonKey(name: 'errors')
              required List<ErrorResponse>? errors,
          @JsonKey(name: 'buyer')
              required UserResponse buyer,
          @JsonKey(name: 'seller')
              required UserResponse? seller,
          @JsonKey(name: 'status')
              required String? status,
          @JsonKey(name: 'product_reservations')
              required List<ProductReservationResponse> productReservations}) =
      _$_ReservationResponse;

  factory _ReservationResponse.fromJson(Map<String, dynamic> json) =
      _$_ReservationResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'errors')
  List<ErrorResponse>? get errors => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'buyer')
  UserResponse get buyer => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'seller')
  UserResponse? get seller => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'status')
  String? get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'product_reservations')
  List<ProductReservationResponse> get productReservations =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReservationResponseCopyWith<_ReservationResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductReservationResponse _$ProductReservationResponseFromJson(
    Map<String, dynamic> json) {
  return _ProductReservationResponse.fromJson(json);
}

/// @nodoc
class _$ProductReservationResponseTearOff {
  const _$ProductReservationResponseTearOff();

  _ProductReservationResponse call(
      {@JsonKey(name: 'id')
          required int? id,
      @JsonKey(name: 'created_at')
          required String? createdAt,
      @JsonKey(name: 'errors')
          required List<ErrorResponse>? errors,
      @JsonKey(name: 'status')
          required String status,
      @JsonKey(name: 'quantity')
          required int quantity,
      @JsonKey(name: 'advertisement_product')
          required AdProductResponse adProduct}) {
    return _ProductReservationResponse(
      id: id,
      createdAt: createdAt,
      errors: errors,
      status: status,
      quantity: quantity,
      adProduct: adProduct,
    );
  }

  ProductReservationResponse fromJson(Map<String, Object> json) {
    return ProductReservationResponse.fromJson(json);
  }
}

/// @nodoc
const $ProductReservationResponse = _$ProductReservationResponseTearOff();

/// @nodoc
mixin _$ProductReservationResponse {
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'errors')
  List<ErrorResponse>? get errors => throw _privateConstructorUsedError;
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'quantity')
  int get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'advertisement_product')
  AdProductResponse get adProduct => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductReservationResponseCopyWith<ProductReservationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductReservationResponseCopyWith<$Res> {
  factory $ProductReservationResponseCopyWith(ProductReservationResponse value,
          $Res Function(ProductReservationResponse) then) =
      _$ProductReservationResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'errors') List<ErrorResponse>? errors,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'advertisement_product') AdProductResponse adProduct});

  $AdProductResponseCopyWith<$Res> get adProduct;
}

/// @nodoc
class _$ProductReservationResponseCopyWithImpl<$Res>
    implements $ProductReservationResponseCopyWith<$Res> {
  _$ProductReservationResponseCopyWithImpl(this._value, this._then);

  final ProductReservationResponse _value;
  // ignore: unused_field
  final $Res Function(ProductReservationResponse) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? errors = freezed,
    Object? status = freezed,
    Object? quantity = freezed,
    Object? adProduct = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ErrorResponse>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      adProduct: adProduct == freezed
          ? _value.adProduct
          : adProduct // ignore: cast_nullable_to_non_nullable
              as AdProductResponse,
    ));
  }

  @override
  $AdProductResponseCopyWith<$Res> get adProduct {
    return $AdProductResponseCopyWith<$Res>(_value.adProduct, (value) {
      return _then(_value.copyWith(adProduct: value));
    });
  }
}

/// @nodoc
abstract class _$ProductReservationResponseCopyWith<$Res>
    implements $ProductReservationResponseCopyWith<$Res> {
  factory _$ProductReservationResponseCopyWith(
          _ProductReservationResponse value,
          $Res Function(_ProductReservationResponse) then) =
      __$ProductReservationResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') int? id,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'errors') List<ErrorResponse>? errors,
      @JsonKey(name: 'status') String status,
      @JsonKey(name: 'quantity') int quantity,
      @JsonKey(name: 'advertisement_product') AdProductResponse adProduct});

  @override
  $AdProductResponseCopyWith<$Res> get adProduct;
}

/// @nodoc
class __$ProductReservationResponseCopyWithImpl<$Res>
    extends _$ProductReservationResponseCopyWithImpl<$Res>
    implements _$ProductReservationResponseCopyWith<$Res> {
  __$ProductReservationResponseCopyWithImpl(_ProductReservationResponse _value,
      $Res Function(_ProductReservationResponse) _then)
      : super(_value, (v) => _then(v as _ProductReservationResponse));

  @override
  _ProductReservationResponse get _value =>
      super._value as _ProductReservationResponse;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? errors = freezed,
    Object? status = freezed,
    Object? quantity = freezed,
    Object? adProduct = freezed,
  }) {
    return _then(_ProductReservationResponse(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<ErrorResponse>?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      adProduct: adProduct == freezed
          ? _value.adProduct
          : adProduct // ignore: cast_nullable_to_non_nullable
              as AdProductResponse,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProductReservationResponse implements _ProductReservationResponse {
  const _$_ProductReservationResponse(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'errors') required this.errors,
      @JsonKey(name: 'status') required this.status,
      @JsonKey(name: 'quantity') required this.quantity,
      @JsonKey(name: 'advertisement_product') required this.adProduct});

  factory _$_ProductReservationResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ProductReservationResponseFromJson(json);

  @override
  @JsonKey(name: 'id')
  final int? id;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'errors')
  final List<ErrorResponse>? errors;
  @override
  @JsonKey(name: 'status')
  final String status;
  @override
  @JsonKey(name: 'quantity')
  final int quantity;
  @override
  @JsonKey(name: 'advertisement_product')
  final AdProductResponse adProduct;

  @override
  String toString() {
    return 'ProductReservationResponse(id: $id, createdAt: $createdAt, errors: $errors, status: $status, quantity: $quantity, adProduct: $adProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductReservationResponse &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.errors, errors) ||
                const DeepCollectionEquality().equals(other.errors, errors)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.adProduct, adProduct) ||
                const DeepCollectionEquality()
                    .equals(other.adProduct, adProduct)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(errors) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(adProduct);

  @JsonKey(ignore: true)
  @override
  _$ProductReservationResponseCopyWith<_ProductReservationResponse>
      get copyWith => __$ProductReservationResponseCopyWithImpl<
          _ProductReservationResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ProductReservationResponseToJson(this);
  }
}

abstract class _ProductReservationResponse
    implements ProductReservationResponse {
  const factory _ProductReservationResponse(
          {@JsonKey(name: 'id')
              required int? id,
          @JsonKey(name: 'created_at')
              required String? createdAt,
          @JsonKey(name: 'errors')
              required List<ErrorResponse>? errors,
          @JsonKey(name: 'status')
              required String status,
          @JsonKey(name: 'quantity')
              required int quantity,
          @JsonKey(name: 'advertisement_product')
              required AdProductResponse adProduct}) =
      _$_ProductReservationResponse;

  factory _ProductReservationResponse.fromJson(Map<String, dynamic> json) =
      _$_ProductReservationResponse.fromJson;

  @override
  @JsonKey(name: 'id')
  int? get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'errors')
  List<ErrorResponse>? get errors => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'status')
  String get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'quantity')
  int get quantity => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'advertisement_product')
  AdProductResponse get adProduct => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductReservationResponseCopyWith<_ProductReservationResponse>
      get copyWith => throw _privateConstructorUsedError;
}

ErrorResponse _$ErrorResponseFromJson(Map<String, dynamic> json) {
  return _ErrorResponse.fromJson(json);
}

/// @nodoc
class _$ErrorResponseTearOff {
  const _$ErrorResponseTearOff();

  _ErrorResponse call(
      {@JsonKey(name: 'key') required String key,
      @JsonKey(name: 'message') required String messsage}) {
    return _ErrorResponse(
      key: key,
      messsage: messsage,
    );
  }

  ErrorResponse fromJson(Map<String, Object> json) {
    return ErrorResponse.fromJson(json);
  }
}

/// @nodoc
const $ErrorResponse = _$ErrorResponseTearOff();

/// @nodoc
mixin _$ErrorResponse {
  @JsonKey(name: 'key')
  String get key => throw _privateConstructorUsedError;
  @JsonKey(name: 'message')
  String get messsage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorResponseCopyWith<ErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorResponseCopyWith<$Res> {
  factory $ErrorResponseCopyWith(
          ErrorResponse value, $Res Function(ErrorResponse) then) =
      _$ErrorResponseCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'key') String key,
      @JsonKey(name: 'message') String messsage});
}

/// @nodoc
class _$ErrorResponseCopyWithImpl<$Res>
    implements $ErrorResponseCopyWith<$Res> {
  _$ErrorResponseCopyWithImpl(this._value, this._then);

  final ErrorResponse _value;
  // ignore: unused_field
  final $Res Function(ErrorResponse) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? messsage = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      messsage: messsage == freezed
          ? _value.messsage
          : messsage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$ErrorResponseCopyWith<$Res>
    implements $ErrorResponseCopyWith<$Res> {
  factory _$ErrorResponseCopyWith(
          _ErrorResponse value, $Res Function(_ErrorResponse) then) =
      __$ErrorResponseCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'key') String key,
      @JsonKey(name: 'message') String messsage});
}

/// @nodoc
class __$ErrorResponseCopyWithImpl<$Res>
    extends _$ErrorResponseCopyWithImpl<$Res>
    implements _$ErrorResponseCopyWith<$Res> {
  __$ErrorResponseCopyWithImpl(
      _ErrorResponse _value, $Res Function(_ErrorResponse) _then)
      : super(_value, (v) => _then(v as _ErrorResponse));

  @override
  _ErrorResponse get _value => super._value as _ErrorResponse;

  @override
  $Res call({
    Object? key = freezed,
    Object? messsage = freezed,
  }) {
    return _then(_ErrorResponse(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      messsage: messsage == freezed
          ? _value.messsage
          : messsage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ErrorResponse implements _ErrorResponse {
  const _$_ErrorResponse(
      {@JsonKey(name: 'key') required this.key,
      @JsonKey(name: 'message') required this.messsage});

  factory _$_ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$_$_ErrorResponseFromJson(json);

  @override
  @JsonKey(name: 'key')
  final String key;
  @override
  @JsonKey(name: 'message')
  final String messsage;

  @override
  String toString() {
    return 'ErrorResponse(key: $key, messsage: $messsage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ErrorResponse &&
            (identical(other.key, key) ||
                const DeepCollectionEquality().equals(other.key, key)) &&
            (identical(other.messsage, messsage) ||
                const DeepCollectionEquality()
                    .equals(other.messsage, messsage)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(key) ^
      const DeepCollectionEquality().hash(messsage);

  @JsonKey(ignore: true)
  @override
  _$ErrorResponseCopyWith<_ErrorResponse> get copyWith =>
      __$ErrorResponseCopyWithImpl<_ErrorResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ErrorResponseToJson(this);
  }
}

abstract class _ErrorResponse implements ErrorResponse {
  const factory _ErrorResponse(
      {@JsonKey(name: 'key') required String key,
      @JsonKey(name: 'message') required String messsage}) = _$_ErrorResponse;

  factory _ErrorResponse.fromJson(Map<String, dynamic> json) =
      _$_ErrorResponse.fromJson;

  @override
  @JsonKey(name: 'key')
  String get key => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'message')
  String get messsage => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ErrorResponseCopyWith<_ErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
