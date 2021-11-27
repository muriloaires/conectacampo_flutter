// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'group_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GroupEventTearOff {
  const _$GroupEventTearOff();

  _Started started() {
    return const _Started();
  }

  OnSearchTapped onSearchTapped() {
    return const OnSearchTapped();
  }
}

/// @nodoc
const $GroupEvent = _$GroupEventTearOff();

/// @nodoc
mixin _$GroupEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onSearchTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onSearchTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnSearchTapped value) onSearchTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnSearchTapped value)? onSearchTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupEventCopyWith<$Res> {
  factory $GroupEventCopyWith(
          GroupEvent value, $Res Function(GroupEvent) then) =
      _$GroupEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$GroupEventCopyWithImpl<$Res> implements $GroupEventCopyWith<$Res> {
  _$GroupEventCopyWithImpl(this._value, this._then);

  final GroupEvent _value;
  // ignore: unused_field
  final $Res Function(GroupEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$GroupEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'GroupEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onSearchTapped,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onSearchTapped,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnSearchTapped value) onSearchTapped,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnSearchTapped value)? onSearchTapped,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements GroupEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $OnSearchTappedCopyWith<$Res> {
  factory $OnSearchTappedCopyWith(
          OnSearchTapped value, $Res Function(OnSearchTapped) then) =
      _$OnSearchTappedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnSearchTappedCopyWithImpl<$Res> extends _$GroupEventCopyWithImpl<$Res>
    implements $OnSearchTappedCopyWith<$Res> {
  _$OnSearchTappedCopyWithImpl(
      OnSearchTapped _value, $Res Function(OnSearchTapped) _then)
      : super(_value, (v) => _then(v as OnSearchTapped));

  @override
  OnSearchTapped get _value => super._value as OnSearchTapped;
}

/// @nodoc

class _$OnSearchTapped implements OnSearchTapped {
  const _$OnSearchTapped();

  @override
  String toString() {
    return 'GroupEvent.onSearchTapped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnSearchTapped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onSearchTapped,
  }) {
    return onSearchTapped();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onSearchTapped,
    required TResult orElse(),
  }) {
    if (onSearchTapped != null) {
      return onSearchTapped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnSearchTapped value) onSearchTapped,
  }) {
    return onSearchTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnSearchTapped value)? onSearchTapped,
    required TResult orElse(),
  }) {
    if (onSearchTapped != null) {
      return onSearchTapped(this);
    }
    return orElse();
  }
}

abstract class OnSearchTapped implements GroupEvent {
  const factory OnSearchTapped() = _$OnSearchTapped;
}

/// @nodoc
class _$GroupStateTearOff {
  const _$GroupStateTearOff();

  _GroupState call(
      {required Option<Either<AdvertisementFailure, List<Advertisement>>>
          optionOfGroupsAdsSuccessOrFailure,
      required bool loading,
      required bool openSearch}) {
    return _GroupState(
      optionOfGroupsAdsSuccessOrFailure: optionOfGroupsAdsSuccessOrFailure,
      loading: loading,
      openSearch: openSearch,
    );
  }
}

/// @nodoc
const $GroupState = _$GroupStateTearOff();

