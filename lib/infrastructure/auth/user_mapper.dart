import 'package:conectacampo/domain/auth/user.dart' as LocalUser;
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:conectacampo/infrastructure/auth/model/model.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension LocalUserDomainX on UserResponse {
  LocalUser.User toDomain() {
    ThumbAvatar? thumb;
    MediumAvatar? medium;
    OriginalAvatar? original;

    if (avatar != null) {
      thumb = ThumbAvatar(avatar!.thumbnail.url);
      medium = MediumAvatar(avatar!.thumbnail.url);
      original = OriginalAvatar(avatar!.thumbnail.url);
    }

    return LocalUser.User(
      UniqueId.fromUniqueString(id.toString()),
      FullName('$firstName $lastName'),
      Nickname(nickname),
      PhoneNumber(phoneNumber),
      thumb,
      medium,
      original,
    );
  }
}
