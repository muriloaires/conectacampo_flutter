import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:conectacampo/domain/places/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'place.freezed.dart';

@freezed
abstract class Place with _$Place {
  const factory Place(
      {@required UniqueId id,
      @required PlaceName name,
      @required StatePlace state,
      @required PlaceAddress address}) = _Place;
}
