import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User(
      UniqueId id,
      FullName name,
      Nickname nickname,
      PhoneNumber phoneNumber,
      ThumbAvatar? thumbAvatar,
      MediumAvatar? mediumAvatar,
      OriginalAvatar? originalAvatar) = _User;
}
