// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_photo_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddPhotoEventTearOff {
  const _$AddPhotoEventTearOff();

  _Started started(NewAdProduct product) {
    return _Started(
      product,
    );
  }

  PhotoSelected photoSelected(String path) {
    return PhotoSelected(
      path,
    );
  }
}

/// @nodoc
const $AddPhotoEvent = _$AddPhotoEventTearOff();

/// @nodoc
mixin _$AddPhotoEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAdProduct product) started,
    required TResult Function(String path) photoSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdProduct product)? started,
    TResult Function(String path)? photoSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(PhotoSelected value) photoSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PhotoSelected value)? photoSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPhotoEventCopyWith<$Res> {
  factory $AddPhotoEventCopyWith(
          AddPhotoEvent value, $Res Function(AddPhotoEvent) then) =
      _$AddPhotoEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddPhotoEventCopyWithImpl<$Res>
    implements $AddPhotoEventCopyWith<$Res> {
  _$AddPhotoEventCopyWithImpl(this._value, this._then);

  final AddPhotoEvent _value;
  // ignore: unused_field
  final $Res Function(AddPhotoEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({NewAdProduct product});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AddPhotoEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_Started(
      product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as NewAdProduct,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.product);

  @override
  final NewAdProduct product;

  @override
  String toString() {
    return 'AddPhotoEvent.started(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.product, product) ||
                const DeepCollectionEquality().equals(other.product, product)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(product);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAdProduct product) started,
    required TResult Function(String path) photoSelected,
  }) {
    return started(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdProduct product)? started,
    TResult Function(String path)? photoSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(PhotoSelected value) photoSelected,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PhotoSelected value)? photoSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AddPhotoEvent {
  const factory _Started(NewAdProduct product) = _$_Started;

  NewAdProduct get product => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoSelectedCopyWith<$Res> {
  factory $PhotoSelectedCopyWith(
          PhotoSelected value, $Res Function(PhotoSelected) then) =
      _$PhotoSelectedCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class _$PhotoSelectedCopyWithImpl<$Res>
    extends _$AddPhotoEventCopyWithImpl<$Res>
    implements $PhotoSelectedCopyWith<$Res> {
  _$PhotoSelectedCopyWithImpl(
      PhotoSelected _value, $Res Function(PhotoSelected) _then)
      : super(_value, (v) => _then(v as PhotoSelected));

  @override
  PhotoSelected get _value => super._value as PhotoSelected;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(PhotoSelected(
      path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhotoSelected implements PhotoSelected {
  const _$PhotoSelected(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'AddPhotoEvent.photoSelected(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhotoSelected &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(path);

  @JsonKey(ignore: true)
  @override
  $PhotoSelectedCopyWith<PhotoSelected> get copyWith =>
      _$PhotoSelectedCopyWithImpl<PhotoSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAdProduct product) started,
    required TResult Function(String path) photoSelected,
  }) {
    return photoSelected(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdProduct product)? started,
    TResult Function(String path)? photoSelected,
    required TResult orElse(),
  }) {
    if (photoSelected != null) {
      return photoSelected(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(PhotoSelected value) photoSelected,
  }) {
    return photoSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(PhotoSelected value)? photoSelected,
    required TResult orElse(),
  }) {
    if (photoSelected != null) {
      return photoSelected(this);
    }
    return orElse();
  }
}

abstract class PhotoSelected implements AddPhotoEvent {
  const factory PhotoSelected(String path) = _$PhotoSelected;

  String get path => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotoSelectedCopyWith<PhotoSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddPhotoStateTearOff {
  const _$AddPhotoStateTearOff();

  _AddPhotoState call(
      {required NewAdProduct? product, required List<String> photos}) {
    return _AddPhotoState(
      product: product,
      photos: photos,
    );
  }
}

/// @nodoc
const $AddPhotoState = _$AddPhotoStateTearOff();

/// @nodoc
mixin _$AddPhotoState {
  NewAdProduct? get product => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddPhotoStateCopyWith<AddPhotoState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPhotoStateCopyWith<$Res> {
  factory $AddPhotoStateCopyWith(
          AddPhotoState value, $Res Function(AddPhotoState) then) =
      _$AddPhotoStateCopyWithImpl<$Res>;
  $Res call({NewAdProduct? product, List<String> photos});
}

/// @nodoc
class _$AddPhotoStateCopyWithImpl<$Res>
    implements $AddPhotoStateCopyWith<$Res> {
  _$AddPhotoStateCopyWithImpl(this._value, this._then);

  final AddPhotoState _value;
  // ignore: unused_field
  final $Res Function(AddPhotoState) _then;

  @override
  $Res call({
    Object? product = freezed,
    Object? photos = freezed,
  }) {
    return _then(_value.copyWith(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as NewAdProduct?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$AddPhotoStateCopyWith<$Res>
    implements $AddPhotoStateCopyWith<$Res> {
  factory _$AddPhotoStateCopyWith(
          _AddPhotoState value, $Res Function(_AddPhotoState) then) =
      __$AddPhotoStateCopyWithImpl<$Res>;
  @override
  $Res call({NewAdProduct? product, List<String> photos});
}

/// @nodoc
class __$AddPhotoStateCopyWithImpl<$Res>
    extends _$AddPhotoStateCopyWithImpl<$Res>
    implements _$AddPhotoStateCopyWith<$Res> {
  __$AddPhotoStateCopyWithImpl(
      _AddPhotoState _value, $Res Function(_AddPhotoState) _then)
      : super(_value, (v) => _then(v as _AddPhotoState));

  @override
  _AddPhotoState get _value => super._value as _AddPhotoState;

  @override
  $Res call({
    Object? product = freezed,
    Object? photos = freezed,
  }) {
    return _then(_AddPhotoState(
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as NewAdProduct?,
      photos: photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_AddPhotoState implements _AddPhotoState {
  const _$_AddPhotoState({required this.product, required this.photos});

  @override
  final NewAdProduct? product;
  @override
  final List<String> photos;

  @override
  String toString() {
    return 'AddPhotoState(product: $product, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddPhotoState &&
            (identical(other.product, product) ||
                const DeepCollectionEquality()
                    .equals(other.product, product)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(product) ^
      const DeepCollectionEquality().hash(photos);

  @JsonKey(ignore: true)
  @override
  _$AddPhotoStateCopyWith<_AddPhotoState> get copyWith =>
      __$AddPhotoStateCopyWithImpl<_AddPhotoState>(this, _$identity);
}

abstract class _AddPhotoState implements AddPhotoState {
  const factory _AddPhotoState(
      {required NewAdProduct? product,
      required List<String> photos}) = _$_AddPhotoState;

  @override
  NewAdProduct? get product => throw _privateConstructorUsedError;
  @override
  List<String> get photos => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddPhotoStateCopyWith<_AddPhotoState> get copyWith =>
      throw _privateConstructorUsedError;
}
