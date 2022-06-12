// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatEventTearOff {
  const _$ChatEventTearOff();

  _Started started(Chat chat, User otherUser) {
    return _Started(
      chat,
      otherUser,
    );
  }

  OnBtnSendPressed onBtnSendPressed(String message) {
    return OnBtnSendPressed(
      message,
    );
  }

  OnBtnSendImageTap onBtnSendImageTap() {
    return const OnBtnSendImageTap();
  }

  OnBtnSendFileTap onBtnSendFileTap() {
    return const OnBtnSendFileTap();
  }

  OnBtnSendLocationTap onBtnSendLocationTap() {
    return const OnBtnSendLocationTap();
  }

  OnFilePickerOpened onFilePickerOpened() {
    return const OnFilePickerOpened();
  }

  OnImagePickerOpened onImagePickerOpened() {
    return const OnImagePickerOpened();
  }

  OnLocationPickerOpened onLocationPickerOpened() {
    return const OnLocationPickerOpened();
  }

  OnPhotoSelected onPhotoSelected(String path) {
    return OnPhotoSelected(
      path,
    );
  }

  OnFileSelected onFileSelected(String path) {
    return OnFileSelected(
      path,
    );
  }
}

/// @nodoc
const $ChatEvent = _$ChatEventTearOff();

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onFileSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onFileSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnFileSelected value) onFileSelected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnFileSelected value)? onFileSelected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res> implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  final ChatEvent _value;
  // ignore: unused_field
  final $Res Function(ChatEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
  $Res call({Chat chat, User otherUser});

  $ChatCopyWith<$Res> get chat;
  $UserCopyWith<$Res> get otherUser;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;

  @override
  $Res call({
    Object? chat = freezed,
    Object? otherUser = freezed,
  }) {
    return _then(_Started(
      chat == freezed
          ? _value.chat
          : chat // ignore: cast_nullable_to_non_nullable
              as Chat,
      otherUser == freezed
          ? _value.otherUser
          : otherUser // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  @override
  $ChatCopyWith<$Res> get chat {
    return $ChatCopyWith<$Res>(_value.chat, (value) {
      return _then(_value.copyWith(chat: value));
    });
  }

  @override
  $UserCopyWith<$Res> get otherUser {
    return $UserCopyWith<$Res>(_value.otherUser, (value) {
      return _then(_value.copyWith(otherUser: value));
    });
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.chat, this.otherUser);

  @override
  final Chat chat;
  @override
  final User otherUser;

  @override
  String toString() {
    return 'ChatEvent.started(chat: $chat, otherUser: $otherUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Started &&
            (identical(other.chat, chat) ||
                const DeepCollectionEquality().equals(other.chat, chat)) &&
            (identical(other.otherUser, otherUser) ||
                const DeepCollectionEquality()
                    .equals(other.otherUser, otherUser)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(chat) ^
      const DeepCollectionEquality().hash(otherUser);

  @JsonKey(ignore: true)
  @override
  _$StartedCopyWith<_Started> get copyWith =>
      __$StartedCopyWithImpl<_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onFileSelected,
  }) {
    return started(chat, otherUser);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onFileSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(chat, otherUser);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnFileSelected value) onFileSelected,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnFileSelected value)? onFileSelected,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ChatEvent {
  const factory _Started(Chat chat, User otherUser) = _$_Started;

  Chat get chat => throw _privateConstructorUsedError;
  User get otherUser => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$StartedCopyWith<_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBtnSendPressedCopyWith<$Res> {
  factory $OnBtnSendPressedCopyWith(
          OnBtnSendPressed value, $Res Function(OnBtnSendPressed) then) =
      _$OnBtnSendPressedCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$OnBtnSendPressedCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $OnBtnSendPressedCopyWith<$Res> {
  _$OnBtnSendPressedCopyWithImpl(
      OnBtnSendPressed _value, $Res Function(OnBtnSendPressed) _then)
      : super(_value, (v) => _then(v as OnBtnSendPressed));

  @override
  OnBtnSendPressed get _value => super._value as OnBtnSendPressed;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(OnBtnSendPressed(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnBtnSendPressed implements OnBtnSendPressed {
  const _$OnBtnSendPressed(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ChatEvent.onBtnSendPressed(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnBtnSendPressed &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $OnBtnSendPressedCopyWith<OnBtnSendPressed> get copyWith =>
      _$OnBtnSendPressedCopyWithImpl<OnBtnSendPressed>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onFileSelected,
  }) {
    return onBtnSendPressed(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onFileSelected,
    required TResult orElse(),
  }) {
    if (onBtnSendPressed != null) {
      return onBtnSendPressed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnFileSelected value) onFileSelected,
  }) {
    return onBtnSendPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnFileSelected value)? onFileSelected,
    required TResult orElse(),
  }) {
    if (onBtnSendPressed != null) {
      return onBtnSendPressed(this);
    }
    return orElse();
  }
}

abstract class OnBtnSendPressed implements ChatEvent {
  const factory OnBtnSendPressed(String message) = _$OnBtnSendPressed;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnBtnSendPressedCopyWith<OnBtnSendPressed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBtnSendImageTapCopyWith<$Res> {
  factory $OnBtnSendImageTapCopyWith(
          OnBtnSendImageTap value, $Res Function(OnBtnSendImageTap) then) =
      _$OnBtnSendImageTapCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnBtnSendImageTapCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $OnBtnSendImageTapCopyWith<$Res> {
  _$OnBtnSendImageTapCopyWithImpl(
      OnBtnSendImageTap _value, $Res Function(OnBtnSendImageTap) _then)
      : super(_value, (v) => _then(v as OnBtnSendImageTap));

  @override
  OnBtnSendImageTap get _value => super._value as OnBtnSendImageTap;
}

/// @nodoc

class _$OnBtnSendImageTap implements OnBtnSendImageTap {
  const _$OnBtnSendImageTap();

  @override
  String toString() {
    return 'ChatEvent.onBtnSendImageTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnBtnSendImageTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onFileSelected,
  }) {
    return onBtnSendImageTap();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onFileSelected,
    required TResult orElse(),
  }) {
    if (onBtnSendImageTap != null) {
      return onBtnSendImageTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnFileSelected value) onFileSelected,
  }) {
    return onBtnSendImageTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnFileSelected value)? onFileSelected,
    required TResult orElse(),
  }) {
    if (onBtnSendImageTap != null) {
      return onBtnSendImageTap(this);
    }
    return orElse();
  }
}

abstract class OnBtnSendImageTap implements ChatEvent {
  const factory OnBtnSendImageTap() = _$OnBtnSendImageTap;
}

/// @nodoc
abstract class $OnBtnSendFileTapCopyWith<$Res> {
  factory $OnBtnSendFileTapCopyWith(
          OnBtnSendFileTap value, $Res Function(OnBtnSendFileTap) then) =
      _$OnBtnSendFileTapCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnBtnSendFileTapCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $OnBtnSendFileTapCopyWith<$Res> {
  _$OnBtnSendFileTapCopyWithImpl(
      OnBtnSendFileTap _value, $Res Function(OnBtnSendFileTap) _then)
      : super(_value, (v) => _then(v as OnBtnSendFileTap));

  @override
  OnBtnSendFileTap get _value => super._value as OnBtnSendFileTap;
}

/// @nodoc

class _$OnBtnSendFileTap implements OnBtnSendFileTap {
  const _$OnBtnSendFileTap();

  @override
  String toString() {
    return 'ChatEvent.onBtnSendFileTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnBtnSendFileTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onFileSelected,
  }) {
    return onBtnSendFileTap();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onFileSelected,
    required TResult orElse(),
  }) {
    if (onBtnSendFileTap != null) {
      return onBtnSendFileTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnFileSelected value) onFileSelected,
  }) {
    return onBtnSendFileTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnFileSelected value)? onFileSelected,
    required TResult orElse(),
  }) {
    if (onBtnSendFileTap != null) {
      return onBtnSendFileTap(this);
    }
    return orElse();
  }
}

