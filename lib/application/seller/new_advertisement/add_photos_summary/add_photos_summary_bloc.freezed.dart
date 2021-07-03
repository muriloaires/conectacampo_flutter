// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_photos_summary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddPhotosSummaryEventTearOff {
  const _$AddPhotosSummaryEventTearOff();

  _Started started(NewAdvertisement newAdvertisement) {
    return _Started(
      newAdvertisement,
    );
  }

  ItemSelected itemSelected(int index) {
    return ItemSelected(
      index,
    );
  }

  BtnProceedTap btnProceedTap() {
    return const BtnProceedTap();
  }

  PhotosSelected photosSelected(int index, List<String> photos) {
    return PhotosSelected(
      index,
      photos,
    );
  }
}

/// @nodoc
const $AddPhotosSummaryEvent = _$AddPhotosSummaryEventTearOff();

/// @nodoc
mixin _$AddPhotosSummaryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAdvertisement newAdvertisement) started,
    required TResult Function(int index) itemSelected,
    required TResult Function() btnProceedTap,
    required TResult Function(int index, List<String> photos) photosSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdvertisement newAdvertisement)? started,
    TResult Function(int index)? itemSelected,
    TResult Function()? btnProceedTap,
    TResult Function(int index, List<String> photos)? photosSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ItemSelected value) itemSelected,
    required TResult Function(BtnProceedTap value) btnProceedTap,
    required TResult Function(PhotosSelected value) photosSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ItemSelected value)? itemSelected,
    TResult Function(BtnProceedTap value)? btnProceedTap,
    TResult Function(PhotosSelected value)? photosSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPhotosSummaryEventCopyWith<$Res> {
  factory $AddPhotosSummaryEventCopyWith(AddPhotosSummaryEvent value,
          $Res Function(AddPhotosSummaryEvent) then) =
      _$AddPhotosSummaryEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AddPhotosSummaryEventCopyWithImpl<$Res>
    implements $AddPhotosSummaryEventCopyWith<$Res> {
  _$AddPhotosSummaryEventCopyWithImpl(this._value, this._then);

  final AddPhotosSummaryEvent _value;
  // ignore: unused_field
  final $Res Function(AddPhotosSummaryEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({NewAdvertisement newAdvertisement});

  $NewAdvertisementCopyWith<$Res> get newAdvertisement;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res>
    extends _$AddPhotosSummaryEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? newAdvertisement = freezed,
  }) {
    return _then(_Started(
      newAdvertisement == freezed
          ? _value.newAdvertisement
          : newAdvertisement // ignore: cast_nullable_to_non_nullable
              as NewAdvertisement,
    ));
  }

  @override
  $NewAdvertisementCopyWith<$Res> get newAdvertisement {
    return $NewAdvertisementCopyWith<$Res>(_value.newAdvertisement, (value) {
      return _then(_value.copyWith(newAdvertisement: value));
    });
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.newAdvertisement);

  @override
  final NewAdvertisement newAdvertisement;

  @override
  String toString() {
    return 'AddPhotosSummaryEvent.started(newAdvertisement: $newAdvertisement)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.newAdvertisement, newAdvertisement) ||
                const DeepCollectionEquality()
                    .equals(other.newAdvertisement, newAdvertisement)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newAdvertisement);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAdvertisement newAdvertisement) started,
    required TResult Function(int index) itemSelected,
    required TResult Function() btnProceedTap,
    required TResult Function(int index, List<String> photos) photosSelected,
  }) {
    return started(newAdvertisement);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdvertisement newAdvertisement)? started,
    TResult Function(int index)? itemSelected,
    TResult Function()? btnProceedTap,
    TResult Function(int index, List<String> photos)? photosSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(newAdvertisement);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ItemSelected value) itemSelected,
    required TResult Function(BtnProceedTap value) btnProceedTap,
    required TResult Function(PhotosSelected value) photosSelected,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ItemSelected value)? itemSelected,
    TResult Function(BtnProceedTap value)? btnProceedTap,
    TResult Function(PhotosSelected value)? photosSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AddPhotosSummaryEvent {
  const factory _Started(NewAdvertisement newAdvertisement) = _$_Started;

  NewAdvertisement get newAdvertisement => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemSelectedCopyWith<$Res> {
  factory $ItemSelectedCopyWith(
          ItemSelected value, $Res Function(ItemSelected) then) =
      _$ItemSelectedCopyWithImpl<$Res>;
  $Res call({int index});
}

/// @nodoc
class _$ItemSelectedCopyWithImpl<$Res>
    extends _$AddPhotosSummaryEventCopyWithImpl<$Res>
    implements $ItemSelectedCopyWith<$Res> {
  _$ItemSelectedCopyWithImpl(
      ItemSelected _value, $Res Function(ItemSelected) _then)
      : super(_value, (v) => _then(v as ItemSelected));

  @override
  ItemSelected get _value => super._value as ItemSelected;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(ItemSelected(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ItemSelected implements ItemSelected {
  const _$ItemSelected(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'AddPhotosSummaryEvent.itemSelected(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ItemSelected &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  $ItemSelectedCopyWith<ItemSelected> get copyWith =>
      _$ItemSelectedCopyWithImpl<ItemSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAdvertisement newAdvertisement) started,
    required TResult Function(int index) itemSelected,
    required TResult Function() btnProceedTap,
    required TResult Function(int index, List<String> photos) photosSelected,
  }) {
    return itemSelected(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdvertisement newAdvertisement)? started,
    TResult Function(int index)? itemSelected,
    TResult Function()? btnProceedTap,
    TResult Function(int index, List<String> photos)? photosSelected,
    required TResult orElse(),
  }) {
    if (itemSelected != null) {
      return itemSelected(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ItemSelected value) itemSelected,
    required TResult Function(BtnProceedTap value) btnProceedTap,
    required TResult Function(PhotosSelected value) photosSelected,
  }) {
    return itemSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ItemSelected value)? itemSelected,
    TResult Function(BtnProceedTap value)? btnProceedTap,
    TResult Function(PhotosSelected value)? photosSelected,
    required TResult orElse(),
  }) {
    if (itemSelected != null) {
      return itemSelected(this);
    }
    return orElse();
  }
}

