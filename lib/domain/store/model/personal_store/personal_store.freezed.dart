// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'personal_store.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PersonalStore _$PersonalStoreFromJson(Map<String, dynamic> json) {
  return _PersonalStore.fromJson(json);
}

/// @nodoc
class _$PersonalStoreTearOff {
  const _$PersonalStoreTearOff();

  _PersonalStore call({required String name}) {
    return _PersonalStore(
      name: name,
    );
  }

  PersonalStore fromJson(Map<String, Object> json) {
    return PersonalStore.fromJson(json);
  }
}

/// @nodoc
const $PersonalStore = _$PersonalStoreTearOff();

/// @nodoc
mixin _$PersonalStore {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PersonalStoreCopyWith<PersonalStore> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PersonalStoreCopyWith<$Res> {
  factory $PersonalStoreCopyWith(
          PersonalStore value, $Res Function(PersonalStore) then) =
      _$PersonalStoreCopyWithImpl<$Res>;
  $Res call({String name});
}

/// @nodoc
class _$PersonalStoreCopyWithImpl<$Res>
    implements $PersonalStoreCopyWith<$Res> {
  _$PersonalStoreCopyWithImpl(this._value, this._then);

  final PersonalStore _value;
  // ignore: unused_field
  final $Res Function(PersonalStore) _then;

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
abstract class _$PersonalStoreCopyWith<$Res>
    implements $PersonalStoreCopyWith<$Res> {
  factory _$PersonalStoreCopyWith(
          _PersonalStore value, $Res Function(_PersonalStore) then) =
      __$PersonalStoreCopyWithImpl<$Res>;
  @override
  $Res call({String name});
}

/// @nodoc
class __$PersonalStoreCopyWithImpl<$Res>
    extends _$PersonalStoreCopyWithImpl<$Res>
    implements _$PersonalStoreCopyWith<$Res> {
  __$PersonalStoreCopyWithImpl(
      _PersonalStore _value, $Res Function(_PersonalStore) _then)
      : super(_value, (v) => _then(v as _PersonalStore));

  @override
  _PersonalStore get _value => super._value as _PersonalStore;

  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_PersonalStore(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PersonalStore implements _PersonalStore {
  const _$_PersonalStore({required this.name});

  factory _$_PersonalStore.fromJson(Map<String, dynamic> json) =>
      _$_$_PersonalStoreFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'PersonalStore(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PersonalStore &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(name);

  @JsonKey(ignore: true)
  @override
  _$PersonalStoreCopyWith<_PersonalStore> get copyWith =>
      __$PersonalStoreCopyWithImpl<_PersonalStore>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PersonalStoreToJson(this);
  }
}

abstract class _PersonalStore implements PersonalStore {
  const factory _PersonalStore({required String name}) = _$_PersonalStore;

  factory _PersonalStore.fromJson(Map<String, dynamic> json) =
      _$_PersonalStore.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PersonalStoreCopyWith<_PersonalStore> get copyWith =>
      throw _privateConstructorUsedError;
}
