// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/phone_number_form/sign_in_form_bloc.dart' as _i24;
import 'application/auth/sign_up_form/bloc/sign_up_form_bloc.dart' as _i25;
import 'application/auth/sms_code_form/sms_code_form_bloc.dart' as _i26;
import 'application/buyer/adivertisements/adivertisements_bloc.dart' as _i28;
import 'application/buyer/menu/buyer_menu_bloc.dart' as _i5;
import 'application/buyer/product/product_page_bloc.dart' as _i18;
import 'application/buyer/reservation/bloc/reservation_bloc.dart' as _i19;
import 'application/buyer/search/search_form_bloc.dart' as _i21;
import 'application/places_form/bloc/places_form_bloc.dart' as _i17;
import 'application/seller/menu/seller_menu_bloc.dart' as _i22;
import 'application/seller/new_advertisement/add_photo/add_photo_bloc.dart'
    as _i3;
import 'application/seller/new_advertisement/add_photos_summary/add_photos_summary_bloc.dart'
    as _i4;
import 'application/seller/new_advertisement/add_product/add_product_bloc.dart'
    as _i27;
import 'application/seller/new_advertisement/add_summary/new_ad_summary_bloc.dart'
    as _i15;
import 'application/seller/new_advertisement/new_advertisement_bloc.dart'
    as _i16;
import 'application/seller/summary/seller_summary_bloc.dart' as _i23;
import 'domain/advertisements/i_advertisements_facade.dart' as _i7;
import 'domain/auth/i_auth_facade.dart' as _i9;
import 'domain/places/i_places_facade.dart' as _i11;
import 'domain/products/i_product_facade.dart' as _i13;
import 'infrastructure/advertisement/advertisement_facade.dart' as _i8;
import 'infrastructure/auth/auth_facade.dart' as _i10;
import 'infrastructure/auth/rest_auth_facade.dart' as _i20;
import 'infrastructure/core/firebase_injectable_module.dart' as _i29;
import 'infrastructure/places/places_facade.dart' as _i12;
import 'infrastructure/product/product_facade.dart'
    as _i14; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.AddPhotoBloc>(() => _i3.AddPhotoBloc());
  gh.factory<_i4.AddPhotosSummaryBloc>(() => _i4.AddPhotosSummaryBloc());
  gh.factory<_i5.BuyerMenuBloc>(() => _i5.BuyerMenuBloc());
  gh.lazySingleton<_i6.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i7.IAdvertisementsFacade>(() => _i8.AdvertisementFacade());
  gh.lazySingleton<_i9.IAuthFacade>(
      () => _i10.AuthFacade(get<_i6.FirebaseAuth>()));
  gh.lazySingleton<_i11.IPlacesFacade>(
      () => _i12.PlacesFacade(get<_i6.FirebaseAuth>()));
  gh.lazySingleton<_i13.IProductFacade>(() => _i14.ProductFacade());
  gh.factory<_i15.NewAdSummaryBloc>(
      () => _i15.NewAdSummaryBloc(get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i16.NewAdvertisementBloc>(() => _i16.NewAdvertisementBloc());
  gh.factory<_i17.PlacesFormBloc>(
      () => _i17.PlacesFormBloc(get<_i11.IPlacesFacade>()));
  gh.factory<_i18.ProductPageBloc>(() => _i18.ProductPageBloc());
  gh.factory<_i19.ReservationBloc>(() => _i19.ReservationBloc());
  gh.lazySingleton<_i20.RestAuthFacade>(() => _i20.RestAuthFacade());
  gh.factory<_i21.SearchFormBloc>(
      () => _i21.SearchFormBloc(get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i22.SellerMenuBloc>(() => _i22.SellerMenuBloc());
  gh.factory<_i23.SellerSummaryBloc>(() => _i23.SellerSummaryBloc());
  gh.factory<_i24.SignInFormBloc>(
      () => _i24.SignInFormBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i25.SignUpFormBloc>(
      () => _i25.SignUpFormBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i26.SmsCodeFormBloc>(
      () => _i26.SmsCodeFormBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i27.AddProductBloc>(
      () => _i27.AddProductBloc(get<_i13.IProductFacade>()));
  gh.factory<_i28.AdvertisementsBloc>(
      () => _i28.AdvertisementsBloc(get<_i7.IAdvertisementsFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i29.FirebaseInjectableModule {}
