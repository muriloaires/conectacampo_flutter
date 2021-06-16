part of 'search_form_bloc.dart';

@freezed
class SearchFormEvent with _$SearchFormEvent {
  const factory SearchFormEvent.started() = _Started;
  const factory SearchFormEvent.productSelected() = ProductSelected;
}
