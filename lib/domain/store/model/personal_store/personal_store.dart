import 'package:freezed_annotation/freezed_annotation.dart';

part 'personal_store.freezed.dart';
part 'personal_store.g.dart';

@freezed
class PersonalStore with _$PersonalStore {
  const factory PersonalStore({
    required String name,
  }) = _PersonalStore;

  factory PersonalStore.fromJson(Map<String, dynamic> json) =>
      _$PersonalStoreFromJson(json);
}
