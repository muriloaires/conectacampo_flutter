// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'new_advertisement.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NewAdvertisementTearOff {
  const _$NewAdvertisementTearOff();

  _NewAdvertisement call(
      {required NewAdvertisementDate date,
      required Place? newAdDeliveryPlace,
      required NewAdvertisementDeliveryDescription newAdDeliveryDescription,
      required List<NewAdProduct> products}) {
    return _NewAdvertisement(
      date: date,
      newAdDeliveryPlace: newAdDeliveryPlace,
      newAdDeliveryDescription: newAdDeliveryDescription,
      products: products,
    );
  }
}

/// @nodoc
const $NewAdvertisement = _$NewAdvertisementTearOff();

/// @nodoc
mixin _$NewAdvertisement {
  NewAdvertisementDate get date => throw _privateConstructorUsedError;
  Place? get newAdDeliveryPlace => throw _privateConstructorUsedError;
  NewAdvertisementDeliveryDescription get newAdDeliveryDescription =>
      throw _privateConstructorUsedError;
  List<NewAdProduct> get products => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NewAdvertisementCopyWith<NewAdvertisement> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewAdvertisementCopyWith<$Res> {
  factory $NewAdvertisementCopyWith(
          NewAdvertisement value, $Res Function(NewAdvertisement) then) =
      _$NewAdvertisementCopyWithImpl<$Res>;
  $Res call(
      {NewAdvertisementDate date,
      Place? newAdDeliveryPlace,
      NewAdvertisementDeliveryDescription newAdDeliveryDescription,
      List<NewAdProduct> products});

  $PlaceCopyWith<$Res>? get newAdDeliveryPlace;
}

/// @nodoc
class _$NewAdvertisementCopyWithImpl<$Res>
    implements $NewAdvertisementCopyWith<$Res> {
  _$NewAdvertisementCopyWithImpl(this._value, this._then);

  final NewAdvertisement _value;
  // ignore: unused_field
  final $Res Function(NewAdvertisement) _then;

  @override
  $Res call({
    Object? date = freezed,
    Object? newAdDeliveryPlace = freezed,
    Object? newAdDeliveryDescription = freezed,
    Object? products = freezed,
  }) {
    return _then(_value.copyWith(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as NewAdvertisementDate,
      newAdDeliveryPlace: newAdDeliveryPlace == freezed
          ? _value.newAdDeliveryPlace
          : newAdDeliveryPlace // ignore: cast_nullable_to_non_nullable
              as Place?,
      newAdDeliveryDescription: newAdDeliveryDescription == freezed
          ? _value.newAdDeliveryDescription
          : newAdDeliveryDescription // ignore: cast_nullable_to_non_nullable
              as NewAdvertisementDeliveryDescription,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<NewAdProduct>,
    ));
  }

  @override
  $PlaceCopyWith<$Res>? get newAdDeliveryPlace {
    if (_value.newAdDeliveryPlace == null) {
      return null;
    }

    return $PlaceCopyWith<$Res>(_value.newAdDeliveryPlace!, (value) {
      return _then(_value.copyWith(newAdDeliveryPlace: value));
    });
  }
}

/// @nodoc
abstract class _$NewAdvertisementCopyWith<$Res>
    implements $NewAdvertisementCopyWith<$Res> {
  factory _$NewAdvertisementCopyWith(
          _NewAdvertisement value, $Res Function(_NewAdvertisement) then) =
      __$NewAdvertisementCopyWithImpl<$Res>;
  @override
  $Res call(
      {NewAdvertisementDate date,
      Place? newAdDeliveryPlace,
      NewAdvertisementDeliveryDescription newAdDeliveryDescription,
      List<NewAdProduct> products});

  @override
  $PlaceCopyWith<$Res>? get newAdDeliveryPlace;
}

/// @nodoc
class __$NewAdvertisementCopyWithImpl<$Res>
    extends _$NewAdvertisementCopyWithImpl<$Res>
    implements _$NewAdvertisementCopyWith<$Res> {
  __$NewAdvertisementCopyWithImpl(
      _NewAdvertisement _value, $Res Function(_NewAdvertisement) _then)
      : super(_value, (v) => _then(v as _NewAdvertisement));

  @override
  _NewAdvertisement get _value => super._value as _NewAdvertisement;

  @override
  $Res call({
    Object? date = freezed,
    Object? newAdDeliveryPlace = freezed,
    Object? newAdDeliveryDescription = freezed,
    Object? products = freezed,
  }) {
    return _then(_NewAdvertisement(
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as NewAdvertisementDate,
      newAdDeliveryPlace: newAdDeliveryPlace == freezed
          ? _value.newAdDeliveryPlace
          : newAdDeliveryPlace // ignore: cast_nullable_to_non_nullable
              as Place?,
      newAdDeliveryDescription: newAdDeliveryDescription == freezed
          ? _value.newAdDeliveryDescription
          : newAdDeliveryDescription // ignore: cast_nullable_to_non_nullable
              as NewAdvertisementDeliveryDescription,
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<NewAdProduct>,
    ));
  }
}

/// @nodoc

class _$_NewAdvertisement implements _NewAdvertisement {
  const _$_NewAdvertisement(
      {required this.date,
      required this.newAdDeliveryPlace,
      required this.newAdDeliveryDescription,
      required this.products});

  @override
  final NewAdvertisementDate date;
  @override
  final Place? newAdDeliveryPlace;
  @override
  final NewAdvertisementDeliveryDescription newAdDeliveryDescription;
  @override
  final List<NewAdProduct> products;

  @override
  String toString() {
    return 'NewAdvertisement(date: $date, newAdDeliveryPlace: $newAdDeliveryPlace, newAdDeliveryDescription: $newAdDeliveryDescription, products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NewAdvertisement &&
            (identical(other.date, date) ||
                const DeepCollectionEquality().equals(other.date, date)) &&
            (identical(other.newAdDeliveryPlace, newAdDeliveryPlace) ||
                const DeepCollectionEquality()
                    .equals(other.newAdDeliveryPlace, newAdDeliveryPlace)) &&
            (identical(
                    other.newAdDeliveryDescription, newAdDeliveryDescription) ||
                const DeepCollectionEquality().equals(
                    other.newAdDeliveryDescription,
                    newAdDeliveryDescription)) &&
            (identical(other.products, products) ||
                const DeepCollectionEquality()
                    .equals(other.products, products)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(date) ^
      const DeepCollectionEquality().hash(newAdDeliveryPlace) ^
      const DeepCollectionEquality().hash(newAdDeliveryDescription) ^
      const DeepCollectionEquality().hash(products);

  @JsonKey(ignore: true)
  @override
  _$NewAdvertisementCopyWith<_NewAdvertisement> get copyWith =>
      __$NewAdvertisementCopyWithImpl<_NewAdvertisement>(this, _$identity);
}

abstract class _NewAdvertisement implements NewAdvertisement {
  const factory _NewAdvertisement(
      {required NewAdvertisementDate date,
      required Place? newAdDeliveryPlace,
      required NewAdvertisementDeliveryDescription newAdDeliveryDescription,
      required List<NewAdProduct> products}) = _$_NewAdvertisement;

  @override
  NewAdvertisementDate get date => throw _privateConstructorUsedError;
  @override
  Place? get newAdDeliveryPlace => throw _privateConstructorUsedError;
  @override
  NewAdvertisementDeliveryDescription get newAdDeliveryDescription =>
      throw _privateConstructorUsedError;
  @override
  List<NewAdProduct> get products => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NewAdvertisementCopyWith<_NewAdvertisement> get copyWith =>
      throw _privateConstructorUsedError;
}