abstract class ItemSelected implements AddPhotosSummaryEvent {
  const factory ItemSelected(int index) = _$ItemSelected;

  int get index => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemSelectedCopyWith<ItemSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BtnProceedTapCopyWith<$Res> {
  factory $BtnProceedTapCopyWith(
          BtnProceedTap value, $Res Function(BtnProceedTap) then) =
      _$BtnProceedTapCopyWithImpl<$Res>;
}

/// @nodoc
class _$BtnProceedTapCopyWithImpl<$Res>
    extends _$AddPhotosSummaryEventCopyWithImpl<$Res>
    implements $BtnProceedTapCopyWith<$Res> {
  _$BtnProceedTapCopyWithImpl(
      BtnProceedTap _value, $Res Function(BtnProceedTap) _then)
      : super(_value, (v) => _then(v as BtnProceedTap));

  @override
  BtnProceedTap get _value => super._value as BtnProceedTap;
}

/// @nodoc

class _$BtnProceedTap implements BtnProceedTap {
  const _$BtnProceedTap();

  @override
  String toString() {
    return 'AddPhotosSummaryEvent.btnProceedTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BtnProceedTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAdvertisement newAdvertisement) started,
    required TResult Function(int index) itemSelected,
    required TResult Function() btnProceedTap,
    required TResult Function(int index, List<String> photos) photosSelected,
  }) {
    return btnProceedTap();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdvertisement newAdvertisement)? started,
    TResult Function(int index)? itemSelected,
    TResult Function()? btnProceedTap,
    TResult Function(int index, List<String> photos)? photosSelected,
    required TResult orElse(),
  }) {
    if (btnProceedTap != null) {
      return btnProceedTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ItemSelected value) itemSelected,
    required TResult Function(BtnProceedTap value) btnProceedTap,
    required TResult Function(PhotosSelected value) photosSelected,
  }) {
    return btnProceedTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ItemSelected value)? itemSelected,
    TResult Function(BtnProceedTap value)? btnProceedTap,
    TResult Function(PhotosSelected value)? photosSelected,
    required TResult orElse(),
  }) {
    if (btnProceedTap != null) {
      return btnProceedTap(this);
    }
    return orElse();
  }
}

