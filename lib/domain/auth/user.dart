import 'package:conectacampo/domain/advertisements/advertisement.dart';
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
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
      String? email) = _User;
}
