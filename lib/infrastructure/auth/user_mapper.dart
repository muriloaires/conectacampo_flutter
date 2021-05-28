import 'package:conectacampo/domain/auth/user.dart' as LocalUser;
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:conectacampo/infrastructure/auth/model/model.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension LocalUserDomainX on UserResponse {
  LocalUser.User toDomain() {
    return LocalUser.User(
      id: UniqueId.fromUniqueString(id.toString()),
      name: FullName('$firstName $lastName'),
      nickname: Nickname(nickname),
      phoneNumber: PhoneNumber(phoneNumber),
      thumbAvatar: ThumbAvatar(avatar.thumbnail.url),
      mediumAvatar: MediumAvatar(avatar.medium.url),
      originalAvatar: OriginalAvatar(avatar.original.url),
    );
  }
}
