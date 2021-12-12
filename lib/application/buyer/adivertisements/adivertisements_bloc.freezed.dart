// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'adivertisements_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AdvertisementsEventTearOff {
  const _$AdvertisementsEventTearOff();

  ExpandedChanged expandedChanged(
      {required int index, required bool isExpanded}) {
    return ExpandedChanged(
      index: index,
      isExpanded: isExpanded,
    );
  }

  _Started started() {
    return const _Started();
  }

  PlaceChanged placeChanged() {
    return const PlaceChanged();
  }

  LeaveGroupTapped leaveGroupTapped(Advertisement? advertisement) {
    return LeaveGroupTapped(
      advertisement,
    );
  }
}

/// @nodoc
const $AdvertisementsEvent = _$AdvertisementsEventTearOff();

/// @nodoc
mixin _$AdvertisementsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, bool isExpanded) expandedChanged,
    required TResult Function() started,
    required TResult Function() placeChanged,
    required TResult Function(Advertisement? advertisement) leaveGroupTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, bool isExpanded)? expandedChanged,
    TResult Function()? started,
    TResult Function()? placeChanged,
    TResult Function(Advertisement? advertisement)? leaveGroupTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpandedChanged value) expandedChanged,
    required TResult Function(_Started value) started,
    required TResult Function(PlaceChanged value) placeChanged,
    required TResult Function(LeaveGroupTapped value) leaveGroupTapped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpandedChanged value)? expandedChanged,
    TResult Function(_Started value)? started,
    TResult Function(PlaceChanged value)? placeChanged,
    TResult Function(LeaveGroupTapped value)? leaveGroupTapped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisementsEventCopyWith<$Res> {
  factory $AdvertisementsEventCopyWith(
          AdvertisementsEvent value, $Res Function(AdvertisementsEvent) then) =
      _$AdvertisementsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AdvertisementsEventCopyWithImpl<$Res>
    implements $AdvertisementsEventCopyWith<$Res> {
  _$AdvertisementsEventCopyWithImpl(this._value, this._then);

  final AdvertisementsEvent _value;
  // ignore: unused_field
  final $Res Function(AdvertisementsEvent) _then;
}

/// @nodoc
abstract class $ExpandedChangedCopyWith<$Res> {
  factory $ExpandedChangedCopyWith(
          ExpandedChanged value, $Res Function(ExpandedChanged) then) =
      _$ExpandedChangedCopyWithImpl<$Res>;
  $Res call({int index, bool isExpanded});
}

/// @nodoc
class _$ExpandedChangedCopyWithImpl<$Res>
    extends _$AdvertisementsEventCopyWithImpl<$Res>
    implements $ExpandedChangedCopyWith<$Res> {
  _$ExpandedChangedCopyWithImpl(
      ExpandedChanged _value, $Res Function(ExpandedChanged) _then)
      : super(_value, (v) => _then(v as ExpandedChanged));

  @override
  ExpandedChanged get _value => super._value as ExpandedChanged;

  @override
  $Res call({
    Object? index = freezed,
    Object? isExpanded = freezed,
  }) {
    return _then(ExpandedChanged(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      isExpanded: isExpanded == freezed
          ? _value.isExpanded
          : isExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ExpandedChanged implements ExpandedChanged {
  const _$ExpandedChanged({required this.index, required this.isExpanded});

  @override
  final int index;
  @override
  final bool isExpanded;

  @override
  String toString() {
    return 'AdvertisementsEvent.expandedChanged(index: $index, isExpanded: $isExpanded)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ExpandedChanged &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.isExpanded, isExpanded) ||
                const DeepCollectionEquality()
                    .equals(other.isExpanded, isExpanded)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(isExpanded);

  @JsonKey(ignore: true)
  @override
  $ExpandedChangedCopyWith<ExpandedChanged> get copyWith =>
      _$ExpandedChangedCopyWithImpl<ExpandedChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, bool isExpanded) expandedChanged,
    required TResult Function() started,
    required TResult Function() placeChanged,
    required TResult Function(Advertisement? advertisement) leaveGroupTapped,
  }) {
    return expandedChanged(index, isExpanded);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, bool isExpanded)? expandedChanged,
    TResult Function()? started,
    TResult Function()? placeChanged,
    TResult Function(Advertisement? advertisement)? leaveGroupTapped,
    required TResult orElse(),
  }) {
    if (expandedChanged != null) {
      return expandedChanged(index, isExpanded);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpandedChanged value) expandedChanged,
    required TResult Function(_Started value) started,
    required TResult Function(PlaceChanged value) placeChanged,
    required TResult Function(LeaveGroupTapped value) leaveGroupTapped,
  }) {
    return expandedChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpandedChanged value)? expandedChanged,
    TResult Function(_Started value)? started,
    TResult Function(PlaceChanged value)? placeChanged,
    TResult Function(LeaveGroupTapped value)? leaveGroupTapped,
    required TResult orElse(),
  }) {
    if (expandedChanged != null) {
      return expandedChanged(this);
    }
    return orElse();
  }
}

