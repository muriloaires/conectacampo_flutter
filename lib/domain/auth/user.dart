import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User(
      {@required UniqueId id,
      @required FullName name,
      @required Nickname nickname,
      @required PhoneNumber phoneNumber,
      @required ThumbAvatar thumbAvatar,
      @required MediumAvatar mediumAvatar,
      @required OriginalAvatar originalAvatar}) = _User;
}
