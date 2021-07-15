// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'reservation_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ReservationItemTearOff {
  const _$ReservationItemTearOff();

  _ReservationItem call(
      {required int id,
      required String measurementUnit,
      required int quantity,
      required String rating,
      required String kind,
      required String sellerName,
      required String sellerPhone}) {
    return _ReservationItem(
      id: id,
      measurementUnit: measurementUnit,
      quantity: quantity,
      rating: rating,
      kind: kind,
      sellerName: sellerName,
      sellerPhone: sellerPhone,
    );
  }
}

/// @nodoc
const $ReservationItem = _$ReservationItemTearOff();

/// @nodoc
mixin _$ReservationItem {
  int get id => throw _privateConstructorUsedError;
  String get measurementUnit => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  String get rating => throw _privateConstructorUsedError;
  String get kind => throw _privateConstructorUsedError;
  String get sellerName => throw _privateConstructorUsedError;
  String get sellerPhone => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReservationItemCopyWith<ReservationItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReservationItemCopyWith<$Res> {
  factory $ReservationItemCopyWith(
          ReservationItem value, $Res Function(ReservationItem) then) =
      _$ReservationItemCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String measurementUnit,
      int quantity,
      String rating,
      String kind,
      String sellerName,
      String sellerPhone});
}

/// @nodoc
class _$ReservationItemCopyWithImpl<$Res>
    implements $ReservationItemCopyWith<$Res> {
  _$ReservationItemCopyWithImpl(this._value, this._then);

  final ReservationItem _value;
  // ignore: unused_field
  final $Res Function(ReservationItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? measurementUnit = freezed,
    Object? quantity = freezed,
    Object? rating = freezed,
    Object? kind = freezed,
    Object? sellerName = freezed,
    Object? sellerPhone = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc
abstract class _$ReservationItemCopyWith<$Res>
    implements $ReservationItemCopyWith<$Res> {
  factory _$ReservationItemCopyWith(
          _ReservationItem value, $Res Function(_ReservationItem) then) =
      __$ReservationItemCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String measurementUnit,
      int quantity,
      String rating,
      String kind,
      String sellerName,
      String sellerPhone});
}

/// @nodoc
class __$ReservationItemCopyWithImpl<$Res>
    extends _$ReservationItemCopyWithImpl<$Res>
    implements _$ReservationItemCopyWith<$Res> {
  __$ReservationItemCopyWithImpl(
      _ReservationItem _value, $Res Function(_ReservationItem) _then)
      : super(_value, (v) => _then(v as _ReservationItem));

  @override
  _ReservationItem get _value => super._value as _ReservationItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? measurementUnit = freezed,
    Object? quantity = freezed,
    Object? rating = freezed,
    Object? kind = freezed,
    Object? sellerName = freezed,
    Object? sellerPhone = freezed,
  }) {
    return _then(_ReservationItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
    ));
  }
}

/// @nodoc

class _$_ReservationItem implements _ReservationItem {
  const _$_ReservationItem(
      {required this.id,
      required this.measurementUnit,
      required this.quantity,
      required this.rating,
      required this.kind,
      required this.sellerName,
      required this.sellerPhone});

  @override
  final int id;
  @override
  final String measurementUnit;
  @override
  final int quantity;
  @override
  final String rating;
  @override
  final String kind;
  @override
  final String sellerName;
  @override
  final String sellerPhone;

  @override
  String toString() {
    return 'ReservationItem(id: $id, measurementUnit: $measurementUnit, quantity: $quantity, rating: $rating, kind: $kind, sellerName: $sellerName, sellerPhone: $sellerPhone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReservationItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
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
                    .equals(other.sellerPhone, sellerPhone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(measurementUnit) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(rating) ^
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(sellerName) ^
      const DeepCollectionEquality().hash(sellerPhone);

  @JsonKey(ignore: true)
  @override
  _$ReservationItemCopyWith<_ReservationItem> get copyWith =>
      __$ReservationItemCopyWithImpl<_ReservationItem>(this, _$identity);
}

abstract class _ReservationItem implements ReservationItem {
  const factory _ReservationItem(
      {required int id,
      required String measurementUnit,
      required int quantity,
      required String rating,
      required String kind,
      required String sellerName,
      required String sellerPhone}) = _$_ReservationItem;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  String get measurementUnit => throw _privateConstructorUsedError;
  @override
  int get quantity => throw _privateConstructorUsedError;
  @override
  String get rating => throw _privateConstructorUsedError;
  @override
  String get kind => throw _privateConstructorUsedError;
  @override
  String get sellerName => throw _privateConstructorUsedError;
  @override
  String get sellerPhone => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReservationItemCopyWith<_ReservationItem> get copyWith =>
      throw _privateConstructorUsedError;
}