abstract class ExpandedChanged implements AdvertisementsEvent {
  const factory ExpandedChanged(
      {required int index, required bool isExpanded}) = _$ExpandedChanged;

  int get index => throw _privateConstructorUsedError;
  bool get isExpanded => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExpandedChangedCopyWith<ExpandedChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$AdvertisementsEventCopyWithImpl<$Res>
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
    return 'AdvertisementsEvent.started()';
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
    required TResult Function(int index, bool isExpanded) expandedChanged,
    required TResult Function() started,
    required TResult Function() placeChanged,
    required TResult Function(Advertisement? advertisement) leaveGroupTapped,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, bool isExpanded)? expandedChanged,
    TResult Function()? started,
    TResult Function()? placeChanged,
    TResult Function(Advertisement? advertisement)? leaveGroupTapped,
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
    required TResult Function(ExpandedChanged value) expandedChanged,
    required TResult Function(_Started value) started,
    required TResult Function(PlaceChanged value) placeChanged,
    required TResult Function(LeaveGroupTapped value) leaveGroupTapped,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpandedChanged value)? expandedChanged,
    TResult Function(_Started value)? started,
    TResult Function(PlaceChanged value)? placeChanged,
    TResult Function(LeaveGroupTapped value)? leaveGroupTapped,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AdvertisementsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $PlaceChangedCopyWith<$Res> {
  factory $PlaceChangedCopyWith(
          PlaceChanged value, $Res Function(PlaceChanged) then) =
      _$PlaceChangedCopyWithImpl<$Res>;
}

/// @nodoc
class _$PlaceChangedCopyWithImpl<$Res>
    extends _$AdvertisementsEventCopyWithImpl<$Res>
    implements $PlaceChangedCopyWith<$Res> {
  _$PlaceChangedCopyWithImpl(
      PlaceChanged _value, $Res Function(PlaceChanged) _then)
      : super(_value, (v) => _then(v as PlaceChanged));

  @override
  PlaceChanged get _value => super._value as PlaceChanged;
}

/// @nodoc

class _$PlaceChanged implements PlaceChanged {
  const _$PlaceChanged();

  @override
  String toString() {
    return 'AdvertisementsEvent.placeChanged()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is PlaceChanged);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, bool isExpanded) expandedChanged,
    required TResult Function() started,
    required TResult Function() placeChanged,
    required TResult Function(Advertisement? advertisement) leaveGroupTapped,
  }) {
    return placeChanged();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, bool isExpanded)? expandedChanged,
    TResult Function()? started,
    TResult Function()? placeChanged,
    TResult Function(Advertisement? advertisement)? leaveGroupTapped,
    required TResult orElse(),
  }) {
    if (placeChanged != null) {
      return placeChanged();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpandedChanged value) expandedChanged,
    required TResult Function(_Started value) started,
    required TResult Function(PlaceChanged value) placeChanged,
    required TResult Function(LeaveGroupTapped value) leaveGroupTapped,
  }) {
    return placeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpandedChanged value)? expandedChanged,
    TResult Function(_Started value)? started,
    TResult Function(PlaceChanged value)? placeChanged,
    TResult Function(LeaveGroupTapped value)? leaveGroupTapped,
    required TResult orElse(),
  }) {
    if (placeChanged != null) {
      return placeChanged(this);
    }
    return orElse();
  }
}

abstract class PlaceChanged implements AdvertisementsEvent {
  const factory PlaceChanged() = _$PlaceChanged;
}

/// @nodoc
abstract class $LeaveGroupTappedCopyWith<$Res> {
  factory $LeaveGroupTappedCopyWith(
          LeaveGroupTapped value, $Res Function(LeaveGroupTapped) then) =
      _$LeaveGroupTappedCopyWithImpl<$Res>;
  $Res call({Advertisement? advertisement});

  $AdvertisementCopyWith<$Res>? get advertisement;
}

