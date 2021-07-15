import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation_item.freezed.dart';

@freezed
class ReservationItem with _$ReservationItem {
  const factory ReservationItem(
      {required int id,
      required String measurementUnit,
      required int quantity,
      required String rating,
      required String kind,
      required String sellerName,
      required String sellerPhone}) = _ReservationItem;
}
// "name": "Abacate",
//                 "product_id": 1,
//                 "measurement_unit": "Caixa 20 Kg",
//                 "quantity": 2,
//                 "unit_price": null,
//                 "rating": "C (terceira)",
//                 "kind": "Avocado (Fuerte)",
//                 "observation": null,