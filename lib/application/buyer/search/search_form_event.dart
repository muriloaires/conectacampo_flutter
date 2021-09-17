part of 'search_form_bloc.dart';

@freezed
class SearchFormEvent with _$SearchFormEvent {
  const factory SearchFormEvent.started() = _Started;
  const factory SearchFormEvent.productSelected() = ProductSelected;
  const factory SearchFormEvent.searchTapped(String query) = SearchTapped;
  const factory SearchFormEvent.historySelected(String query) = HistorySelected;
  const factory SearchFormEvent.onRadioKindTap(int index) = OnRadioKindTap;
  const factory SearchFormEvent.onRadioRatingTap(int index) = OnRadioRatingTap;

  const factory SearchFormEvent.onTapKindFilter() = OnTapKindFilter;
  const factory SearchFormEvent.onTapRatingFilter() = OnTapRatingFilter;


}
