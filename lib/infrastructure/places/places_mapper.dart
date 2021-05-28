import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:conectacampo/domain/places/place.dart' as LocalPlace;
import 'package:conectacampo/domain/places/value_objects.dart';
import 'package:conectacampo/infrastructure/places/model/model.dart';

extension PlaceExtension on PlaceResponse {
  LocalPlace.Place toDomain() {
    return LocalPlace.Place(
        id: UniqueId.fromUniqueString(id.toString()),
        name: PlaceName(name),
        state: StatePlace(state),
        address: PlaceAddress(address));
  }
}

bla() {
  var e = PlaceResponse(
      id: 1,
      name: 'name',
      state: 'state',
      city: 'city',
      address: 'address',
      createdAt: DateTime.now());
  e.toDomain();
}
