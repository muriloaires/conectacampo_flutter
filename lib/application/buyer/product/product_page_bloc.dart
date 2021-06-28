import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'product_page_event.dart';
part 'product_page_state.dart';
part 'product_page_bloc.freezed.dart';

@injectable
class ProductPageBloc extends Bloc<ProductPageEvent, ProductPageState> {
  ProductPageBloc() : super(ProductPageState.initial());

  @override
  Stream<ProductPageState> mapEventToState(
    ProductPageEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
