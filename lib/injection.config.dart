// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/phone_number_form/sign_in_form_bloc.dart' as _i33;
import 'application/auth/sign_up_form/bloc/sign_up_form_bloc.dart' as _i34;
import 'application/auth/sms_code_form/sms_code_form_bloc.dart' as _i37;
import 'application/buyer/adivertisements/adivertisements_bloc.dart' as _i42;
import 'application/buyer/adivertisements/advertiser/advertiser_bloc.dart'
    as _i43;
import 'application/buyer/cart/cart_bloc.dart' as _i45;
import 'application/buyer/group/group_bloc.dart' as _i47;
import 'application/buyer/menu/buyer_menu_bloc.dart' as _i44;
import 'application/buyer/product/product_page_bloc.dart' as _i22;
import 'application/buyer/reservation/reservation_bloc.dart' as _i24;
import 'application/buyer/reservation/single_reservation/single_reservation_bloc.dart'
    as _i36;
import 'application/buyer/search/result/search_result_bloc.dart' as _i27;
import 'application/buyer/search/search_form_bloc.dart' as _i26;
import 'application/buyer/summary/summary_bloc.dart' as _i39;
import 'application/notification/notifications_bloc.dart' as _i20;
import 'application/places_form/bloc/places_form_bloc.dart' as _i21;
import 'application/profile/edit/edit_profile_bloc.dart' as _i46;
import 'application/profile/profile_bloc.dart' as _i23;
import 'application/seller/adveretisements/seller_advertisements_bloc.dart'
    as _i28;
import 'application/seller/adveretisements/single_advertisement/bloc/single_advertisement_bloc.dart'
    as _i35;
import 'application/seller/group/seller_group_bloc.dart' as _i29;
import 'application/seller/menu/seller_menu_bloc.dart' as _i30;
import 'application/seller/new_advertisement/add_photo/add_photo_bloc.dart'
    as _i3;
import 'application/seller/new_advertisement/add_photos_summary/add_photos_summary_bloc.dart'
    as _i4;
import 'application/seller/new_advertisement/add_product/add_product_bloc.dart'
    as _i41;
import 'application/seller/new_advertisement/add_summary/new_ad_summary_bloc.dart'
    as _i18;
import 'application/seller/new_advertisement/new_advertisement_bloc.dart'
    as _i19;
import 'application/seller/reservation/seller_reservation_bloc.dart' as _i31;
import 'application/seller/reservation_summary/summary_reservations_bloc.dart'
    as _i40;
