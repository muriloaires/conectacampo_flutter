// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'single_advertisement_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SingleAdvertisementEventTearOff {
  const _$SingleAdvertisementEventTearOff();

  Started started(Advertisement advertisement) {
    return Started(
      advertisement,
    );
  }
}

/// @nodoc
const $SingleAdvertisementEvent = _$SingleAdvertisementEventTearOff();

/// @nodoc
mixin _$SingleAdvertisementEvent {
  Advertisement get advertisement => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Advertisement advertisement) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Advertisement advertisement)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleAdvertisementEventCopyWith<SingleAdvertisementEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleAdvertisementEventCopyWith<$Res> {
  factory $SingleAdvertisementEventCopyWith(SingleAdvertisementEvent value,
          $Res Function(SingleAdvertisementEvent) then) =
      _$SingleAdvertisementEventCopyWithImpl<$Res>;
  $Res call({Advertisement advertisement});

  $AdvertisementCopyWith<$Res> get advertisement;
}

/// @nodoc
class _$SingleAdvertisementEventCopyWithImpl<$Res>
    implements $SingleAdvertisementEventCopyWith<$Res> {
  _$SingleAdvertisementEventCopyWithImpl(this._value, this._then);

  final SingleAdvertisementEvent _value;
  // ignore: unused_field
  final $Res Function(SingleAdvertisementEvent) _then;

  @override
  $Res call({
    Object? advertisement = freezed,
  }) {
    return _then(_value.copyWith(
      advertisement: advertisement == freezed
          ? _value.advertisement
          : advertisement // ignore: cast_nullable_to_non_nullable
              as Advertisement,
    ));
  }

  @override
  $AdvertisementCopyWith<$Res> get advertisement {
    return $AdvertisementCopyWith<$Res>(_value.advertisement, (value) {
      return _then(_value.copyWith(advertisement: value));
    });
  }
}

/// @nodoc
abstract class $StartedCopyWith<$Res>
    implements $SingleAdvertisementEventCopyWith<$Res> {
  factory $StartedCopyWith(Started value, $Res Function(Started) then) =
      _$StartedCopyWithImpl<$Res>;
  @override
  $Res call({Advertisement advertisement});

  @override
  $AdvertisementCopyWith<$Res> get advertisement;
}

/// @nodoc
class _$StartedCopyWithImpl<$Res>
    extends _$SingleAdvertisementEventCopyWithImpl<$Res>
    implements $StartedCopyWith<$Res> {
  _$StartedCopyWithImpl(Started _value, $Res Function(Started) _then)
      : super(_value, (v) => _then(v as Started));

  @override
  Started get _value => super._value as Started;

  @override
  $Res call({
    Object? advertisement = freezed,
  }) {
    return _then(Started(
      advertisement == freezed
          ? _value.advertisement
          : advertisement // ignore: cast_nullable_to_non_nullable
              as Advertisement,
    ));
  }
}

/// @nodoc

class _$Started implements Started {
  const _$Started(this.advertisement);

  @override
  final Advertisement advertisement;

