// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/phone_number_form/sign_in_form_bloc.dart' as _i35;
import 'application/auth/sign_up_form/bloc/sign_up_form_bloc.dart' as _i36;
import 'application/auth/sms_code_form/sms_code_form_bloc.dart' as _i40;
import 'application/buyer/adivertisements/adivertisements_bloc.dart' as _i46;
import 'application/buyer/adivertisements/advertisement_deital/ad_detail_bloc.dart'
    as _i44;
import 'application/buyer/adivertisements/advertiser/advertiser_bloc.dart'
    as _i47;
import 'application/buyer/adivertisements/single_advertisement/single_advertisement_bloc.dart'
    as _i38;
import 'application/buyer/cart/cart_bloc.dart' as _i49;
import 'application/buyer/group/group_bloc.dart' as _i51;
import 'application/buyer/menu/buyer_menu_bloc.dart' as _i48;
import 'application/buyer/product/product_page_bloc.dart' as _i24;
import 'application/buyer/reservation/reservation_bloc.dart' as _i26;
import 'application/buyer/reservation/single_reservation/single_reservation_bloc.dart'
    as _i39;
import 'application/buyer/search/result/search_result_bloc.dart' as _i29;
import 'application/buyer/search/search_form_bloc.dart' as _i28;
import 'application/buyer/summary/summary_bloc.dart' as _i42;
import 'application/home/home_bloc.dart' as _i6;
import 'application/notification/notifications_bloc.dart' as _i22;
import 'application/places_form/bloc/places_form_bloc.dart' as _i23;
import 'application/profile/edit/edit_profile_bloc.dart' as _i50;
import 'application/profile/profile_bloc.dart' as _i25;
import 'application/seller/adveretisements/seller_advertisements_bloc.dart'
    as _i30;
import 'application/seller/adveretisements/single_advertisement/bloc/single_advertisement_bloc.dart'
    as _i37;
import 'application/seller/group/seller_group_bloc.dart' as _i31;
import 'application/seller/menu/seller_menu_bloc.dart' as _i32;
import 'application/seller/new_advertisement/add_photo/add_photo_bloc.dart'
    as _i3;
import 'application/seller/new_advertisement/add_photos_summary/add_photos_summary_bloc.dart'
    as _i4;
import 'application/seller/new_advertisement/add_product/add_product_bloc.dart'
    as _i45;
import 'application/seller/new_advertisement/add_summary/new_ad_summary_bloc.dart'
    as _i20;
import 'application/seller/new_advertisement/new_advertisement_bloc.dart'
    as _i21;
import 'application/seller/reservation/seller_reservation_bloc.dart' as _i33;
import 'application/seller/reservation_summary/summary_reservations_bloc.dart'
    as _i43;
