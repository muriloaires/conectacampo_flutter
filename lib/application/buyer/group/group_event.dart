part of 'group_bloc.dart';

@freezed
class GroupEvent with _$GroupEvent {
  const factory GroupEvent.started() = _Started;
  const factory GroupEvent.onSearchTapped() = OnSearchTapped;
}