// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'partner_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PartnerStore _$PartnerStoreFromJson(Map<String, dynamic> json) {
  return _PartnerStore.fromJson(json);
}

/// @nodoc
class _$PartnerStoreTearOff {
  const _$PartnerStoreTearOff();

  _PartnerStore call() {
    return const _PartnerStore();
  }

  PartnerStore fromJson(Map<String, Object> json) {
    return PartnerStore.fromJson(json);
  }
}

/// @nodoc
const $PartnerStore = _$PartnerStoreTearOff();

/// @nodoc
mixin _$PartnerStore {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PartnerStoreCopyWith<$Res> {
  factory $PartnerStoreCopyWith(
          PartnerStore value, $Res Function(PartnerStore) then) =
      _$PartnerStoreCopyWithImpl<$Res>;
}

/// @nodoc
class _$PartnerStoreCopyWithImpl<$Res> implements $PartnerStoreCopyWith<$Res> {
  _$PartnerStoreCopyWithImpl(this._value, this._then);

  final PartnerStore _value;
  // ignore: unused_field
  final $Res Function(PartnerStore) _then;
}

/// @nodoc
abstract class _$PartnerStoreCopyWith<$Res> {
  factory _$PartnerStoreCopyWith(
          _PartnerStore value, $Res Function(_PartnerStore) then) =
      __$PartnerStoreCopyWithImpl<$Res>;
}

/// @nodoc
class __$PartnerStoreCopyWithImpl<$Res> extends _$PartnerStoreCopyWithImpl<$Res>
    implements _$PartnerStoreCopyWith<$Res> {
  __$PartnerStoreCopyWithImpl(
      _PartnerStore _value, $Res Function(_PartnerStore) _then)
      : super(_value, (v) => _then(v as _PartnerStore));

  @override
  _PartnerStore get _value => super._value as _PartnerStore;
}

/// @nodoc
@JsonSerializable()
class _$_PartnerStore implements _PartnerStore {
  const _$_PartnerStore();

  factory _$_PartnerStore.fromJson(Map<String, dynamic> json) =>
      _$_$_PartnerStoreFromJson(json);

  @override
  String toString() {
    return 'PartnerStore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _PartnerStore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PartnerStoreToJson(this);
  }
}

abstract class _PartnerStore implements PartnerStore {
  const factory _PartnerStore() = _$_PartnerStore;

  factory _PartnerStore.fromJson(Map<String, dynamic> json) =
      _$_PartnerStore.fromJson;
}
