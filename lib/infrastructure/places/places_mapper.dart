import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:conectacampo/domain/places/place.dart' as LocalPlace;
import 'package:conectacampo/domain/places/value_objects.dart';
import 'package:conectacampo/infrastructure/places/model/model.dart';

extension PlaceExtension on PlaceResponse {
  LocalPlace.Place toDomain() {
    return LocalPlace.Place(
        UniqueId.fromUniqueString(id.toString()),
        PlaceName(name),
        StatePlace(state),
        PlaceAddress(address));
  }
}

bla() {
  var e = PlaceResponse(
      1,
      'name',
      'state',
      'city',
      'address',
      DateTime.now());
  e.toDomain();
}
