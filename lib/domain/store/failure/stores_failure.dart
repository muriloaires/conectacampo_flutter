import 'package:freezed_annotation/freezed_annotation.dart';
part 'stores_failure.freezed.dart';

@freezed
class StoresFailure with _$StoresFailure {
  const factory StoresFailure.unauthorized() = Unauthorized;
}
