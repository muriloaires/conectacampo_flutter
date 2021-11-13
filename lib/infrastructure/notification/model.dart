import 'package:conectacampo/infrastructure/auth/model/model.dart';
import 'package:conectacampo/infrastructure/reservation/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';

part 'model.g.dart';

@freezed
class NotificationResponse with _$NotificationResponse {
  const factory NotificationResponse(
          @JsonKey(name: 'id') int id,
          @JsonKey(name: 'created_at') String createdAt,
          @JsonKey(name: 'title') String title,
          @JsonKey(name: 'message') String message,
          @JsonKey(name: 'kind') String kind,
          @JsonKey(name: 'user_id') int userId,
          @JsonKey(name: 'notificable') Notificatificable notificatificable) =
      _NotificationResponse;

  factory NotificationResponse.fromJson(Map<String, dynamic> json) =>
      _$NotificationResponseFromJson(json);


}

@freezed
class Notificatificable with _$Notificatificable {
  const factory Notificatificable(@JsonKey(name: 'id') int id) =
      _Notificatificable;

  factory Notificatificable.fromJson(Map<String, dynamic> json) =>
      _$NotificatificableFromJson(json);
}