/// @nodoc
class _$LeaveGroupTappedCopyWithImpl<$Res>
    extends _$AdvertisementsEventCopyWithImpl<$Res>
    implements $LeaveGroupTappedCopyWith<$Res> {
  _$LeaveGroupTappedCopyWithImpl(
      LeaveGroupTapped _value, $Res Function(LeaveGroupTapped) _then)
      : super(_value, (v) => _then(v as LeaveGroupTapped));

  @override
  LeaveGroupTapped get _value => super._value as LeaveGroupTapped;

  @override
  $Res call({
    Object? advertisement = freezed,
  }) {
    return _then(LeaveGroupTapped(
      advertisement == freezed
          ? _value.advertisement
          : advertisement // ignore: cast_nullable_to_non_nullable
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
}

/// @nodoc

class _$LeaveGroupTapped implements LeaveGroupTapped {
  const _$LeaveGroupTapped(this.advertisement);

  @override
  final Advertisement? advertisement;

  @override
  String toString() {
    return 'AdvertisementsEvent.leaveGroupTapped(advertisement: $advertisement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LeaveGroupTapped &&
            (identical(other.advertisement, advertisement) ||
                const DeepCollectionEquality()
                    .equals(other.advertisement, advertisement)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(advertisement);

  @JsonKey(ignore: true)
  @override
  $LeaveGroupTappedCopyWith<LeaveGroupTapped> get copyWith =>
      _$LeaveGroupTappedCopyWithImpl<LeaveGroupTapped>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index, bool isExpanded) expandedChanged,
    required TResult Function() started,
    required TResult Function() placeChanged,
    required TResult Function(Advertisement? advertisement) leaveGroupTapped,
  }) {
    return leaveGroupTapped(advertisement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index, bool isExpanded)? expandedChanged,
    TResult Function()? started,
    TResult Function()? placeChanged,
    TResult Function(Advertisement? advertisement)? leaveGroupTapped,
    required TResult orElse(),
  }) {
    if (leaveGroupTapped != null) {
      return leaveGroupTapped(advertisement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ExpandedChanged value) expandedChanged,
    required TResult Function(_Started value) started,
    required TResult Function(PlaceChanged value) placeChanged,
    required TResult Function(LeaveGroupTapped value) leaveGroupTapped,
  }) {
    return leaveGroupTapped(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ExpandedChanged value)? expandedChanged,
    TResult Function(_Started value)? started,
    TResult Function(PlaceChanged value)? placeChanged,
    TResult Function(LeaveGroupTapped value)? leaveGroupTapped,
    required TResult orElse(),
  }) {
    if (leaveGroupTapped != null) {
      return leaveGroupTapped(this);
    }
    return orElse();
  }
}

abstract class LeaveGroupTapped implements AdvertisementsEvent {
  const factory LeaveGroupTapped(Advertisement? advertisement) =
      _$LeaveGroupTapped;

