part of 'search_form_bloc.dart';

@freezed
class SearchFormEvent with _$SearchFormEvent {
  const factory SearchFormEvent.started() = _Started;
  const factory SearchFormEvent.searchTapped(String query) = SearchTapped;
  const factory SearchFormEvent.historySelected(String query) = HistorySelected;
  const factory SearchFormEvent.onRadioKindTap(int index) = OnRadioKindTap;
  const factory SearchFormEvent.onRadioRatingTap(int index) = OnRadioRatingTap;

  const factory SearchFormEvent.onTapKindFilter() = OnTapKindFilter;
  const factory SearchFormEvent.onTapRatingFilter() = OnTapRatingFilter;

  const factory SearchFormEvent.onProductSelected(Product product) = OnProductSelected;
  const factory SearchFormEvent.onDateSelected(DateTime dateSelected) = OnDateSelected;
  const factory SearchFormEvent.onBtnFilterPressed() = OnBtnFilterPressed;

  const factory SearchFormEvent.onQtyChanged(String qty) = OnQtyChanged;
  const factory SearchFormEvent.nameChanged(String newName) = NameChanged;

}