abstract class BtnProceedTap implements AddPhotosSummaryEvent {
  const factory BtnProceedTap() = _$BtnProceedTap;
}

/// @nodoc
abstract class $PhotosSelectedCopyWith<$Res> {
  factory $PhotosSelectedCopyWith(
          PhotosSelected value, $Res Function(PhotosSelected) then) =
      _$PhotosSelectedCopyWithImpl<$Res>;
  $Res call({int index, List<String> photos});
}

/// @nodoc
class _$PhotosSelectedCopyWithImpl<$Res>
    extends _$AddPhotosSummaryEventCopyWithImpl<$Res>
    implements $PhotosSelectedCopyWith<$Res> {
  _$PhotosSelectedCopyWithImpl(
      PhotosSelected _value, $Res Function(PhotosSelected) _then)
      : super(_value, (v) => _then(v as PhotosSelected));

  @override
  PhotosSelected get _value => super._value as PhotosSelected;

  @override
  $Res call({
    Object? index = freezed,
    Object? photos = freezed,
  }) {
    return _then(PhotosSelected(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      photos == freezed
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$PhotosSelected implements PhotosSelected {
  const _$PhotosSelected(this.index, this.photos);

  @override
  final int index;
  @override
  final List<String> photos;

  @override
  String toString() {
    return 'AddPhotosSummaryEvent.photosSelected(index: $index, photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PhotosSelected &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.photos, photos) ||
                const DeepCollectionEquality().equals(other.photos, photos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(photos);

  @JsonKey(ignore: true)
  @override
  $PhotosSelectedCopyWith<PhotosSelected> get copyWith =>
      _$PhotosSelectedCopyWithImpl<PhotosSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NewAdvertisement newAdvertisement) started,
    required TResult Function(int index) itemSelected,
    required TResult Function() btnProceedTap,
    required TResult Function(int index, List<String> photos) photosSelected,
  }) {
    return photosSelected(index, photos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NewAdvertisement newAdvertisement)? started,
    TResult Function(int index)? itemSelected,
    TResult Function()? btnProceedTap,
    TResult Function(int index, List<String> photos)? photosSelected,
    required TResult orElse(),
  }) {
    if (photosSelected != null) {
      return photosSelected(index, photos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ItemSelected value) itemSelected,
    required TResult Function(BtnProceedTap value) btnProceedTap,
    required TResult Function(PhotosSelected value) photosSelected,
  }) {
    return photosSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ItemSelected value)? itemSelected,
    TResult Function(BtnProceedTap value)? btnProceedTap,
    TResult Function(PhotosSelected value)? photosSelected,
    required TResult orElse(),
  }) {
    if (photosSelected != null) {
      return photosSelected(this);
    }
    return orElse();
  }
}

abstract class PhotosSelected implements AddPhotosSummaryEvent {
  const factory PhotosSelected(int index, List<String> photos) =
      _$PhotosSelected;

