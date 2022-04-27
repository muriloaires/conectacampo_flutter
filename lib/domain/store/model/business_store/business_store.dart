import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_store.freezed.dart';
part 'business_store.g.dart';

@freezed
class BusinessStore with _$BusinessStore {
  const factory BusinessStore({
    required String name,
  }) = _BusinessStore;

  factory BusinessStore.fromJson(Map<String, dynamic> json) =>
      _$BusinessStoreFromJson(json);
}
