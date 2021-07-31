import 'package:conectacampo/infrastructure/reservation/model/model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'reservation_failure.freezed.dart';

@freezed
class ReservationFailure with _$ReservationFailure {
  const factory ReservationFailure.anotherSellerInCart() = AnotherSellerInCart;
  const factory ReservationFailure.errorInsertingInCart() =
      ErrorInsertingInCart;

  const factory ReservationFailure.unavailableItems(
      ReservationResponse? response) = UnavailableItems;
  const factory ReservationFailure.unauthorized() = Unauthorized;
  const factory ReservationFailure.serverError() = ServerError;
  const factory ReservationFailure.requestError() = RequestError;
}
