import 'package:conectacampo/domain/store/failure/stores_failure.dart';
import 'package:conectacampo/domain/store/model/my_stores.dart';
import 'package:dartz/dartz.dart';

abstract class IStoresFacade {
  Future<Either<StoresFailure, MyStores>> getMyStores();
}
