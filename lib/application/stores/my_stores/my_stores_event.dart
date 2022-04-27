part of 'my_stores_bloc.dart';

@freezed
class MyStoresEvent with _$MyStoresEvent {
  const factory MyStoresEvent.started() = _Started;
}