import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

@freezed
class User with _$User {
  @JsonSerializable(explicitToJson: true)
  const factory User(
    int id,
    String? name,
    String? nickname,
    String? vehicleLicensePlate,
    String? phoneNumber,
    ThumbAvatar? thumbAvatar,
    MediumAvatar? mediumAvatar,
    OriginalAvatar? originalAvatar,
    Advertisement? lastAdvertisement,
    String? email,
    int? ownGroupId, {
    required bool? isOnline,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class ThumbAvatar with _$ThumbAvatar {
  const factory ThumbAvatar(
    String url,
  ) = _ThumbAvatar;

  factory ThumbAvatar.fromJson(Map<String, dynamic> json) =>
      _$ThumbAvatarFromJson(json);
}

@freezed
class MediumAvatar with _$MediumAvatar {
  const factory MediumAvatar(
    String url,
  ) = _MediumAvatar;

  factory MediumAvatar.fromJson(Map<String, dynamic> json) =>
      _$MediumAvatarFromJson(json);
}

@freezed
class OriginalAvatar with _$OriginalAvatar {
  const factory OriginalAvatar(
    String url,
  ) = _OriginalAvatar;

  factory OriginalAvatar.fromJson(Map<String, dynamic> json) =>
      _$OriginalAvatarFromJson(json);
}
