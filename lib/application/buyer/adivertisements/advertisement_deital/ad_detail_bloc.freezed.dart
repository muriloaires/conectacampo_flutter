// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ad_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdDetailEventTearOff {
  const _$AdDetailEventTearOff();

  _Started started(int adId) {
    return _Started(
      adId,
    );
  }
}

/// @nodoc
const $AdDetailEvent = _$AdDetailEventTearOff();

/// @nodoc
mixin _$AdDetailEvent {
  int get adId => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int adId) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int adId)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdDetailEventCopyWith<AdDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdDetailEventCopyWith<$Res> {
  factory $AdDetailEventCopyWith(
          AdDetailEvent value, $Res Function(AdDetailEvent) then) =
      _$AdDetailEventCopyWithImpl<$Res>;
  $Res call({int adId});
}

/// @nodoc
class _$AdDetailEventCopyWithImpl<$Res>
    implements $AdDetailEventCopyWith<$Res> {
  _$AdDetailEventCopyWithImpl(this._value, this._then);

  final AdDetailEvent _value;
  // ignore: unused_field
  final $Res Function(AdDetailEvent) _then;

  @override
  $Res call({
    Object? adId = freezed,
  }) {
    return _then(_value.copyWith(
      adId: adId == freezed
          ? _value.adId
          : adId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> implements $AdDetailEventCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  @override
  $Res call({int adId});
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$AdDetailEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? adId = freezed,
  }) {
    return _then(_Started(
      adId == freezed
          ? _value.adId
          : adId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.adId);

  @override
  final int adId;

  @override
  String toString() {
    return 'AdDetailEvent.started(adId: $adId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.adId, adId) ||
                const DeepCollectionEquality().equals(other.adId, adId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(adId);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int adId) started,
  }) {
    return started(adId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int adId)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(adId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AdDetailEvent {
  const factory _Started(int adId) = _$_Started;

  @override
  int get adId => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AdDetailStateTearOff {
  const _$AdDetailStateTearOff();

  _AdDetailState call(
      {required Advertisement? advertisement, required bool loadingAd}) {
    return _AdDetailState(
      advertisement: advertisement,
      loadingAd: loadingAd,
    );
  }
}

/// @nodoc
const $AdDetailState = _$AdDetailStateTearOff();

/// @nodoc
mixin _$AdDetailState {
  Advertisement? get advertisement => throw _privateConstructorUsedError;
  bool get loadingAd => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdDetailStateCopyWith<AdDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdDetailStateCopyWith<$Res> {
  factory $AdDetailStateCopyWith(
          AdDetailState value, $Res Function(AdDetailState) then) =
      _$AdDetailStateCopyWithImpl<$Res>;
  $Res call({Advertisement? advertisement, bool loadingAd});

  $AdvertisementCopyWith<$Res>? get advertisement;
}

/// @nodoc
class _$AdDetailStateCopyWithImpl<$Res>
    implements $AdDetailStateCopyWith<$Res> {
  _$AdDetailStateCopyWithImpl(this._value, this._then);

  final AdDetailState _value;
  // ignore: unused_field
  final $Res Function(AdDetailState) _then;

  @override
  $Res call({
    Object? advertisement = freezed,
    Object? loadingAd = freezed,
  }) {
    return _then(_value.copyWith(
      advertisement: advertisement == freezed
          ? _value.advertisement
          : advertisement // ignore: cast_nullable_to_non_nullable
              as Advertisement?,
      loadingAd: loadingAd == freezed
          ? _value.loadingAd
          : loadingAd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $AdvertisementCopyWith<$Res>? get advertisement {
    if (_value.advertisement == null) {
      return null;
    }

    return $AdvertisementCopyWith<$Res>(_value.advertisement!, (value) {
      return _then(_value.copyWith(advertisement: value));
    });
  }
}

/// @nodoc
abstract class _$AdDetailStateCopyWith<$Res>
    implements $AdDetailStateCopyWith<$Res> {
  factory _$AdDetailStateCopyWith(
          _AdDetailState value, $Res Function(_AdDetailState) then) =
      __$AdDetailStateCopyWithImpl<$Res>;
  @override
  $Res call({Advertisement? advertisement, bool loadingAd});

  @override
  $AdvertisementCopyWith<$Res>? get advertisement;
}

/// @nodoc
class __$AdDetailStateCopyWithImpl<$Res>
    extends _$AdDetailStateCopyWithImpl<$Res>
    implements _$AdDetailStateCopyWith<$Res> {
  __$AdDetailStateCopyWithImpl(
      _AdDetailState _value, $Res Function(_AdDetailState) _then)
      : super(_value, (v) => _then(v as _AdDetailState));

  @override
  _AdDetailState get _value => super._value as _AdDetailState;

  @override
  $Res call({
    Object? advertisement = freezed,
    Object? loadingAd = freezed,
  }) {
    return _then(_AdDetailState(
      advertisement: advertisement == freezed
          ? _value.advertisement
          : advertisement // ignore: cast_nullable_to_non_nullable
              as Advertisement?,
      loadingAd: loadingAd == freezed
          ? _value.loadingAd
          : loadingAd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AdDetailState implements _AdDetailState {
  const _$_AdDetailState(
      {required this.advertisement, required this.loadingAd});

  @override
  final Advertisement? advertisement;
  @override
  final bool loadingAd;

  @override
  String toString() {
    return 'AdDetailState(advertisement: $advertisement, loadingAd: $loadingAd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdDetailState &&
            (identical(other.advertisement, advertisement) ||
                const DeepCollectionEquality()
                    .equals(other.advertisement, advertisement)) &&
            (identical(other.loadingAd, loadingAd) ||
                const DeepCollectionEquality()
                    .equals(other.loadingAd, loadingAd)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(advertisement) ^
      const DeepCollectionEquality().hash(loadingAd);

  @JsonKey(ignore: true)
  @override
  _$AdDetailStateCopyWith<_AdDetailState> get copyWith =>
      __$AdDetailStateCopyWithImpl<_AdDetailState>(this, _$identity);
}

abstract class _AdDetailState implements AdDetailState {
  const factory _AdDetailState(
      {required Advertisement? advertisement,
      required bool loadingAd}) = _$_AdDetailState;

  @override
  Advertisement? get advertisement => throw _privateConstructorUsedError;
  @override
  bool get loadingAd => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AdDetailStateCopyWith<_AdDetailState> get copyWith =>
      throw _privateConstructorUsedError;
}
