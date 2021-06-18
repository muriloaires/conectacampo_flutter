import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:conectacampo/domain/places/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place.freezed.dart';
part 'place.g.dart';

@freezed
class Place with _$Place {
  const factory Place(
      {required String id,
      required String name,
      required String state,
      required String address}) = _Place;

  factory Place.fromJson(Map<String, dynamic> json) => _$PlaceFromJson(json);
}
