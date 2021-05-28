// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/phone_number_form/sign_in_form_bloc.dart' as _i10;
import 'application/auth/places_form/bloc/places_form_bloc.dart' as _i8;
import 'application/auth/sign_up_form/bloc/sign_up_form_bloc.dart' as _i11;
import 'application/auth/sms_code_form/sms_code_form_bloc.dart' as _i12;
import 'domain/auth/i_auth_facade.dart' as _i4;
import 'domain/places/i_places_facade.dart' as _i6;
import 'infrastructure/auth/auth_facade.dart' as _i5;
import 'infrastructure/auth/rest_auth_facade.dart' as _i9;
import 'infrastructure/core/firebase_injectable_module.dart' as _i13;
import 'infrastructure/places/places_facade.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String environment, _i2.EnvironmentFilter environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.lazySingleton<_i3.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i4.IAuthFacade>(
      () => _i5.AuthFacade(get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i6.IPlacesFacade>(
      () => _i7.PlacesFacade(get<_i3.FirebaseAuth>()));
  gh.factory<_i8.PlacesFormBloc>(
      () => _i8.PlacesFormBloc(get<_i6.IPlacesFacade>()));
  gh.lazySingleton<_i9.RestAuthFacade>(() => _i9.RestAuthFacade());
  gh.factory<_i10.SignInFormBloc>(
      () => _i10.SignInFormBloc(get<_i4.IAuthFacade>()));
  gh.factory<_i11.SignUpFormBloc>(
      () => _i11.SignUpFormBloc(get<_i4.IAuthFacade>()));
  gh.factory<_i12.SmsCodeFormBloc>(
      () => _i12.SmsCodeFormBloc(get<_i4.IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i13.FirebaseInjectableModule {}
