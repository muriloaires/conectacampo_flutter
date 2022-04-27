import 'package:conectacampo/domain/store/model/business_store/business_store.dart';
import 'package:conectacampo/domain/store/model/partner_store/partner_store.dart';
import 'package:conectacampo/domain/store/model/personal_store/personal_store.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_stores.freezed.dart';
part 'my_stores.g.dart';

@freezed
class MyStores with _$MyStores {
  const factory MyStores({
    required PersonalStore? personalStore,
    required BusinessStore? businessStore,
    required List<PartnerStore> partnersStores,
  }) = _MyStores;

  factory MyStores.fromJson(Map<String, dynamic> json) =>
      _$MyStoresFromJson(json);
}