abstract class OnBtnSendFileTap implements ChatEvent {
  const factory OnBtnSendFileTap() = _$OnBtnSendFileTap;
}

/// @nodoc
abstract class $OnBtnSendLocationTapCopyWith<$Res> {
  factory $OnBtnSendLocationTapCopyWith(OnBtnSendLocationTap value,
          $Res Function(OnBtnSendLocationTap) then) =
      _$OnBtnSendLocationTapCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnBtnSendLocationTapCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $OnBtnSendLocationTapCopyWith<$Res> {
  _$OnBtnSendLocationTapCopyWithImpl(
      OnBtnSendLocationTap _value, $Res Function(OnBtnSendLocationTap) _then)
      : super(_value, (v) => _then(v as OnBtnSendLocationTap));

  @override
  OnBtnSendLocationTap get _value => super._value as OnBtnSendLocationTap;
}

/// @nodoc

class _$OnBtnSendLocationTap implements OnBtnSendLocationTap {
  const _$OnBtnSendLocationTap();

  @override
  String toString() {
    return 'ChatEvent.onBtnSendLocationTap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnBtnSendLocationTap);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onFileSelected,
  }) {
    return onBtnSendLocationTap();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onFileSelected,
    required TResult orElse(),
  }) {
    if (onBtnSendLocationTap != null) {
      return onBtnSendLocationTap();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnFileSelected value) onFileSelected,
  }) {
    return onBtnSendLocationTap(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnFileSelected value)? onFileSelected,
    required TResult orElse(),
  }) {
    if (onBtnSendLocationTap != null) {
      return onBtnSendLocationTap(this);
    }
    return orElse();
  }
}

