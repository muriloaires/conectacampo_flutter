part of 'search_result_bloc.dart';

@freezed
class SearchResultEvent with _$SearchResultEvent {
  const factory SearchResultEvent.started(AdProduct product) = _Started;
}
