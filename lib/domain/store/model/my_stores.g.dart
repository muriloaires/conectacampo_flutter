// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_stores.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MyStores _$_$_MyStoresFromJson(Map<String, dynamic> json) {
  return _$_MyStores(
    personalStore: json['personalStore'] == null
        ? null
        : PersonalStore.fromJson(json['personalStore'] as Map<String, dynamic>),
    businessStore: json['businessStore'] == null
        ? null
        : BusinessStore.fromJson(json['businessStore'] as Map<String, dynamic>),
    partnersStores: (json['partnersStores'] as List<dynamic>)
        .map((e) => PartnerStore.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$_$_MyStoresToJson(_$_MyStores instance) =>
    <String, dynamic>{
      'personalStore': instance.personalStore,
      'businessStore': instance.businessStore,
      'partnersStores': instance.partnersStores,
    };