abstract class OnBtnSendLocationTap implements ChatEvent {
  const factory OnBtnSendLocationTap() = _$OnBtnSendLocationTap;
}

/// @nodoc
abstract class $OnFilePickerOpenedCopyWith<$Res> {
  factory $OnFilePickerOpenedCopyWith(
          OnFilePickerOpened value, $Res Function(OnFilePickerOpened) then) =
      _$OnFilePickerOpenedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnFilePickerOpenedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $OnFilePickerOpenedCopyWith<$Res> {
  _$OnFilePickerOpenedCopyWithImpl(
      OnFilePickerOpened _value, $Res Function(OnFilePickerOpened) _then)
      : super(_value, (v) => _then(v as OnFilePickerOpened));

  @override
  OnFilePickerOpened get _value => super._value as OnFilePickerOpened;
}

/// @nodoc

class _$OnFilePickerOpened implements OnFilePickerOpened {
  const _$OnFilePickerOpened();

  @override
  String toString() {
    return 'ChatEvent.onFilePickerOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnFilePickerOpened);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onFileSelected,
  }) {
    return onFilePickerOpened();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onFileSelected,
    required TResult orElse(),
  }) {
    if (onFilePickerOpened != null) {
      return onFilePickerOpened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnFileSelected value) onFileSelected,
  }) {
    return onFilePickerOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnFileSelected value)? onFileSelected,
    required TResult orElse(),
  }) {
    if (onFilePickerOpened != null) {
      return onFilePickerOpened(this);
    }
    return orElse();
  }
}

abstract class OnFilePickerOpened implements ChatEvent {
  const factory OnFilePickerOpened() = _$OnFilePickerOpened;
}

/// @nodoc
abstract class $OnImagePickerOpenedCopyWith<$Res> {
  factory $OnImagePickerOpenedCopyWith(
          OnImagePickerOpened value, $Res Function(OnImagePickerOpened) then) =
      _$OnImagePickerOpenedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnImagePickerOpenedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $OnImagePickerOpenedCopyWith<$Res> {
  _$OnImagePickerOpenedCopyWithImpl(
      OnImagePickerOpened _value, $Res Function(OnImagePickerOpened) _then)
      : super(_value, (v) => _then(v as OnImagePickerOpened));

  @override
  OnImagePickerOpened get _value => super._value as OnImagePickerOpened;
}

/// @nodoc

class _$OnImagePickerOpened implements OnImagePickerOpened {
  const _$OnImagePickerOpened();