import 'application/seller/summary/seller_summary_bloc.dart' as _i34;
import 'application/splash/splash_bloc.dart' as _i41;
import 'application/stores/my_stores/my_stores_bloc.dart' as _i19;
import 'domain/advertisements/i_advertisements_facade.dart' as _i7;
import 'domain/auth/i_auth_facade.dart' as _i9;
import 'domain/notification/i_notification_facade.dart' as _i11;
import 'domain/places/i_places_facade.dart' as _i13;
import 'domain/products/i_product_facade.dart' as _i15;
import 'domain/reservation/i_reservation_facade.dart' as _i17;
import 'infrastructure/advertisement/advertisement_facade.dart' as _i8;
import 'infrastructure/auth/auth_facade.dart' as _i10;
import 'infrastructure/auth/rest_auth_facade.dart' as _i27;
import 'infrastructure/core/firebase_injectable_module.dart' as _i52;
import 'infrastructure/notification/notification_facade.dart' as _i12;
import 'infrastructure/places/places_facade.dart' as _i14;
import 'infrastructure/product/product_facade.dart' as _i16;
import 'infrastructure/reservation/reservation_facade.dart'
    as _i18; // ignore_for_file: unnecessary_lambdas

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
  gh.factory<_i6.HomeBloc>(() => _i6.HomeBloc());
  gh.lazySingleton<_i7.IAdvertisementsFacade>(() => _i8.AdvertisementFacade());
  gh.lazySingleton<_i9.IAuthFacade>(
      () => _i10.AuthFacade(get<_i5.FirebaseAuth>()));
  gh.lazySingleton<_i11.INotificationFacade>(() => _i12.NotificationFacade());
  gh.lazySingleton<_i13.IPlacesFacade>(() => _i14.PlacesFacade());
  gh.lazySingleton<_i15.IProductFacade>(() => _i16.ProductFacade());
  gh.lazySingleton<_i17.IReservationFacade>(() => _i18.ReservationFacade());
  gh.factory<_i19.MyStoresBloc>(() => _i19.MyStoresBloc(get<dynamic>()));
  gh.factory<_i20.NewAdSummaryBloc>(
      () => _i20.NewAdSummaryBloc(get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i21.NewAdvertisementBloc>(() => _i21.NewAdvertisementBloc());
  gh.factory<_i22.NotificationsBloc>(
      () => _i22.NotificationsBloc(get<_i11.INotificationFacade>()));
  gh.factory<_i23.PlacesFormBloc>(
      () => _i23.PlacesFormBloc(get<_i13.IPlacesFacade>()));
  gh.factory<_i24.ProductPageBloc>(() => _i24.ProductPageBloc(
      get<_i17.IReservationFacade>(), get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i25.ProfileBloc>(() => _i25.ProfileBloc());
  gh.factory<_i26.ReservationBloc>(
      () => _i26.ReservationBloc(get<_i17.IReservationFacade>()));
  gh.lazySingleton<_i27.RestAuthFacade>(() => _i27.RestAuthFacade());
  gh.factory<_i28.SearchFormBloc>(() => _i28.SearchFormBloc(
      get<_i7.IAdvertisementsFacade>(), get<_i15.IProductFacade>()));
  gh.factory<_i29.SearchResultBloc>(
      () => _i29.SearchResultBloc(get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i30.SellerAdvertisementsBloc>(
      () => _i30.SellerAdvertisementsBloc(get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i31.SellerGroupBloc>(
      () => _i31.SellerGroupBloc(get<_i17.IReservationFacade>()));
  gh.factory<_i32.SellerMenuBloc>(
      () => _i32.SellerMenuBloc(get<_i17.IReservationFacade>()));
  gh.factory<_i33.SellerReservationBloc>(() => _i33.SellerReservationBloc(
      get<_i17.IReservationFacade>(), get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i34.SellerSummaryBloc>(() => _i34.SellerSummaryBloc(
      get<_i7.IAdvertisementsFacade>(), get<_i17.IReservationFacade>()));
  gh.factory<_i35.SignInFormBloc>(
      () => _i35.SignInFormBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i36.SignUpFormBloc>(
      () => _i36.SignUpFormBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i37.SingleAdvertisementBloc>(
      () => _i37.SingleAdvertisementBloc(get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i38.SingleAdvertisementBloc>(
      () => _i38.SingleAdvertisementBloc(get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i39.SingleReservationBloc>(() => _i39.SingleReservationBloc(
      get<_i17.IReservationFacade>(), get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i40.SmsCodeFormBloc>(
      () => _i40.SmsCodeFormBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i41.SplashBloc>(() => _i41.SplashBloc());
  gh.factory<_i42.SummaryBloc>(
      () => _i42.SummaryBloc(get<_i17.IReservationFacade>()));
  gh.factory<_i43.SummaryReservationsBloc>(
      () => _i43.SummaryReservationsBloc(get<_i17.IReservationFacade>()));
  gh.factory<_i44.AdDetailBloc>(
      () => _i44.AdDetailBloc(get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i45.AddProductBloc>(
      () => _i45.AddProductBloc(get<_i15.IProductFacade>()));
  gh.factory<_i46.AdvertisementsBloc>(
      () => _i46.AdvertisementsBloc(get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i47.AdvertiserBloc>(
      () => _i47.AdvertiserBloc(get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i48.BuyerMenuBloc>(
      () => _i48.BuyerMenuBloc(get<_i17.IReservationFacade>()));
  gh.factory<_i49.CartBloc>(() => _i49.CartBloc(
      get<_i17.IReservationFacade>(), get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i50.EditProfileBloc>(
      () => _i50.EditProfileBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i51.GroupBloc>(
      () => _i51.GroupBloc(get<_i7.IAdvertisementsFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i52.FirebaseInjectableModule {}
