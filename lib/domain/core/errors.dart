import 'package:conectacampo/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    return Error.safeToString(
        'Um ValueFailure foi encontrado em um ponto não recuperável. Finalizando. Error: $valueFailure');
  }
}
