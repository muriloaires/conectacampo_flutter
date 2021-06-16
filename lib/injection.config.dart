// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/phone_number_form/sign_in_form_bloc.dart' as _i13;
import 'application/auth/sign_up_form/bloc/sign_up_form_bloc.dart' as _i14;
import 'application/auth/sms_code_form/sms_code_form_bloc.dart' as _i15;
import 'application/buyer/adivertisements/adivertisements_bloc.dart' as _i3;
import 'application/buyer/menu/buyer_menu_bloc.dart' as _i4;
import 'application/buyer/search/search_form_bloc.dart' as _i12;
import 'application/places_form/bloc/places_form_bloc.dart' as _i10;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/places/i_places_facade.dart' as _i8;
import 'infrastructure/auth/auth_facade.dart' as _i7;
import 'infrastructure/auth/rest_auth_facade.dart' as _i11;
import 'infrastructure/core/firebase_injectable_module.dart' as _i16;
import 'infrastructure/places/places_facade.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.AdivertisementsBloc>(() => _i3.AdivertisementsBloc());
  gh.factory<_i4.BuyerMenuBloc>(() => _i4.BuyerMenuBloc());
  gh.lazySingleton<_i5.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i6.IAuthFacade>(
      () => _i7.AuthFacade(get<_i5.FirebaseAuth>()));
  gh.lazySingleton<_i8.IPlacesFacade>(
      () => _i9.PlacesFacade(get<_i5.FirebaseAuth>()));
  gh.factory<_i10.PlacesFormBloc>(
      () => _i10.PlacesFormBloc(get<_i8.IPlacesFacade>()));
  gh.lazySingleton<_i11.RestAuthFacade>(() => _i11.RestAuthFacade());
  gh.factory<_i12.SearchFormBloc>(() => _i12.SearchFormBloc());
  gh.factory<_i13.SignInFormBloc>(
      () => _i13.SignInFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i14.SignUpFormBloc>(
      () => _i14.SignUpFormBloc(get<_i6.IAuthFacade>()));
  gh.factory<_i15.SmsCodeFormBloc>(
      () => _i15.SmsCodeFormBloc(get<_i6.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i16.FirebaseInjectableModule {}
