// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'product_reservation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProductReservationTearOff {
  const _$ProductReservationTearOff();

  _ProductReservation call(
      {required int? id,
      required String? createdAt,
      required ReservationItemStatus status,
      required int quantity,
      required AdProduct adProduct}) {
    return _ProductReservation(
      id: id,
      createdAt: createdAt,
      status: status,
      quantity: quantity,
      adProduct: adProduct,
    );
  }
}

/// @nodoc
const $ProductReservation = _$ProductReservationTearOff();

/// @nodoc
mixin _$ProductReservation {
  int? get id => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  ReservationItemStatus get status => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  AdProduct get adProduct => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductReservationCopyWith<ProductReservation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductReservationCopyWith<$Res> {
  factory $ProductReservationCopyWith(
          ProductReservation value, $Res Function(ProductReservation) then) =
      _$ProductReservationCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? createdAt,
      ReservationItemStatus status,
      int quantity,
      AdProduct adProduct});

  $AdProductCopyWith<$Res> get adProduct;
}

/// @nodoc
class _$ProductReservationCopyWithImpl<$Res>
    implements $ProductReservationCopyWith<$Res> {
  _$ProductReservationCopyWithImpl(this._value, this._then);

  final ProductReservation _value;
  // ignore: unused_field
  final $Res Function(ProductReservation) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReservationItemStatus,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      adProduct: adProduct == freezed
          ? _value.adProduct
          : adProduct // ignore: cast_nullable_to_non_nullable
              as AdProduct,
    ));
  }

  @override
  $AdProductCopyWith<$Res> get adProduct {
    return $AdProductCopyWith<$Res>(_value.adProduct, (value) {
      return _then(_value.copyWith(adProduct: value));
    });
  }
}

/// @nodoc
abstract class _$ProductReservationCopyWith<$Res>
    implements $ProductReservationCopyWith<$Res> {
  factory _$ProductReservationCopyWith(
          _ProductReservation value, $Res Function(_ProductReservation) then) =
      __$ProductReservationCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? createdAt,
      ReservationItemStatus status,
      int quantity,
      AdProduct adProduct});

  @override
  $AdProductCopyWith<$Res> get adProduct;
}

/// @nodoc
class __$ProductReservationCopyWithImpl<$Res>
    extends _$ProductReservationCopyWithImpl<$Res>
    implements _$ProductReservationCopyWith<$Res> {
  __$ProductReservationCopyWithImpl(
      _ProductReservation _value, $Res Function(_ProductReservation) _then)
      : super(_value, (v) => _then(v as _ProductReservation));

  @override
  _ProductReservation get _value => super._value as _ProductReservation;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? status = freezed,
    Object? quantity = freezed,
    Object? adProduct = freezed,
  }) {
    return _then(_ProductReservation(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReservationItemStatus,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      adProduct: adProduct == freezed
          ? _value.adProduct
          : adProduct // ignore: cast_nullable_to_non_nullable
              as AdProduct,
    ));
  }
}

/// @nodoc

class _$_ProductReservation implements _ProductReservation {
  const _$_ProductReservation(
      {required this.id,
      required this.createdAt,
      required this.status,
      required this.quantity,
      required this.adProduct});

  @override
  final int? id;
  @override
  final String? createdAt;
  @override
  final ReservationItemStatus status;
  @override
  final int quantity;
  @override
  final AdProduct adProduct;

  @override
  String toString() {
    return 'ProductReservation(id: $id, createdAt: $createdAt, status: $status, quantity: $quantity, adProduct: $adProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ProductReservation &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
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
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(adProduct);

  @JsonKey(ignore: true)
  @override
  _$ProductReservationCopyWith<_ProductReservation> get copyWith =>
      __$ProductReservationCopyWithImpl<_ProductReservation>(this, _$identity);
}

abstract class _ProductReservation implements ProductReservation {
  const factory _ProductReservation(
      {required int? id,
      required String? createdAt,
      required ReservationItemStatus status,
      required int quantity,
      required AdProduct adProduct}) = _$_ProductReservation;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get createdAt => throw _privateConstructorUsedError;
  @override
  ReservationItemStatus get status => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  AdProduct get adProduct => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ProductReservationCopyWith<_ProductReservation> get copyWith =>
      throw _privateConstructorUsedError;
}
