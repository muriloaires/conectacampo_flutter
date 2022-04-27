import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner_store.freezed.dart';
part 'partner_store.g.dart';

@freezed
class PartnerStore with _$PartnerStore {
  const factory PartnerStore() = _PartnerStore;

  factory PartnerStore.fromJson(Map<String, dynamic> json) =>
      _$PartnerStoreFromJson(json);
}
