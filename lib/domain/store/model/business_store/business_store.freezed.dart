// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'business_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BusinessStore _$BusinessStoreFromJson(Map<String, dynamic> json) {
  return _BusinessStore.fromJson(json);
}

/// @nodoc
class _$BusinessStoreTearOff {
  const _$BusinessStoreTearOff();

  _BusinessStore call({required String name}) {
    return _BusinessStore(
      name: name,
    );
  }

  BusinessStore fromJson(Map<String, Object> json) {
    return BusinessStore.fromJson(json);
  }
}

/// @nodoc
const $BusinessStore = _$BusinessStoreTearOff();

/// @nodoc
mixin _$BusinessStore {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessStoreCopyWith<BusinessStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessStoreCopyWith<$Res> {
  factory $BusinessStoreCopyWith(
          BusinessStore value, $Res Function(BusinessStore) then) =
      _$BusinessStoreCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$BusinessStoreCopyWithImpl<$Res>
    implements $BusinessStoreCopyWith<$Res> {
  _$BusinessStoreCopyWithImpl(this._value, this._then);

  final BusinessStore _value;
  // ignore: unused_field
  final $Res Function(BusinessStore) _then;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BusinessStoreCopyWith<$Res>
    implements $BusinessStoreCopyWith<$Res> {
  factory _$BusinessStoreCopyWith(
          _BusinessStore value, $Res Function(_BusinessStore) then) =
      __$BusinessStoreCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$BusinessStoreCopyWithImpl<$Res>
    extends _$BusinessStoreCopyWithImpl<$Res>
    implements _$BusinessStoreCopyWith<$Res> {
  __$BusinessStoreCopyWithImpl(
      _BusinessStore _value, $Res Function(_BusinessStore) _then)
      : super(_value, (v) => _then(v as _BusinessStore));

  @override
  _BusinessStore get _value => super._value as _BusinessStore;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_BusinessStore(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BusinessStore implements _BusinessStore {
  const _$_BusinessStore({required this.name});

  factory _$_BusinessStore.fromJson(Map<String, dynamic> json) =>
      _$_$_BusinessStoreFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'BusinessStore(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BusinessStore &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$BusinessStoreCopyWith<_BusinessStore> get copyWith =>
      __$BusinessStoreCopyWithImpl<_BusinessStore>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_BusinessStoreToJson(this);
  }
}

abstract class _BusinessStore implements BusinessStore {
  const factory _BusinessStore({required String name}) = _$_BusinessStore;

  factory _BusinessStore.fromJson(Map<String, dynamic> json) =
      _$_BusinessStore.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$BusinessStoreCopyWith<_BusinessStore> get copyWith =>
      throw _privateConstructorUsedError;
}
