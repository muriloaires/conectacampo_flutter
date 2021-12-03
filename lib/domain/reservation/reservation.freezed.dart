// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'reservation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReservationTearOff {
  const _$ReservationTearOff();

  _Reservation call(
      {required int? id,
      required String? createdAt,
      required User buyer,
      required User? seller,
      required ReservationStatus status,
      required List<ProductReservation> productReservations}) {
    return _Reservation(
      id: id,
      createdAt: createdAt,
      buyer: buyer,
      seller: seller,
      status: status,
      productReservations: productReservations,
    );
  }
}

/// @nodoc
const $Reservation = _$ReservationTearOff();

/// @nodoc
mixin _$Reservation {
  int? get id => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  User get buyer => throw _privateConstructorUsedError;
  User? get seller => throw _privateConstructorUsedError;
  ReservationStatus get status => throw _privateConstructorUsedError;
  List<ProductReservation> get productReservations =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReservationCopyWith<Reservation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationCopyWith<$Res> {
  factory $ReservationCopyWith(
          Reservation value, $Res Function(Reservation) then) =
      _$ReservationCopyWithImpl<$Res>;
  $Res call(
      {int? id,
      String? createdAt,
      User buyer,
      User? seller,
      ReservationStatus status,
      List<ProductReservation> productReservations});

  $UserCopyWith<$Res> get buyer;
  $UserCopyWith<$Res>? get seller;
}

/// @nodoc
class _$ReservationCopyWithImpl<$Res> implements $ReservationCopyWith<$Res> {
  _$ReservationCopyWithImpl(this._value, this._then);

  final Reservation _value;
  // ignore: unused_field
  final $Res Function(Reservation) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
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
      buyer: buyer == freezed
          ? _value.buyer
          : buyer // ignore: cast_nullable_to_non_nullable
              as User,
      seller: seller == freezed
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as User?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReservationStatus,
      productReservations: productReservations == freezed
          ? _value.productReservations
          : productReservations // ignore: cast_nullable_to_non_nullable
              as List<ProductReservation>,
    ));
  }

  @override
  $UserCopyWith<$Res> get buyer {
    return $UserCopyWith<$Res>(_value.buyer, (value) {
      return _then(_value.copyWith(buyer: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get seller {
    if (_value.seller == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.seller!, (value) {
      return _then(_value.copyWith(seller: value));
    });
  }
}

/// @nodoc
abstract class _$ReservationCopyWith<$Res>
    implements $ReservationCopyWith<$Res> {
  factory _$ReservationCopyWith(
          _Reservation value, $Res Function(_Reservation) then) =
      __$ReservationCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id,
      String? createdAt,
      User buyer,
      User? seller,
      ReservationStatus status,
      List<ProductReservation> productReservations});

  @override
  $UserCopyWith<$Res> get buyer;
  @override
  $UserCopyWith<$Res>? get seller;
}

/// @nodoc
class __$ReservationCopyWithImpl<$Res> extends _$ReservationCopyWithImpl<$Res>
    implements _$ReservationCopyWith<$Res> {
  __$ReservationCopyWithImpl(
      _Reservation _value, $Res Function(_Reservation) _then)
      : super(_value, (v) => _then(v as _Reservation));

  @override
  _Reservation get _value => super._value as _Reservation;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? buyer = freezed,
    Object? seller = freezed,
    Object? status = freezed,
    Object? productReservations = freezed,
  }) {
    return _then(_Reservation(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      buyer: buyer == freezed
          ? _value.buyer
          : buyer // ignore: cast_nullable_to_non_nullable
              as User,
      seller: seller == freezed
          ? _value.seller
          : seller // ignore: cast_nullable_to_non_nullable
              as User?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ReservationStatus,
      productReservations: productReservations == freezed
          ? _value.productReservations
          : productReservations // ignore: cast_nullable_to_non_nullable
              as List<ProductReservation>,
    ));
  }
}

/// @nodoc

class _$_Reservation implements _Reservation {
  const _$_Reservation(
      {required this.id,
      required this.createdAt,
      required this.buyer,
      required this.seller,
      required this.status,
      required this.productReservations});

  @override
  final int? id;
  @override
  final String? createdAt;
  @override
  final User buyer;
  @override
  final User? seller;
  @override
  final ReservationStatus status;
  @override
  final List<ProductReservation> productReservations;

  @override
  String toString() {
    return 'Reservation(id: $id, createdAt: $createdAt, buyer: $buyer, seller: $seller, status: $status, productReservations: $productReservations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Reservation &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
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
      const DeepCollectionEquality().hash(buyer) ^
      const DeepCollectionEquality().hash(seller) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(productReservations);

  @JsonKey(ignore: true)
  @override
  _$ReservationCopyWith<_Reservation> get copyWith =>
      __$ReservationCopyWithImpl<_Reservation>(this, _$identity);
}

abstract class _Reservation implements Reservation {
  const factory _Reservation(
      {required int? id,
      required String? createdAt,
      required User buyer,
      required User? seller,
      required ReservationStatus status,
      required List<ProductReservation> productReservations}) = _$_Reservation;

  @override
  int? get id => throw _privateConstructorUsedError;
  @override
  String? get createdAt => throw _privateConstructorUsedError;
  @override
  User get buyer => throw _privateConstructorUsedError;
  @override
  User? get seller => throw _privateConstructorUsedError;
  @override
  ReservationStatus get status => throw _privateConstructorUsedError;
  @override
  List<ProductReservation> get productReservations =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReservationCopyWith<_Reservation> get copyWith =>
      throw _privateConstructorUsedError;
}
