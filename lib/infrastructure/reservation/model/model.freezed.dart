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
  @JsonKey(name: 'image')
  final String image;

  @override
  String toString() {
    return 'ReservationItemDB(id: $id, name: $name, measurementUnit: $measurementUnit, quantity: $quantity, rating: $rating, kind: $kind, sellerName: $sellerName, sellerPhone: $sellerPhone, image: $image)';
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
  @JsonKey(name: 'image')
  String get image => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ReservationItemDBCopyWith<_ReservationItemDB> get copyWith =>
      throw _privateConstructorUsedError;
}
