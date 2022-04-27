// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'my_stores.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MyStores _$MyStoresFromJson(Map<String, dynamic> json) {
  return _MyStores.fromJson(json);
}

/// @nodoc
class _$MyStoresTearOff {
  const _$MyStoresTearOff();

  _MyStores call(
      {required PersonalStore? personalStore,
      required BusinessStore? businessStore,
      required List<PartnerStore> partnersStores}) {
    return _MyStores(
      personalStore: personalStore,
      businessStore: businessStore,
      partnersStores: partnersStores,
    );
  }

  MyStores fromJson(Map<String, Object> json) {
    return MyStores.fromJson(json);
  }
}

/// @nodoc
const $MyStores = _$MyStoresTearOff();

/// @nodoc
mixin _$MyStores {
  PersonalStore? get personalStore => throw _privateConstructorUsedError;
  BusinessStore? get businessStore => throw _privateConstructorUsedError;
  List<PartnerStore> get partnersStores => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MyStoresCopyWith<MyStores> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MyStoresCopyWith<$Res> {
  factory $MyStoresCopyWith(MyStores value, $Res Function(MyStores) then) =
      _$MyStoresCopyWithImpl<$Res>;
  $Res call(
      {PersonalStore? personalStore,
      BusinessStore? businessStore,
      List<PartnerStore> partnersStores});

  $PersonalStoreCopyWith<$Res>? get personalStore;
  $BusinessStoreCopyWith<$Res>? get businessStore;
}

/// @nodoc
class _$MyStoresCopyWithImpl<$Res> implements $MyStoresCopyWith<$Res> {
  _$MyStoresCopyWithImpl(this._value, this._then);

  final MyStores _value;
  // ignore: unused_field
  final $Res Function(MyStores) _then;

  @override
  $Res call({
    Object? personalStore = freezed,
    Object? businessStore = freezed,
    Object? partnersStores = freezed,
  }) {
    return _then(_value.copyWith(
      personalStore: personalStore == freezed
          ? _value.personalStore
          : personalStore // ignore: cast_nullable_to_non_nullable
              as PersonalStore?,
      businessStore: businessStore == freezed
          ? _value.businessStore
          : businessStore // ignore: cast_nullable_to_non_nullable
              as BusinessStore?,
      partnersStores: partnersStores == freezed
          ? _value.partnersStores
          : partnersStores // ignore: cast_nullable_to_non_nullable
              as List<PartnerStore>,
    ));
  }

  @override
  $PersonalStoreCopyWith<$Res>? get personalStore {
    if (_value.personalStore == null) {
      return null;
    }

    return $PersonalStoreCopyWith<$Res>(_value.personalStore!, (value) {
      return _then(_value.copyWith(personalStore: value));
    });
  }

  @override
  $BusinessStoreCopyWith<$Res>? get businessStore {
    if (_value.businessStore == null) {
      return null;
    }

    return $BusinessStoreCopyWith<$Res>(_value.businessStore!, (value) {
      return _then(_value.copyWith(businessStore: value));
    });
  }
}

/// @nodoc
abstract class _$MyStoresCopyWith<$Res> implements $MyStoresCopyWith<$Res> {
  factory _$MyStoresCopyWith(_MyStores value, $Res Function(_MyStores) then) =
      __$MyStoresCopyWithImpl<$Res>;
  @override
  $Res call(
      {PersonalStore? personalStore,
      BusinessStore? businessStore,
      List<PartnerStore> partnersStores});

  @override
  $PersonalStoreCopyWith<$Res>? get personalStore;
  @override
  $BusinessStoreCopyWith<$Res>? get businessStore;
}

/// @nodoc
class __$MyStoresCopyWithImpl<$Res> extends _$MyStoresCopyWithImpl<$Res>
    implements _$MyStoresCopyWith<$Res> {
  __$MyStoresCopyWithImpl(_MyStores _value, $Res Function(_MyStores) _then)
      : super(_value, (v) => _then(v as _MyStores));

  @override
  _MyStores get _value => super._value as _MyStores;

  @override
  $Res call({
    Object? personalStore = freezed,
    Object? businessStore = freezed,
    Object? partnersStores = freezed,
  }) {
    return _then(_MyStores(
      personalStore: personalStore == freezed
          ? _value.personalStore
          : personalStore // ignore: cast_nullable_to_non_nullable
              as PersonalStore?,
      businessStore: businessStore == freezed
          ? _value.businessStore
          : businessStore // ignore: cast_nullable_to_non_nullable
              as BusinessStore?,
      partnersStores: partnersStores == freezed
          ? _value.partnersStores
          : partnersStores // ignore: cast_nullable_to_non_nullable
              as List<PartnerStore>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MyStores implements _MyStores {
  const _$_MyStores(
      {required this.personalStore,
      required this.businessStore,
      required this.partnersStores});

  factory _$_MyStores.fromJson(Map<String, dynamic> json) =>
      _$_$_MyStoresFromJson(json);

  @override
  final PersonalStore? personalStore;
  @override
  final BusinessStore? businessStore;
  @override
  final List<PartnerStore> partnersStores;

  @override
  String toString() {
    return 'MyStores(personalStore: $personalStore, businessStore: $businessStore, partnersStores: $partnersStores)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyStores &&
            (identical(other.personalStore, personalStore) ||
                const DeepCollectionEquality()
                    .equals(other.personalStore, personalStore)) &&
            (identical(other.businessStore, businessStore) ||
                const DeepCollectionEquality()
                    .equals(other.businessStore, businessStore)) &&
            (identical(other.partnersStores, partnersStores) ||
                const DeepCollectionEquality()
                    .equals(other.partnersStores, partnersStores)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(personalStore) ^
      const DeepCollectionEquality().hash(businessStore) ^
      const DeepCollectionEquality().hash(partnersStores);

  @JsonKey(ignore: true)
  @override
  _$MyStoresCopyWith<_MyStores> get copyWith =>
      __$MyStoresCopyWithImpl<_MyStores>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MyStoresToJson(this);
  }
}

abstract class _MyStores implements MyStores {
  const factory _MyStores(
      {required PersonalStore? personalStore,
      required BusinessStore? businessStore,
      required List<PartnerStore> partnersStores}) = _$_MyStores;

  factory _MyStores.fromJson(Map<String, dynamic> json) = _$_MyStores.fromJson;

  @override
  PersonalStore? get personalStore => throw _privateConstructorUsedError;
  @override
  BusinessStore? get businessStore => throw _privateConstructorUsedError;
  @override
  List<PartnerStore> get partnersStores => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MyStoresCopyWith<_MyStores> get copyWith =>
      throw _privateConstructorUsedError;
}
