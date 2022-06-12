import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_failure.freezed.dart';

@freezed
class ChatFailure with _$ChatFailure {
  const factory ChatFailure.unauthorized() = Unauthorized;
  const factory ChatFailure.applicationError() = ApplicationError;
  const factory ChatFailure.serverError() = ServerError;
}
