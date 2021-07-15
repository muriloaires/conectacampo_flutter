import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

@freezed
class ReservationItemDB with _$ReservationItemDB {
  const factory ReservationItemDB(
      {@JsonKey(name: '_id') required int id,
      @JsonKey(name: 'name') required String name,
      @JsonKey(name: 'measuremente_unit') required String measurementUnit,
      @JsonKey(name: 'ammount') required int quantity,
      @JsonKey(name: 'rating') required String rating,
      @JsonKey(name: 'kind') required String kind,
      @JsonKey(name: 'seller_name') required String sellerName,
      @JsonKey(name: 'seller_phone') required String sellerPhone,
      @JsonKey(name: 'image') required String image}) = _ReservationItemDB;

  factory ReservationItemDB.fromJson(Map<String, dynamic> json) =>
      _$ReservationItemDBFromJson(json);
}
