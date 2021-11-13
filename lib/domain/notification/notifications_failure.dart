import 'package:freezed_annotation/freezed_annotation.dart';

part 'notifications_failure.freezed.dart';

@freezed
class NotificationsFailure with _$NotificationsFailure {

  const factory NotificationsFailure.unauthorized() = Unauthorized;
  const factory NotificationsFailure.serverError() = ServerError;
  const factory NotificationsFailure.requestError() = RequestError;
}