/// @nodoc
mixin _$GroupState {
  Option<Either<AdvertisementFailure, List<Advertisement>>>
      get optionOfGroupsAdsSuccessOrFailure =>
          throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get openSearch => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GroupStateCopyWith<GroupState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupStateCopyWith<$Res> {
  factory $GroupStateCopyWith(
          GroupState value, $Res Function(GroupState) then) =
      _$GroupStateCopyWithImpl<$Res>;
  $Res call(
      {Option<Either<AdvertisementFailure, List<Advertisement>>>
          optionOfGroupsAdsSuccessOrFailure,
      bool loading,
      bool openSearch});
}

/// @nodoc
class _$GroupStateCopyWithImpl<$Res> implements $GroupStateCopyWith<$Res> {
  _$GroupStateCopyWithImpl(this._value, this._then);

  final GroupState _value;
  // ignore: unused_field
  final $Res Function(GroupState) _then;

  @override
  $Res call({
    Object? optionOfGroupsAdsSuccessOrFailure = freezed,
    Object? loading = freezed,
    Object? openSearch = freezed,
  }) {
    return _then(_value.copyWith(
      optionOfGroupsAdsSuccessOrFailure: optionOfGroupsAdsSuccessOrFailure ==
              freezed
          ? _value.optionOfGroupsAdsSuccessOrFailure
          : optionOfGroupsAdsSuccessOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<AdvertisementFailure, List<Advertisement>>>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      openSearch: openSearch == freezed
          ? _value.openSearch
          : openSearch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$GroupStateCopyWith<$Res> implements $GroupStateCopyWith<$Res> {
  factory _$GroupStateCopyWith(
          _GroupState value, $Res Function(_GroupState) then) =
      __$GroupStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Option<Either<AdvertisementFailure, List<Advertisement>>>
          optionOfGroupsAdsSuccessOrFailure,
      bool loading,
      bool openSearch});
}

/// @nodoc
class __$GroupStateCopyWithImpl<$Res> extends _$GroupStateCopyWithImpl<$Res>
    implements _$GroupStateCopyWith<$Res> {
  __$GroupStateCopyWithImpl(
      _GroupState _value, $Res Function(_GroupState) _then)
      : super(_value, (v) => _then(v as _GroupState));

  @override
  _GroupState get _value => super._value as _GroupState;

  @override
  $Res call({
    Object? optionOfGroupsAdsSuccessOrFailure = freezed,
    Object? loading = freezed,
    Object? openSearch = freezed,
  }) {
    return _then(_GroupState(
      optionOfGroupsAdsSuccessOrFailure: optionOfGroupsAdsSuccessOrFailure ==
              freezed
          ? _value.optionOfGroupsAdsSuccessOrFailure
          : optionOfGroupsAdsSuccessOrFailure // ignore: cast_nullable_to_non_nullable
              as Option<Either<AdvertisementFailure, List<Advertisement>>>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      openSearch: openSearch == freezed
          ? _value.openSearch
          : openSearch // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GroupState implements _GroupState {
  const _$_GroupState(
      {required this.optionOfGroupsAdsSuccessOrFailure,
      required this.loading,
      required this.openSearch});

  @override
  final Option<Either<AdvertisementFailure, List<Advertisement>>>
      optionOfGroupsAdsSuccessOrFailure;
  @override
  final bool loading;
  @override
  final bool openSearch;

  @override
  String toString() {
    return 'GroupState(optionOfGroupsAdsSuccessOrFailure: $optionOfGroupsAdsSuccessOrFailure, loading: $loading, openSearch: $openSearch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GroupState &&
            (identical(other.optionOfGroupsAdsSuccessOrFailure,
                    optionOfGroupsAdsSuccessOrFailure) ||
                const DeepCollectionEquality().equals(
                    other.optionOfGroupsAdsSuccessOrFailure,
                    optionOfGroupsAdsSuccessOrFailure)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.openSearch, openSearch) ||
                const DeepCollectionEquality()
                    .equals(other.openSearch, openSearch)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(optionOfGroupsAdsSuccessOrFailure) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(openSearch);

  @JsonKey(ignore: true)
  @override
  _$GroupStateCopyWith<_GroupState> get copyWith =>
      __$GroupStateCopyWithImpl<_GroupState>(this, _$identity);
}

abstract class _GroupState implements GroupState {
  const factory _GroupState(
      {required Option<Either<AdvertisementFailure, List<Advertisement>>>
          optionOfGroupsAdsSuccessOrFailure,
      required bool loading,
      required bool openSearch}) = _$_GroupState;

  @override
  Option<Either<AdvertisementFailure, List<Advertisement>>>
      get optionOfGroupsAdsSuccessOrFailure =>
          throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get openSearch => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GroupStateCopyWith<_GroupState> get copyWith =>
      throw _privateConstructorUsedError;
}