  @override
  String toString() {
    return 'ChatEvent.onImagePickerOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnImagePickerOpened);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onFileSelected,
  }) {
    return onImagePickerOpened();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onFileSelected,
    required TResult orElse(),
  }) {
    if (onImagePickerOpened != null) {
      return onImagePickerOpened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnFileSelected value) onFileSelected,
  }) {
    return onImagePickerOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnFileSelected value)? onFileSelected,
    required TResult orElse(),
  }) {
    if (onImagePickerOpened != null) {
      return onImagePickerOpened(this);
    }
    return orElse();
  }
}

abstract class OnImagePickerOpened implements ChatEvent {
  const factory OnImagePickerOpened() = _$OnImagePickerOpened;
}

/// @nodoc
abstract class $OnLocationPickerOpenedCopyWith<$Res> {
  factory $OnLocationPickerOpenedCopyWith(OnLocationPickerOpened value,
          $Res Function(OnLocationPickerOpened) then) =
      _$OnLocationPickerOpenedCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnLocationPickerOpenedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $OnLocationPickerOpenedCopyWith<$Res> {
  _$OnLocationPickerOpenedCopyWithImpl(OnLocationPickerOpened _value,
      $Res Function(OnLocationPickerOpened) _then)
      : super(_value, (v) => _then(v as OnLocationPickerOpened));

  @override
  OnLocationPickerOpened get _value => super._value as OnLocationPickerOpened;
}

/// @nodoc

class _$OnLocationPickerOpened implements OnLocationPickerOpened {
  const _$OnLocationPickerOpened();

  @override
  String toString() {
    return 'ChatEvent.onLocationPickerOpened()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is OnLocationPickerOpened);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onFileSelected,
  }) {
    return onLocationPickerOpened();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onFileSelected,
    required TResult orElse(),
  }) {
    if (onLocationPickerOpened != null) {
      return onLocationPickerOpened();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnFileSelected value) onFileSelected,
  }) {
    return onLocationPickerOpened(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnFileSelected value)? onFileSelected,
    required TResult orElse(),
  }) {
    if (onLocationPickerOpened != null) {
      return onLocationPickerOpened(this);
    }
    return orElse();
  }
}

abstract class OnLocationPickerOpened implements ChatEvent {
  const factory OnLocationPickerOpened() = _$OnLocationPickerOpened;
}

/// @nodoc
abstract class $OnPhotoSelectedCopyWith<$Res> {
  factory $OnPhotoSelectedCopyWith(
          OnPhotoSelected value, $Res Function(OnPhotoSelected) then) =
      _$OnPhotoSelectedCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class _$OnPhotoSelectedCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $OnPhotoSelectedCopyWith<$Res> {
  _$OnPhotoSelectedCopyWithImpl(
      OnPhotoSelected _value, $Res Function(OnPhotoSelected) _then)
      : super(_value, (v) => _then(v as OnPhotoSelected));

  @override
  OnPhotoSelected get _value => super._value as OnPhotoSelected;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(OnPhotoSelected(
      path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnPhotoSelected implements OnPhotoSelected {
  const _$OnPhotoSelected(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'ChatEvent.onPhotoSelected(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnPhotoSelected &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(path);

  @JsonKey(ignore: true)
  @override
  $OnPhotoSelectedCopyWith<OnPhotoSelected> get copyWith =>
      _$OnPhotoSelectedCopyWithImpl<OnPhotoSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onFileSelected,
  }) {
    return onPhotoSelected(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onFileSelected,
    required TResult orElse(),
  }) {
    if (onPhotoSelected != null) {
      return onPhotoSelected(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnFileSelected value) onFileSelected,
  }) {
    return onPhotoSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnFileSelected value)? onFileSelected,
    required TResult orElse(),
  }) {
    if (onPhotoSelected != null) {
      return onPhotoSelected(this);
    }
    return orElse();
  }
}

abstract class OnPhotoSelected implements ChatEvent {
  const factory OnPhotoSelected(String path) = _$OnPhotoSelected;