  int get index => throw _privateConstructorUsedError;
  List<String> get photos => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PhotosSelectedCopyWith<PhotosSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AddPhotosSummaryStateTearOff {
  const _$AddPhotosSummaryStateTearOff();

  _AddPhotosSummaryState call(
      {required NewAdvertisement newAdvertisement,
      required bool showBtnProceed,
      required bool openPhotoSelection,
      required int openPhotoIndex,
      required bool proceed}) {
    return _AddPhotosSummaryState(
      newAdvertisement: newAdvertisement,
      showBtnProceed: showBtnProceed,
      openPhotoSelection: openPhotoSelection,
      openPhotoIndex: openPhotoIndex,
      proceed: proceed,
    );
  }
}

/// @nodoc
const $AddPhotosSummaryState = _$AddPhotosSummaryStateTearOff();

/// @nodoc
mixin _$AddPhotosSummaryState {
  NewAdvertisement get newAdvertisement => throw _privateConstructorUsedError;
  bool get showBtnProceed => throw _privateConstructorUsedError;
  bool get openPhotoSelection => throw _privateConstructorUsedError;
  int get openPhotoIndex => throw _privateConstructorUsedError;
  bool get proceed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddPhotosSummaryStateCopyWith<AddPhotosSummaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPhotosSummaryStateCopyWith<$Res> {
  factory $AddPhotosSummaryStateCopyWith(AddPhotosSummaryState value,
          $Res Function(AddPhotosSummaryState) then) =
      _$AddPhotosSummaryStateCopyWithImpl<$Res>;
  $Res call(
      {NewAdvertisement newAdvertisement,
      bool showBtnProceed,
      bool openPhotoSelection,
      int openPhotoIndex,
      bool proceed});

  $NewAdvertisementCopyWith<$Res> get newAdvertisement;
}

/// @nodoc
class _$AddPhotosSummaryStateCopyWithImpl<$Res>
    implements $AddPhotosSummaryStateCopyWith<$Res> {
  _$AddPhotosSummaryStateCopyWithImpl(this._value, this._then);

  final AddPhotosSummaryState _value;
  // ignore: unused_field
  final $Res Function(AddPhotosSummaryState) _then;

  @override
  $Res call({
    Object? newAdvertisement = freezed,
    Object? showBtnProceed = freezed,
    Object? openPhotoSelection = freezed,
    Object? openPhotoIndex = freezed,
    Object? proceed = freezed,
  }) {
    return _then(_value.copyWith(
      newAdvertisement: newAdvertisement == freezed
          ? _value.newAdvertisement
          : newAdvertisement // ignore: cast_nullable_to_non_nullable
              as NewAdvertisement,
      showBtnProceed: showBtnProceed == freezed
          ? _value.showBtnProceed
          : showBtnProceed // ignore: cast_nullable_to_non_nullable
              as bool,
      openPhotoSelection: openPhotoSelection == freezed
          ? _value.openPhotoSelection
          : openPhotoSelection // ignore: cast_nullable_to_non_nullable
              as bool,
      openPhotoIndex: openPhotoIndex == freezed
          ? _value.openPhotoIndex
          : openPhotoIndex // ignore: cast_nullable_to_non_nullable
              as int,
      proceed: proceed == freezed
          ? _value.proceed
          : proceed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $NewAdvertisementCopyWith<$Res> get newAdvertisement {
    return $NewAdvertisementCopyWith<$Res>(_value.newAdvertisement, (value) {
      return _then(_value.copyWith(newAdvertisement: value));
    });
  }
}

/// @nodoc
abstract class _$AddPhotosSummaryStateCopyWith<$Res>
    implements $AddPhotosSummaryStateCopyWith<$Res> {
  factory _$AddPhotosSummaryStateCopyWith(_AddPhotosSummaryState value,
          $Res Function(_AddPhotosSummaryState) then) =
      __$AddPhotosSummaryStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {NewAdvertisement newAdvertisement,
      bool showBtnProceed,
      bool openPhotoSelection,
      int openPhotoIndex,
      bool proceed});

  @override
  $NewAdvertisementCopyWith<$Res> get newAdvertisement;
}

/// @nodoc
class __$AddPhotosSummaryStateCopyWithImpl<$Res>
    extends _$AddPhotosSummaryStateCopyWithImpl<$Res>
    implements _$AddPhotosSummaryStateCopyWith<$Res> {
  __$AddPhotosSummaryStateCopyWithImpl(_AddPhotosSummaryState _value,
      $Res Function(_AddPhotosSummaryState) _then)
      : super(_value, (v) => _then(v as _AddPhotosSummaryState));

  @override
  _AddPhotosSummaryState get _value => super._value as _AddPhotosSummaryState;

  @override
  $Res call({
    Object? newAdvertisement = freezed,
    Object? showBtnProceed = freezed,
    Object? openPhotoSelection = freezed,
    Object? openPhotoIndex = freezed,
    Object? proceed = freezed,
  }) {
    return _then(_AddPhotosSummaryState(
      newAdvertisement: newAdvertisement == freezed
          ? _value.newAdvertisement
          : newAdvertisement // ignore: cast_nullable_to_non_nullable
              as NewAdvertisement,
      showBtnProceed: showBtnProceed == freezed
          ? _value.showBtnProceed
          : showBtnProceed // ignore: cast_nullable_to_non_nullable
              as bool,
      openPhotoSelection: openPhotoSelection == freezed
          ? _value.openPhotoSelection
          : openPhotoSelection // ignore: cast_nullable_to_non_nullable
              as bool,
      openPhotoIndex: openPhotoIndex == freezed
          ? _value.openPhotoIndex
          : openPhotoIndex // ignore: cast_nullable_to_non_nullable
              as int,
      proceed: proceed == freezed
          ? _value.proceed
          : proceed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_AddPhotosSummaryState implements _AddPhotosSummaryState {
  const _$_AddPhotosSummaryState(
      {required this.newAdvertisement,
      required this.showBtnProceed,
      required this.openPhotoSelection,
      required this.openPhotoIndex,
      required this.proceed});

  @override
  final NewAdvertisement newAdvertisement;
  @override
  final bool showBtnProceed;
  @override
  final bool openPhotoSelection;
  @override
  final int openPhotoIndex;
  @override
  final bool proceed;

  @override
  String toString() {
    return 'AddPhotosSummaryState(newAdvertisement: $newAdvertisement, showBtnProceed: $showBtnProceed, openPhotoSelection: $openPhotoSelection, openPhotoIndex: $openPhotoIndex, proceed: $proceed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddPhotosSummaryState &&
            (identical(other.newAdvertisement, newAdvertisement) ||
                const DeepCollectionEquality()
                    .equals(other.newAdvertisement, newAdvertisement)) &&
            (identical(other.showBtnProceed, showBtnProceed) ||
                const DeepCollectionEquality()
                    .equals(other.showBtnProceed, showBtnProceed)) &&
            (identical(other.openPhotoSelection, openPhotoSelection) ||
                const DeepCollectionEquality()
                    .equals(other.openPhotoSelection, openPhotoSelection)) &&
            (identical(other.openPhotoIndex, openPhotoIndex) ||
                const DeepCollectionEquality()
                    .equals(other.openPhotoIndex, openPhotoIndex)) &&
            (identical(other.proceed, proceed) ||
                const DeepCollectionEquality().equals(other.proceed, proceed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newAdvertisement) ^
      const DeepCollectionEquality().hash(showBtnProceed) ^
      const DeepCollectionEquality().hash(openPhotoSelection) ^
      const DeepCollectionEquality().hash(openPhotoIndex) ^
      const DeepCollectionEquality().hash(proceed);

  @JsonKey(ignore: true)
  @override
  _$AddPhotosSummaryStateCopyWith<_AddPhotosSummaryState> get copyWith =>
      __$AddPhotosSummaryStateCopyWithImpl<_AddPhotosSummaryState>(
          this, _$identity);
}

abstract class _AddPhotosSummaryState implements AddPhotosSummaryState {
  const factory _AddPhotosSummaryState(
      {required NewAdvertisement newAdvertisement,
      required bool showBtnProceed,
      required bool openPhotoSelection,
      required int openPhotoIndex,
      required bool proceed}) = _$_AddPhotosSummaryState;

  @override
  NewAdvertisement get newAdvertisement => throw _privateConstructorUsedError;
  @override
  bool get showBtnProceed => throw _privateConstructorUsedError;
  @override
  bool get openPhotoSelection => throw _privateConstructorUsedError;
  @override
  int get openPhotoIndex => throw _privateConstructorUsedError;
  @override
  bool get proceed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddPhotosSummaryStateCopyWith<_AddPhotosSummaryState> get copyWith =>
      throw _privateConstructorUsedError;
}