  @override
  String toString() {
    return 'SingleAdvertisementEvent.started(advertisement: $advertisement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Started &&
            (identical(other.advertisement, advertisement) ||
                const DeepCollectionEquality()
                    .equals(other.advertisement, advertisement)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(advertisement);

  @JsonKey(ignore: true)
  @override
  $StartedCopyWith<Started> get copyWith =>
      _$StartedCopyWithImpl<Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Advertisement advertisement) started,
  }) {
    return started(advertisement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Advertisement advertisement)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(advertisement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements SingleAdvertisementEvent {
  const factory Started(Advertisement advertisement) = _$Started;

  @override
  Advertisement get advertisement => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $StartedCopyWith<Started> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$SingleAdvertisementStateTearOff {
  const _$SingleAdvertisementStateTearOff();

  _SingleAdvertisementState call(
      {required Advertisement? advertisement,
      required Advertisement? lastSellerAd}) {
    return _SingleAdvertisementState(
      advertisement: advertisement,
      lastSellerAd: lastSellerAd,
    );
  }
}

/// @nodoc
const $SingleAdvertisementState = _$SingleAdvertisementStateTearOff();

/// @nodoc
mixin _$SingleAdvertisementState {
  Advertisement? get advertisement => throw _privateConstructorUsedError;
  Advertisement? get lastSellerAd => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SingleAdvertisementStateCopyWith<SingleAdvertisementState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SingleAdvertisementStateCopyWith<$Res> {
  factory $SingleAdvertisementStateCopyWith(SingleAdvertisementState value,
          $Res Function(SingleAdvertisementState) then) =
      _$SingleAdvertisementStateCopyWithImpl<$Res>;
  $Res call({Advertisement? advertisement, Advertisement? lastSellerAd});

  $AdvertisementCopyWith<$Res>? get advertisement;
  $AdvertisementCopyWith<$Res>? get lastSellerAd;
}

/// @nodoc
class _$SingleAdvertisementStateCopyWithImpl<$Res>
    implements $SingleAdvertisementStateCopyWith<$Res> {
  _$SingleAdvertisementStateCopyWithImpl(this._value, this._then);

  final SingleAdvertisementState _value;
  // ignore: unused_field
  final $Res Function(SingleAdvertisementState) _then;

  @override
  $Res call({
    Object? advertisement = freezed,
    Object? lastSellerAd = freezed,
  }) {
    return _then(_value.copyWith(
      advertisement: advertisement == freezed
          ? _value.advertisement
          : advertisement // ignore: cast_nullable_to_non_nullable
              as Advertisement?,
      lastSellerAd: lastSellerAd == freezed
          ? _value.lastSellerAd
          : lastSellerAd // ignore: cast_nullable_to_non_nullable
              as Advertisement?,
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

  @override
  $AdvertisementCopyWith<$Res>? get lastSellerAd {
    if (_value.lastSellerAd == null) {
      return null;
    }

    return $AdvertisementCopyWith<$Res>(_value.lastSellerAd!, (value) {
      return _then(_value.copyWith(lastSellerAd: value));
    });
  }
}

/// @nodoc
abstract class _$SingleAdvertisementStateCopyWith<$Res>
    implements $SingleAdvertisementStateCopyWith<$Res> {
  factory _$SingleAdvertisementStateCopyWith(_SingleAdvertisementState value,
          $Res Function(_SingleAdvertisementState) then) =
      __$SingleAdvertisementStateCopyWithImpl<$Res>;
  @override
  $Res call({Advertisement? advertisement, Advertisement? lastSellerAd});

  @override
  $AdvertisementCopyWith<$Res>? get advertisement;
  @override
  $AdvertisementCopyWith<$Res>? get lastSellerAd;
}

/// @nodoc
class __$SingleAdvertisementStateCopyWithImpl<$Res>
    extends _$SingleAdvertisementStateCopyWithImpl<$Res>
    implements _$SingleAdvertisementStateCopyWith<$Res> {
  __$SingleAdvertisementStateCopyWithImpl(_SingleAdvertisementState _value,
      $Res Function(_SingleAdvertisementState) _then)
      : super(_value, (v) => _then(v as _SingleAdvertisementState));

  @override
  _SingleAdvertisementState get _value =>
      super._value as _SingleAdvertisementState;

  @override
  $Res call({
    Object? advertisement = freezed,
    Object? lastSellerAd = freezed,
  }) {
    return _then(_SingleAdvertisementState(
      advertisement: advertisement == freezed
          ? _value.advertisement
          : advertisement // ignore: cast_nullable_to_non_nullable
              as Advertisement?,
      lastSellerAd: lastSellerAd == freezed
          ? _value.lastSellerAd
          : lastSellerAd // ignore: cast_nullable_to_non_nullable
              as Advertisement?,
    ));
  }
}

/// @nodoc

class _$_SingleAdvertisementState implements _SingleAdvertisementState {
  const _$_SingleAdvertisementState(
      {required this.advertisement, required this.lastSellerAd});

  @override
  final Advertisement? advertisement;
  @override
  final Advertisement? lastSellerAd;

  @override
  String toString() {
    return 'SingleAdvertisementState(advertisement: $advertisement, lastSellerAd: $lastSellerAd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SingleAdvertisementState &&
            (identical(other.advertisement, advertisement) ||
                const DeepCollectionEquality()
                    .equals(other.advertisement, advertisement)) &&
            (identical(other.lastSellerAd, lastSellerAd) ||
                const DeepCollectionEquality()
                    .equals(other.lastSellerAd, lastSellerAd)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(advertisement) ^
      const DeepCollectionEquality().hash(lastSellerAd);

  @JsonKey(ignore: true)
  @override
  _$SingleAdvertisementStateCopyWith<_SingleAdvertisementState> get copyWith =>
      __$SingleAdvertisementStateCopyWithImpl<_SingleAdvertisementState>(
          this, _$identity);
}

abstract class _SingleAdvertisementState implements SingleAdvertisementState {
  const factory _SingleAdvertisementState(
      {required Advertisement? advertisement,
      required Advertisement? lastSellerAd}) = _$_SingleAdvertisementState;

  @override
  Advertisement? get advertisement => throw _privateConstructorUsedError;
  @override
  Advertisement? get lastSellerAd => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SingleAdvertisementStateCopyWith<_SingleAdvertisementState> get copyWith =>
      throw _privateConstructorUsedError;
}