  String get path => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnPhotoSelectedCopyWith<OnPhotoSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnFileSelectedCopyWith<$Res> {
  factory $OnFileSelectedCopyWith(
          OnFileSelected value, $Res Function(OnFileSelected) then) =
      _$OnFileSelectedCopyWithImpl<$Res>;
  $Res call({String path});
}

/// @nodoc
class _$OnFileSelectedCopyWithImpl<$Res> extends _$ChatEventCopyWithImpl<$Res>
    implements $OnFileSelectedCopyWith<$Res> {
  _$OnFileSelectedCopyWithImpl(
      OnFileSelected _value, $Res Function(OnFileSelected) _then)
      : super(_value, (v) => _then(v as OnFileSelected));

  @override
  OnFileSelected get _value => super._value as OnFileSelected;

  @override
  $Res call({
    Object? path = freezed,
  }) {
    return _then(OnFileSelected(
      path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OnFileSelected implements OnFileSelected {
  const _$OnFileSelected(this.path);

  @override
  final String path;

  @override
  String toString() {
    return 'ChatEvent.onFileSelected(path: $path)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is OnFileSelected &&
            (identical(other.path, path) ||
                const DeepCollectionEquality().equals(other.path, path)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(path);

  @JsonKey(ignore: true)
  @override
  $OnFileSelectedCopyWith<OnFileSelected> get copyWith =>
      _$OnFileSelectedCopyWithImpl<OnFileSelected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Chat chat, User otherUser) started,
    required TResult Function(String message) onBtnSendPressed,
    required TResult Function() onBtnSendImageTap,
    required TResult Function() onBtnSendFileTap,
    required TResult Function() onBtnSendLocationTap,
    required TResult Function() onFilePickerOpened,
    required TResult Function() onImagePickerOpened,
    required TResult Function() onLocationPickerOpened,
    required TResult Function(String path) onPhotoSelected,
    required TResult Function(String path) onFileSelected,
  }) {
    return onFileSelected(path);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Chat chat, User otherUser)? started,
    TResult Function(String message)? onBtnSendPressed,
    TResult Function()? onBtnSendImageTap,
    TResult Function()? onBtnSendFileTap,
    TResult Function()? onBtnSendLocationTap,
    TResult Function()? onFilePickerOpened,
    TResult Function()? onImagePickerOpened,
    TResult Function()? onLocationPickerOpened,
    TResult Function(String path)? onPhotoSelected,
    TResult Function(String path)? onFileSelected,
    required TResult orElse(),
  }) {
    if (onFileSelected != null) {
      return onFileSelected(path);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(OnBtnSendPressed value) onBtnSendPressed,
    required TResult Function(OnBtnSendImageTap value) onBtnSendImageTap,
    required TResult Function(OnBtnSendFileTap value) onBtnSendFileTap,
    required TResult Function(OnBtnSendLocationTap value) onBtnSendLocationTap,
    required TResult Function(OnFilePickerOpened value) onFilePickerOpened,
    required TResult Function(OnImagePickerOpened value) onImagePickerOpened,
    required TResult Function(OnLocationPickerOpened value)
        onLocationPickerOpened,
    required TResult Function(OnPhotoSelected value) onPhotoSelected,
    required TResult Function(OnFileSelected value) onFileSelected,
  }) {
    return onFileSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(OnBtnSendPressed value)? onBtnSendPressed,
    TResult Function(OnBtnSendImageTap value)? onBtnSendImageTap,
    TResult Function(OnBtnSendFileTap value)? onBtnSendFileTap,
    TResult Function(OnBtnSendLocationTap value)? onBtnSendLocationTap,
    TResult Function(OnFilePickerOpened value)? onFilePickerOpened,
    TResult Function(OnImagePickerOpened value)? onImagePickerOpened,
    TResult Function(OnLocationPickerOpened value)? onLocationPickerOpened,
    TResult Function(OnPhotoSelected value)? onPhotoSelected,
    TResult Function(OnFileSelected value)? onFileSelected,
    required TResult orElse(),
  }) {
    if (onFileSelected != null) {
      return onFileSelected(this);
    }
    return orElse();
  }
}

abstract class OnFileSelected implements ChatEvent {
  const factory OnFileSelected(String path) = _$OnFileSelected;

