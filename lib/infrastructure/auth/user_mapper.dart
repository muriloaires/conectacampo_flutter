import 'package:conectacampo/domain/auth/user.dart' as LocalUser;
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/infrastructure/auth/model/model.dart';

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
      id,
      fullName ?? 'Mude seu nome',
      nickname,
      vehicleLicensePlate,
      phoneNumber,
      thumb,
      medium,
      original,
      null,
      email,
      ownGroupId,
      isOnline: false,
    );
  }
}