import 'application/seller/summary/seller_summary_bloc.dart' as _i32;
import 'application/splash/splash_bloc.dart' as _i38;
import 'domain/advertisements/i_advertisements_facade.dart' as _i6;
import 'domain/auth/i_auth_facade.dart' as _i8;
import 'domain/notification/i_notification_facade.dart' as _i10;
import 'domain/places/i_places_facade.dart' as _i12;
import 'domain/products/i_product_facade.dart' as _i14;
import 'domain/reservation/i_reservation_facade.dart' as _i16;
import 'infrastructure/advertisement/advertisement_facade.dart' as _i7;
import 'infrastructure/auth/auth_facade.dart' as _i9;
import 'infrastructure/auth/rest_auth_facade.dart' as _i25;
import 'infrastructure/core/firebase_injectable_module.dart' as _i48;
import 'infrastructure/notification/notification_facade.dart' as _i11;
import 'infrastructure/places/places_facade.dart' as _i13;
import 'infrastructure/product/product_facade.dart' as _i15;
import 'infrastructure/reservation/reservation_facade.dart'
    as _i17; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i10.INotificationFacade>(() => _i11.NotificationFacade());
  gh.lazySingleton<_i12.IPlacesFacade>(() => _i13.PlacesFacade());
  gh.lazySingleton<_i14.IProductFacade>(() => _i15.ProductFacade());
  gh.lazySingleton<_i16.IReservationFacade>(() => _i17.ReservationFacade());
  gh.factory<_i18.NewAdSummaryBloc>(
      () => _i18.NewAdSummaryBloc(get<_i6.IAdvertisementsFacade>()));
  gh.factory<_i19.NewAdvertisementBloc>(() => _i19.NewAdvertisementBloc());
  gh.factory<_i20.NotificationsBloc>(
      () => _i20.NotificationsBloc(get<_i10.INotificationFacade>()));
  gh.factory<_i21.PlacesFormBloc>(
      () => _i21.PlacesFormBloc(get<_i12.IPlacesFacade>()));
  gh.factory<_i22.ProductPageBloc>(() => _i22.ProductPageBloc(
      get<_i16.IReservationFacade>(), get<_i6.IAdvertisementsFacade>()));
  gh.factory<_i23.ProfileBloc>(() => _i23.ProfileBloc());
  gh.factory<_i24.ReservationBloc>(
      () => _i24.ReservationBloc(get<_i16.IReservationFacade>()));
  gh.lazySingleton<_i25.RestAuthFacade>(() => _i25.RestAuthFacade());
  gh.factory<_i26.SearchFormBloc>(() => _i26.SearchFormBloc(
      get<_i6.IAdvertisementsFacade>(), get<_i14.IProductFacade>()));
  gh.factory<_i27.SearchResultBloc>(
      () => _i27.SearchResultBloc(get<_i6.IAdvertisementsFacade>()));
  gh.factory<_i28.SellerAdvertisementsBloc>(
      () => _i28.SellerAdvertisementsBloc(get<_i6.IAdvertisementsFacade>()));
  gh.factory<_i29.SellerGroupBloc>(
      () => _i29.SellerGroupBloc(get<_i16.IReservationFacade>()));
  gh.factory<_i30.SellerMenuBloc>(
      () => _i30.SellerMenuBloc(get<_i16.IReservationFacade>()));
  gh.factory<_i31.SellerReservationBloc>(() => _i31.SellerReservationBloc(
      get<_i16.IReservationFacade>(), get<_i6.IAdvertisementsFacade>()));
  gh.factory<_i32.SellerSummaryBloc>(() => _i32.SellerSummaryBloc(
      get<_i6.IAdvertisementsFacade>(), get<_i16.IReservationFacade>()));
  gh.factory<_i33.SignInFormBloc>(
      () => _i33.SignInFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i34.SignUpFormBloc>(
      () => _i34.SignUpFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i35.SingleAdvertisementBloc>(
      () => _i35.SingleAdvertisementBloc(get<_i6.IAdvertisementsFacade>()));
  gh.factory<_i36.SingleReservationBloc>(() => _i36.SingleReservationBloc(
      get<_i16.IReservationFacade>(), get<_i6.IAdvertisementsFacade>()));
  gh.factory<_i37.SmsCodeFormBloc>(
      () => _i37.SmsCodeFormBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i38.SplashBloc>(() => _i38.SplashBloc());
  gh.factory<_i39.SummaryBloc>(
      () => _i39.SummaryBloc(get<_i16.IReservationFacade>()));
  gh.factory<_i40.SummaryReservationsBloc>(
      () => _i40.SummaryReservationsBloc(get<_i16.IReservationFacade>()));
  gh.factory<_i41.AddProductBloc>(
      () => _i41.AddProductBloc(get<_i14.IProductFacade>()));
  gh.factory<_i42.AdvertisementsBloc>(
      () => _i42.AdvertisementsBloc(get<_i6.IAdvertisementsFacade>()));
  gh.factory<_i43.AdvertiserBloc>(
      () => _i43.AdvertiserBloc(get<_i6.IAdvertisementsFacade>()));
  gh.factory<_i44.BuyerMenuBloc>(
      () => _i44.BuyerMenuBloc(get<_i16.IReservationFacade>()));
  gh.factory<_i45.CartBloc>(() => _i45.CartBloc(
      get<_i16.IReservationFacade>(), get<_i6.IAdvertisementsFacade>()));
  gh.factory<_i46.EditProfileBloc>(
      () => _i46.EditProfileBloc(get<_i8.IAuthFacade>()));
  gh.factory<_i47.GroupBloc>(
      () => _i47.GroupBloc(get<_i6.IAdvertisementsFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i48.FirebaseInjectableModule {}
