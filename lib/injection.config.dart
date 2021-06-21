// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/phone_number_form/sign_in_form_bloc.dart' as _i15;
import 'application/auth/sign_up_form/bloc/sign_up_form_bloc.dart' as _i16;
import 'application/auth/sms_code_form/sms_code_form_bloc.dart' as _i17;
import 'application/buyer/adivertisements/adivertisements_bloc.dart' as _i18;
import 'application/buyer/menu/buyer_menu_bloc.dart' as _i3;
import 'application/buyer/reservation/bloc/reservation_bloc.dart' as _i12;
import 'application/buyer/search/search_form_bloc.dart' as _i14;
import 'application/places_form/bloc/places_form_bloc.dart' as _i11;
import 'domain/advertisements/i_advertisements_facade.dart' as _i5;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/places/i_places_facade.dart' as _i9;
import 'infrastructure/advertisement/advertisement_facade.dart' as _i6;
import 'infrastructure/auth/auth_facade.dart' as _i8;
import 'infrastructure/auth/rest_auth_facade.dart' as _i13;
import 'infrastructure/core/firebase_injectable_module.dart' as _i19;
import 'infrastructure/places/places_facade.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.BuyerMenuBloc>(() => _i3.BuyerMenuBloc());
  gh.lazySingleton<_i4.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i5.IAdvertisementsFacade>(() => _i6.AdvertisementFacade());
  gh.lazySingleton<_i7.IAuthFacade>(
      () => _i8.AuthFacade(get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i9.IPlacesFacade>(
      () => _i10.PlacesFacade(get<_i4.FirebaseAuth>()));
  gh.factory<_i11.PlacesFormBloc>(
      () => _i11.PlacesFormBloc(get<_i9.IPlacesFacade>()));
  gh.factory<_i12.ReservationBloc>(() => _i12.ReservationBloc());
  gh.lazySingleton<_i13.RestAuthFacade>(() => _i13.RestAuthFacade());
  gh.factory<_i14.SearchFormBloc>(
      () => _i14.SearchFormBloc(get<_i5.IAdvertisementsFacade>()));
  gh.factory<_i15.SignInFormBloc>(
      () => _i15.SignInFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i16.SignUpFormBloc>(
      () => _i16.SignUpFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i17.SmsCodeFormBloc>(
      () => _i17.SmsCodeFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i18.AdvertisementsBloc>(
      () => _i18.AdvertisementsBloc(get<_i5.IAdvertisementsFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i19.FirebaseInjectableModule {}
