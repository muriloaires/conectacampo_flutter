// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/phone_number_form/sign_in_form_bloc.dart' as _i21;
import 'application/auth/sign_up_form/bloc/sign_up_form_bloc.dart' as _i22;
import 'application/auth/sms_code_form/sms_code_form_bloc.dart' as _i23;
import 'application/buyer/adivertisements/adivertisements_bloc.dart' as _i25;
import 'application/buyer/menu/buyer_menu_bloc.dart' as _i3;
import 'application/buyer/product/product_page_bloc.dart' as _i15;
import 'application/buyer/reservation/bloc/reservation_bloc.dart' as _i16;
import 'application/buyer/search/search_form_bloc.dart' as _i18;
import 'application/places_form/bloc/places_form_bloc.dart' as _i14;
import 'application/seller/menu/seller_menu_bloc.dart' as _i19;
import 'application/seller/new_advertisement/add_product/add_product_bloc.dart'
    as _i24;
import 'application/seller/new_advertisement/new_advertisement_bloc.dart'
    as _i13;
import 'application/seller/summary/seller_summary_bloc.dart' as _i20;
import 'domain/advertisements/i_advertisements_facade.dart' as _i5;
import 'domain/auth/i_auth_facade.dart' as _i7;
import 'domain/places/i_places_facade.dart' as _i9;
import 'domain/products/i_product_facade.dart' as _i11;
import 'infrastructure/advertisement/advertisement_facade.dart' as _i6;
import 'infrastructure/auth/auth_facade.dart' as _i8;
import 'infrastructure/auth/rest_auth_facade.dart' as _i17;
import 'infrastructure/core/firebase_injectable_module.dart' as _i26;
import 'infrastructure/places/places_facade.dart' as _i10;
import 'infrastructure/product/product_facade.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i11.IProductFacade>(() => _i12.ProductFacade());
  gh.factory<_i13.NewAdvertisementBloc>(() => _i13.NewAdvertisementBloc());
  gh.factory<_i14.PlacesFormBloc>(
      () => _i14.PlacesFormBloc(get<_i9.IPlacesFacade>()));
  gh.factory<_i15.ProductPageBloc>(() => _i15.ProductPageBloc());
  gh.factory<_i16.ReservationBloc>(() => _i16.ReservationBloc());
  gh.lazySingleton<_i17.RestAuthFacade>(() => _i17.RestAuthFacade());
  gh.factory<_i18.SearchFormBloc>(
      () => _i18.SearchFormBloc(get<_i5.IAdvertisementsFacade>()));
  gh.factory<_i19.SellerMenuBloc>(() => _i19.SellerMenuBloc());
  gh.factory<_i20.SellerSummaryBloc>(() => _i20.SellerSummaryBloc());
  gh.factory<_i21.SignInFormBloc>(
      () => _i21.SignInFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i22.SignUpFormBloc>(
      () => _i22.SignUpFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i23.SmsCodeFormBloc>(
      () => _i23.SmsCodeFormBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i24.AddProductBloc>(
      () => _i24.AddProductBloc(get<_i11.IProductFacade>()));
  gh.factory<_i25.AdvertisementsBloc>(
      () => _i25.AdvertisementsBloc(get<_i5.IAdvertisementsFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i26.FirebaseInjectableModule {}
