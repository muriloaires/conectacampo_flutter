import 'package:bloc/bloc.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/store/failure/stores_failure.dart';
import 'package:conectacampo/domain/store/i_stores_facade.dart';
import 'package:conectacampo/domain/store/model/my_stores.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'my_stores_event.dart';
part 'my_stores_state.dart';
part 'my_stores_bloc.freezed.dart';

@injectable
class MyStoresBloc extends Bloc<MyStoresEvent, MyStoresState> {
  final IStoresFacade storesFacade;

  MyStoresBloc(this.storesFacade) : super(MyStoresState.initial()) {
    on<MyStoresEvent>((event, emit) {
      event.map(
        started: (started) async {
          final loggedUser = await loadLoggedUser();
          final myStoresSuccessOrFailure = await storesFacade.getMyStores();

          emit(
            state.copyWith(
              loading: false,
              loggedUser: loggedUser.fold((l) => null, (r) => r),
              myStoresSuccessOrFailure: myStoresSuccessOrFailure,
            ),
          );
        },
      );
    });
  }
}
