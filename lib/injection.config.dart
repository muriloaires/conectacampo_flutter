// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/phone_number_form/sign_in_form_bloc.dart' as _i28;
import 'application/auth/sign_up_form/bloc/sign_up_form_bloc.dart' as _i29;
import 'application/auth/sms_code_form/sms_code_form_bloc.dart' as _i31;
import 'application/buyer/adivertisements/adivertisements_bloc.dart' as _i36;
import 'application/buyer/cart/cart_bloc.dart' as _i38;
import 'application/buyer/group/group_bloc.dart' as _i39;
import 'application/buyer/menu/buyer_menu_bloc.dart' as _i37;
import 'application/buyer/product/product_page_bloc.dart' as _i19;
import 'application/buyer/reservation/reservation_bloc.dart' as _i21;
import 'application/buyer/reservation/single_reservation/single_reservation_bloc.dart'
    as _i30;
import 'application/buyer/search/search_form_bloc.dart' as _i23;
import 'application/buyer/summary/summary_bloc.dart' as _i33;
import 'application/places_form/bloc/places_form_bloc.dart' as _i18;
import 'application/profile/profile_bloc.dart' as _i20;
import 'application/seller/group/seller_group_bloc.dart' as _i24;
import 'application/seller/menu/seller_menu_bloc.dart' as _i25;
import 'application/seller/new_advertisement/add_photo/add_photo_bloc.dart'
    as _i3;
import 'application/seller/new_advertisement/add_photos_summary/add_photos_summary_bloc.dart'
    as _i4;
import 'application/seller/new_advertisement/add_product/add_product_bloc.dart'
    as _i35;
import 'application/seller/new_advertisement/add_summary/new_ad_summary_bloc.dart'
    as _i16;
import 'application/seller/new_advertisement/new_advertisement_bloc.dart'
    as _i17;
import 'application/seller/reservation/seller_reservation_bloc.dart' as _i26;
import 'application/seller/reservation_summary/summary_reservations_bloc.dart'
    as _i34;
import 'application/seller/summary/seller_summary_bloc.dart' as _i27;
import 'application/splash/splash_bloc.dart' as _i32;
import 'domain/advertisements/i_advertisements_facade.dart' as _i6;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/places/i_places_facade.dart' as _i10;
import 'domain/products/i_product_facade.dart' as _i12;
import 'domain/reservation/i_reservation_facade.dart' as _i14;
import 'infrastructure/advertisement/advertisement_facade.dart' as _i7;
import 'infrastructure/auth/auth_facade.dart' as _i9;
import 'infrastructure/auth/rest_auth_facade.dart' as _i22;
import 'infrastructure/core/firebase_injectable_module.dart' as _i40;
import 'infrastructure/places/places_facade.dart' as _i11;
import 'infrastructure/product/product_facade.dart' as _i13;
import 'infrastructure/reservation/reservation_facade.dart'
    as _i15; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<_i3.AddPhotoBloc>(() => _i3.AddPhotoBloc());
  gh.factory<_i4.AddPhotosSummaryBloc>(() => _i4.AddPhotosSummaryBloc());
  gh.lazySingleton<_i5.FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<_i6.IAdvertisementsFacade>(() => _i7.AdvertisementFacade());
  gh.lazySingleton<_i8.IAuthFacade>(
      () => _i9.AuthFacade(get<_i5.FirebaseAuth>()));
  gh.lazySingleton<_i10.IPlacesFacade>(() => _i11.PlacesFacade());
  gh.lazySingleton<_i12.IProductFacade>(() => _i13.ProductFacade());
  gh.lazySingleton<_i14.IReservationFacade>(() => _i15.ReservationFacade());
  gh.factory<_i16.NewAdSummaryBloc>(
      () => _i16.NewAdSummaryBloc(get<_i6.IAdvertisementsFacade>()));
  gh.factory<_i17.NewAdvertisementBloc>(() => _i17.NewAdvertisementBloc());
  gh.factory<_i18.PlacesFormBloc>(
      () => _i18.PlacesFormBloc(get<_i10.IPlacesFacade>()));
  gh.factory<_i19.ProductPageBloc>(
      () => _i19.ProductPageBloc(get<_i14.IReservationFacade>()));
  gh.factory<_i20.ProfileBloc>(() => _i20.ProfileBloc());
  gh.factory<_i21.ReservationBloc>(
      () => _i21.ReservationBloc(get<_i14.IReservationFacade>()));
  gh.lazySingleton<_i22.RestAuthFacade>(() => _i22.RestAuthFacade());
  gh.factory<_i23.SearchFormBloc>(
      () => _i23.SearchFormBloc(get<_i6.IAdvertisementsFacade>()));
  gh.factory<_i24.SellerGroupBloc>(
      () => _i24.SellerGroupBloc(get<_i14.IReservationFacade>()));
  gh.factory<_i25.SellerMenuBloc>(() => _i25.SellerMenuBloc());
  gh.factory<_i26.SellerReservationBloc>(
      () => _i26.SellerReservationBloc(get<_i14.IReservationFacade>()));
  gh.factory<_i27.SellerSummaryBloc>(() => _i27.SellerSummaryBloc(
      get<_i6.IAdvertisementsFacade>(), get<_i14.IReservationFacade>()));
  gh.factory<_i28.SignInFormBloc>(
      () => _i28.SignInFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i29.SignUpFormBloc>(
      () => _i29.SignUpFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i30.SingleReservationBloc>(
      () => _i30.SingleReservationBloc(get<_i14.IReservationFacade>()));
  gh.factory<_i31.SmsCodeFormBloc>(
      () => _i31.SmsCodeFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i32.SplashBloc>(() => _i32.SplashBloc());
  gh.factory<_i33.SummaryBloc>(
      () => _i33.SummaryBloc(get<_i14.IReservationFacade>()));
  gh.factory<_i34.SummaryReservationsBloc>(
      () => _i34.SummaryReservationsBloc(get<_i14.IReservationFacade>()));
  gh.factory<_i35.AddProductBloc>(
      () => _i35.AddProductBloc(get<_i12.IProductFacade>()));
  gh.factory<_i36.AdvertisementsBloc>(
      () => _i36.AdvertisementsBloc(get<_i6.IAdvertisementsFacade>()));
  gh.factory<_i37.BuyerMenuBloc>(
      () => _i37.BuyerMenuBloc(get<_i14.IReservationFacade>()));
  gh.factory<_i38.CartBloc>(() => _i38.CartBloc(
      get<_i14.IReservationFacade>(), get<_i6.IAdvertisementsFacade>()));
  gh.factory<_i39.GroupBloc>(
      () => _i39.GroupBloc(get<_i6.IAdvertisementsFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i40.FirebaseInjectableModule {}