  Advertisement? get advertisement => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeaveGroupTappedCopyWith<LeaveGroupTapped> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AdvertisementsStateTearOff {
  const _$AdvertisementsStateTearOff();

  _AdivertisementsState call(
      {required Either<AdvertisementFailure, List<Advertisement>>
          adsFailureOrSuccess,
      required Either<AdvertisementFailure, List<Advertisement>>
          groupsAdsFailureOrSuccess,
      required bool loading,
      required bool groupRemovalSuccess}) {
    return _AdivertisementsState(
      adsFailureOrSuccess: adsFailureOrSuccess,
      groupsAdsFailureOrSuccess: groupsAdsFailureOrSuccess,
      loading: loading,
      groupRemovalSuccess: groupRemovalSuccess,
    );
  }
}

/// @nodoc
const $AdvertisementsState = _$AdvertisementsStateTearOff();

/// @nodoc
mixin _$AdvertisementsState {
  Either<AdvertisementFailure, List<Advertisement>> get adsFailureOrSuccess =>
      throw _privateConstructorUsedError;
  Either<AdvertisementFailure, List<Advertisement>>
      get groupsAdsFailureOrSuccess => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get groupRemovalSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AdvertisementsStateCopyWith<AdvertisementsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertisementsStateCopyWith<$Res> {
  factory $AdvertisementsStateCopyWith(
          AdvertisementsState value, $Res Function(AdvertisementsState) then) =
      _$AdvertisementsStateCopyWithImpl<$Res>;
  $Res call(
      {Either<AdvertisementFailure, List<Advertisement>> adsFailureOrSuccess,
      Either<AdvertisementFailure, List<Advertisement>>
          groupsAdsFailureOrSuccess,
      bool loading,
      bool groupRemovalSuccess});
}

/// @nodoc
class _$AdvertisementsStateCopyWithImpl<$Res>
    implements $AdvertisementsStateCopyWith<$Res> {
  _$AdvertisementsStateCopyWithImpl(this._value, this._then);

  final AdvertisementsState _value;
  // ignore: unused_field
  final $Res Function(AdvertisementsState) _then;

  @override
  $Res call({
    Object? adsFailureOrSuccess = freezed,
    Object? groupsAdsFailureOrSuccess = freezed,
    Object? loading = freezed,
    Object? groupRemovalSuccess = freezed,
  }) {
    return _then(_value.copyWith(
      adsFailureOrSuccess: adsFailureOrSuccess == freezed
          ? _value.adsFailureOrSuccess
          : adsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<AdvertisementFailure, List<Advertisement>>,
      groupsAdsFailureOrSuccess: groupsAdsFailureOrSuccess == freezed
          ? _value.groupsAdsFailureOrSuccess
          : groupsAdsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<AdvertisementFailure, List<Advertisement>>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      groupRemovalSuccess: groupRemovalSuccess == freezed
          ? _value.groupRemovalSuccess
          : groupRemovalSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AdivertisementsStateCopyWith<$Res>
    implements $AdvertisementsStateCopyWith<$Res> {
  factory _$AdivertisementsStateCopyWith(_AdivertisementsState value,
          $Res Function(_AdivertisementsState) then) =
      __$AdivertisementsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Either<AdvertisementFailure, List<Advertisement>> adsFailureOrSuccess,
      Either<AdvertisementFailure, List<Advertisement>>
          groupsAdsFailureOrSuccess,
      bool loading,
      bool groupRemovalSuccess});
}

/// @nodoc
class __$AdivertisementsStateCopyWithImpl<$Res>
    extends _$AdvertisementsStateCopyWithImpl<$Res>
    implements _$AdivertisementsStateCopyWith<$Res> {
  __$AdivertisementsStateCopyWithImpl(
      _AdivertisementsState _value, $Res Function(_AdivertisementsState) _then)
      : super(_value, (v) => _then(v as _AdivertisementsState));

  @override
  _AdivertisementsState get _value => super._value as _AdivertisementsState;

  @override
  $Res call({
    Object? adsFailureOrSuccess = freezed,
    Object? groupsAdsFailureOrSuccess = freezed,
    Object? loading = freezed,
    Object? groupRemovalSuccess = freezed,
  }) {
    return _then(_AdivertisementsState(
      adsFailureOrSuccess: adsFailureOrSuccess == freezed
          ? _value.adsFailureOrSuccess
          : adsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<AdvertisementFailure, List<Advertisement>>,
      groupsAdsFailureOrSuccess: groupsAdsFailureOrSuccess == freezed
          ? _value.groupsAdsFailureOrSuccess
          : groupsAdsFailureOrSuccess // ignore: cast_nullable_to_non_nullable
              as Either<AdvertisementFailure, List<Advertisement>>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      groupRemovalSuccess: groupRemovalSuccess == freezed
          ? _value.groupRemovalSuccess
          : groupRemovalSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AdivertisementsState implements _AdivertisementsState {
  const _$_AdivertisementsState(
      {required this.adsFailureOrSuccess,
      required this.groupsAdsFailureOrSuccess,
      required this.loading,
      required this.groupRemovalSuccess});

  @override
  final Either<AdvertisementFailure, List<Advertisement>> adsFailureOrSuccess;
  @override
  final Either<AdvertisementFailure, List<Advertisement>>
      groupsAdsFailureOrSuccess;
  @override
  final bool loading;
  @override
  final bool groupRemovalSuccess;

  @override
  String toString() {
    return 'AdvertisementsState(adsFailureOrSuccess: $adsFailureOrSuccess, groupsAdsFailureOrSuccess: $groupsAdsFailureOrSuccess, loading: $loading, groupRemovalSuccess: $groupRemovalSuccess)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AdivertisementsState &&
            (identical(other.adsFailureOrSuccess, adsFailureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.adsFailureOrSuccess, adsFailureOrSuccess)) &&
            (identical(other.groupsAdsFailureOrSuccess,
                    groupsAdsFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.groupsAdsFailureOrSuccess,
                    groupsAdsFailureOrSuccess)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.groupRemovalSuccess, groupRemovalSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.groupRemovalSuccess, groupRemovalSuccess)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(adsFailureOrSuccess) ^
      const DeepCollectionEquality().hash(groupsAdsFailureOrSuccess) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(groupRemovalSuccess);

  @JsonKey(ignore: true)
  @override
  _$AdivertisementsStateCopyWith<_AdivertisementsState> get copyWith =>
      __$AdivertisementsStateCopyWithImpl<_AdivertisementsState>(
          this, _$identity);
}

abstract class _AdivertisementsState implements AdvertisementsState {
  const factory _AdivertisementsState(
      {required Either<AdvertisementFailure, List<Advertisement>>
          adsFailureOrSuccess,
      required Either<AdvertisementFailure, List<Advertisement>>
          groupsAdsFailureOrSuccess,
      required bool loading,
      required bool groupRemovalSuccess}) = _$_AdivertisementsState;

  @override
  Either<AdvertisementFailure, List<Advertisement>> get adsFailureOrSuccess =>
      throw _privateConstructorUsedError;
  @override
  Either<AdvertisementFailure, List<Advertisement>>
      get groupsAdsFailureOrSuccess => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get groupRemovalSuccess => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AdivertisementsStateCopyWith<_AdivertisementsState> get copyWith =>
      throw _privateConstructorUsedError;
}