  String get path => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnFileSelectedCopyWith<OnFileSelected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatStateTearOff {
  const _$ChatStateTearOff();

  _ChatState call(
      {required List<ChatMessage> messages,
      required Chat? currentChat,
      required User? currentUser,
      required User? otherUser,
      required bool openImagePicker,
      required bool openFilePicker,
      required bool openLocationPicker,
      required String? imageSelected,
      required String? fileSelected,
      required String? locationSelected}) {
    return _ChatState(
      messages: messages,
      currentChat: currentChat,
      currentUser: currentUser,
      otherUser: otherUser,
      openImagePicker: openImagePicker,
      openFilePicker: openFilePicker,
      openLocationPicker: openLocationPicker,
      imageSelected: imageSelected,
      fileSelected: fileSelected,
      locationSelected: locationSelected,
    );
  }
}

/// @nodoc
const $ChatState = _$ChatStateTearOff();

/// @nodoc
mixin _$ChatState {
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  Chat? get currentChat => throw _privateConstructorUsedError;
  User? get currentUser => throw _privateConstructorUsedError;
  User? get otherUser => throw _privateConstructorUsedError;
  bool get openImagePicker => throw _privateConstructorUsedError;
  bool get openFilePicker => throw _privateConstructorUsedError;
  bool get openLocationPicker => throw _privateConstructorUsedError;
  String? get imageSelected => throw _privateConstructorUsedError;
  String? get fileSelected => throw _privateConstructorUsedError;
  String? get locationSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
  $Res call(
      {List<ChatMessage> messages,
      Chat? currentChat,
      User? currentUser,
      User? otherUser,
      bool openImagePicker,
      bool openFilePicker,
      bool openLocationPicker,
      String? imageSelected,
      String? fileSelected,
      String? locationSelected});

  $ChatCopyWith<$Res>? get currentChat;
  $UserCopyWith<$Res>? get currentUser;
  $UserCopyWith<$Res>? get otherUser;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;

  @override
  $Res call({
    Object? messages = freezed,
    Object? currentChat = freezed,
    Object? currentUser = freezed,
    Object? otherUser = freezed,
    Object? openImagePicker = freezed,
    Object? openFilePicker = freezed,
    Object? openLocationPicker = freezed,
    Object? imageSelected = freezed,
    Object? fileSelected = freezed,
    Object? locationSelected = freezed,
  }) {
    return _then(_value.copyWith(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      currentChat: currentChat == freezed
          ? _value.currentChat
          : currentChat // ignore: cast_nullable_to_non_nullable
              as Chat?,
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User?,
      otherUser: otherUser == freezed
          ? _value.otherUser
          : otherUser // ignore: cast_nullable_to_non_nullable
              as User?,
      openImagePicker: openImagePicker == freezed
          ? _value.openImagePicker
          : openImagePicker // ignore: cast_nullable_to_non_nullable
              as bool,
      openFilePicker: openFilePicker == freezed
          ? _value.openFilePicker
          : openFilePicker // ignore: cast_nullable_to_non_nullable
              as bool,
      openLocationPicker: openLocationPicker == freezed
          ? _value.openLocationPicker
          : openLocationPicker // ignore: cast_nullable_to_non_nullable
              as bool,
      imageSelected: imageSelected == freezed
          ? _value.imageSelected
          : imageSelected // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSelected: fileSelected == freezed
          ? _value.fileSelected
          : fileSelected // ignore: cast_nullable_to_non_nullable
              as String?,
      locationSelected: locationSelected == freezed
          ? _value.locationSelected
          : locationSelected // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ChatCopyWith<$Res>? get currentChat {
    if (_value.currentChat == null) {
      return null;
    }

    return $ChatCopyWith<$Res>(_value.currentChat!, (value) {
      return _then(_value.copyWith(currentChat: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get currentUser {
    if (_value.currentUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.currentUser!, (value) {
      return _then(_value.copyWith(currentUser: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get otherUser {
    if (_value.otherUser == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.otherUser!, (value) {
      return _then(_value.copyWith(otherUser: value));
    });
  }
}

/// @nodoc
abstract class _$ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$ChatStateCopyWith(
          _ChatState value, $Res Function(_ChatState) then) =
      __$ChatStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ChatMessage> messages,
      Chat? currentChat,
      User? currentUser,
      User? otherUser,
      bool openImagePicker,
      bool openFilePicker,
      bool openLocationPicker,
      String? imageSelected,
      String? fileSelected,
      String? locationSelected});

  @override
  $ChatCopyWith<$Res>? get currentChat;
  @override
  $UserCopyWith<$Res>? get currentUser;
  @override
  $UserCopyWith<$Res>? get otherUser;
}

/// @nodoc
class __$ChatStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements _$ChatStateCopyWith<$Res> {
  __$ChatStateCopyWithImpl(_ChatState _value, $Res Function(_ChatState) _then)
      : super(_value, (v) => _then(v as _ChatState));

  @override
  _ChatState get _value => super._value as _ChatState;

  @override
  $Res call({
    Object? messages = freezed,
    Object? currentChat = freezed,
    Object? currentUser = freezed,
    Object? otherUser = freezed,
    Object? openImagePicker = freezed,
    Object? openFilePicker = freezed,
    Object? openLocationPicker = freezed,
    Object? imageSelected = freezed,
    Object? fileSelected = freezed,
    Object? locationSelected = freezed,
  }) {
    return _then(_ChatState(
      messages: messages == freezed
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      currentChat: currentChat == freezed
          ? _value.currentChat
          : currentChat // ignore: cast_nullable_to_non_nullable
              as Chat?,
      currentUser: currentUser == freezed
          ? _value.currentUser
          : currentUser // ignore: cast_nullable_to_non_nullable
              as User?,
      otherUser: otherUser == freezed
          ? _value.otherUser
          : otherUser // ignore: cast_nullable_to_non_nullable
              as User?,
      openImagePicker: openImagePicker == freezed
          ? _value.openImagePicker
          : openImagePicker // ignore: cast_nullable_to_non_nullable
              as bool,
      openFilePicker: openFilePicker == freezed
          ? _value.openFilePicker
          : openFilePicker // ignore: cast_nullable_to_non_nullable
              as bool,
      openLocationPicker: openLocationPicker == freezed
          ? _value.openLocationPicker
          : openLocationPicker // ignore: cast_nullable_to_non_nullable
              as bool,
      imageSelected: imageSelected == freezed
          ? _value.imageSelected
          : imageSelected // ignore: cast_nullable_to_non_nullable
              as String?,
      fileSelected: fileSelected == freezed
          ? _value.fileSelected
          : fileSelected // ignore: cast_nullable_to_non_nullable
              as String?,
      locationSelected: locationSelected == freezed
          ? _value.locationSelected
          : locationSelected // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ChatState implements _ChatState {
  const _$_ChatState(
      {required this.messages,
      required this.currentChat,
      required this.currentUser,
      required this.otherUser,
      required this.openImagePicker,
      required this.openFilePicker,
      required this.openLocationPicker,
      required this.imageSelected,
      required this.fileSelected,
      required this.locationSelected});

  @override
  final List<ChatMessage> messages;
  @override
  final Chat? currentChat;
  @override
  final User? currentUser;
  @override
  final User? otherUser;
  @override
  final bool openImagePicker;
  @override
  final bool openFilePicker;
  @override
  final bool openLocationPicker;
  @override
  final String? imageSelected;
  @override
  final String? fileSelected;
  @override
  final String? locationSelected;

  @override
  String toString() {
    return 'ChatState(messages: $messages, currentChat: $currentChat, currentUser: $currentUser, otherUser: $otherUser, openImagePicker: $openImagePicker, openFilePicker: $openFilePicker, openLocationPicker: $openLocationPicker, imageSelected: $imageSelected, fileSelected: $fileSelected, locationSelected: $locationSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChatState &&
            (identical(other.messages, messages) ||
                const DeepCollectionEquality()
                    .equals(other.messages, messages)) &&
            (identical(other.currentChat, currentChat) ||
                const DeepCollectionEquality()
                    .equals(other.currentChat, currentChat)) &&
            (identical(other.currentUser, currentUser) ||
                const DeepCollectionEquality()
                    .equals(other.currentUser, currentUser)) &&
            (identical(other.otherUser, otherUser) ||
                const DeepCollectionEquality()
                    .equals(other.otherUser, otherUser)) &&
            (identical(other.openImagePicker, openImagePicker) ||
                const DeepCollectionEquality()
                    .equals(other.openImagePicker, openImagePicker)) &&
            (identical(other.openFilePicker, openFilePicker) ||
                const DeepCollectionEquality()
                    .equals(other.openFilePicker, openFilePicker)) &&
            (identical(other.openLocationPicker, openLocationPicker) ||
                const DeepCollectionEquality()
                    .equals(other.openLocationPicker, openLocationPicker)) &&
            (identical(other.imageSelected, imageSelected) ||
                const DeepCollectionEquality()
                    .equals(other.imageSelected, imageSelected)) &&
            (identical(other.fileSelected, fileSelected) ||
                const DeepCollectionEquality()
                    .equals(other.fileSelected, fileSelected)) &&
            (identical(other.locationSelected, locationSelected) ||
                const DeepCollectionEquality()
                    .equals(other.locationSelected, locationSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messages) ^
      const DeepCollectionEquality().hash(currentChat) ^
      const DeepCollectionEquality().hash(currentUser) ^
      const DeepCollectionEquality().hash(otherUser) ^
      const DeepCollectionEquality().hash(openImagePicker) ^
      const DeepCollectionEquality().hash(openFilePicker) ^
      const DeepCollectionEquality().hash(openLocationPicker) ^
      const DeepCollectionEquality().hash(imageSelected) ^
      const DeepCollectionEquality().hash(fileSelected) ^
      const DeepCollectionEquality().hash(locationSelected);

  @JsonKey(ignore: true)
  @override
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      __$ChatStateCopyWithImpl<_ChatState>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  const factory _ChatState(
      {required List<ChatMessage> messages,
      required Chat? currentChat,
      required User? currentUser,
      required User? otherUser,
      required bool openImagePicker,
      required bool openFilePicker,
      required bool openLocationPicker,
      required String? imageSelected,
      required String? fileSelected,
      required String? locationSelected}) = _$_ChatState;

  @override
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  @override
  Chat? get currentChat => throw _privateConstructorUsedError;
  @override
  User? get currentUser => throw _privateConstructorUsedError;
  @override
  User? get otherUser => throw _privateConstructorUsedError;
  @override
  bool get openImagePicker => throw _privateConstructorUsedError;
  @override
  bool get openFilePicker => throw _privateConstructorUsedError;
  @override
  bool get openLocationPicker => throw _privateConstructorUsedError;
  @override
  String? get imageSelected => throw _privateConstructorUsedError;
  @override
  String? get fileSelected => throw _privateConstructorUsedError;
  @override
  String? get locationSelected => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChatStateCopyWith<_ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}
