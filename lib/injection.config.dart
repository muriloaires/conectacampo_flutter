// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/phone_number_form/sign_in_form_bloc.dart' as _i39;
import 'application/auth/sign_up_form/bloc/sign_up_form_bloc.dart' as _i40;
import 'application/auth/sms_code_form/sms_code_form_bloc.dart' as _i44;
import 'application/buyer/adivertisements/adivertisements_bloc.dart' as _i50;
import 'application/buyer/adivertisements/advertisement_deital/ad_detail_bloc.dart'
    as _i48;
import 'application/buyer/adivertisements/advertiser/advertiser_bloc.dart'
    as _i51;
import 'application/buyer/adivertisements/single_advertisement/single_advertisement_bloc.dart'
    as _i42;
import 'application/buyer/cart/cart_bloc.dart' as _i53;
import 'application/buyer/group/group_bloc.dart' as _i57;
import 'application/buyer/menu/buyer_menu_bloc.dart' as _i52;
import 'application/buyer/product/product_page_bloc.dart' as _i28;
import 'application/buyer/reservation/reservation_bloc.dart' as _i30;
import 'application/buyer/reservation/single_reservation/single_reservation_bloc.dart'
    as _i43;
import 'application/buyer/search/result/search_result_bloc.dart' as _i33;
import 'application/buyer/search/search_form_bloc.dart' as _i32;
import 'application/buyer/summary/summary_bloc.dart' as _i46;
import 'application/chat/chat_bloc.dart' as _i54;
import 'application/chat/message/message_bloc.dart' as _i21;
import 'application/chat_list/chat_list_bloc.dart' as _i55;
import 'application/home/home_bloc.dart' as _i6;
import 'application/notification/notifications_bloc.dart' as _i26;
import 'application/places_form/bloc/places_form_bloc.dart' as _i27;
import 'application/profile/edit/edit_profile_bloc.dart' as _i56;
import 'application/profile/profile_bloc.dart' as _i29;
import 'application/seller/adveretisements/seller_advertisements_bloc.dart'
    as _i34;
import 'application/seller/adveretisements/single_advertisement/bloc/single_advertisement_bloc.dart'
    as _i41;
import 'application/seller/group/seller_group_bloc.dart' as _i35;
import 'application/seller/menu/seller_menu_bloc.dart' as _i36;
import 'application/seller/new_advertisement/add_photo/add_photo_bloc.dart'
    as _i3;
import 'application/seller/new_advertisement/add_photos_summary/add_photos_summary_bloc.dart'
    as _i4;
import 'application/seller/new_advertisement/add_product/add_product_bloc.dart'
    as _i49;
import 'application/seller/new_advertisement/add_summary/new_ad_summary_bloc.dart'
    as _i24;
import 'application/seller/new_advertisement/new_advertisement_bloc.dart'
    as _i25;
import 'application/seller/reservation/seller_reservation_bloc.dart' as _i37;
import 'application/seller/reservation_summary/summary_reservations_bloc.dart'
    as _i47;
import 'application/seller/summary/seller_summary_bloc.dart' as _i38;
import 'application/splash/splash_bloc.dart' as _i45;
import 'application/stores/my_stores/my_stores_bloc.dart' as _i22;
import 'domain/advertisements/i_advertisements_facade.dart' as _i7;
import 'domain/auth/i_auth_facade.dart' as _i9;
import 'domain/chat/i_chat_facade.dart' as _i11;
import 'domain/notification/i_notification_facade.dart' as _i13;
import 'domain/places/i_places_facade.dart' as _i15;
import 'domain/products/i_product_facade.dart' as _i17;
import 'domain/reservation/i_reservation_facade.dart' as _i19;
import 'domain/store/i_stores_facade.dart' as _i23;
import 'infrastructure/advertisement/advertisement_facade.dart' as _i8;
import 'infrastructure/auth/auth_facade.dart' as _i10;
import 'infrastructure/auth/rest_auth_facade.dart' as _i31;
import 'infrastructure/chat/chat_facade.dart' as _i12;
import 'infrastructure/core/firebase_injectable_module.dart' as _i58;
import 'infrastructure/notification/notification_facade.dart' as _i14;
import 'infrastructure/places/places_facade.dart' as _i16;
import 'infrastructure/product/product_facade.dart' as _i18;
import 'infrastructure/reservation/reservation_facade.dart'
    as _i20; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i11.IChatFacade>(() => _i12.ChatFacade());
  gh.lazySingleton<_i13.INotificationFacade>(() => _i14.NotificationFacade());
  gh.lazySingleton<_i15.IPlacesFacade>(() => _i16.PlacesFacade());
  gh.lazySingleton<_i17.IProductFacade>(() => _i18.ProductFacade());
  gh.lazySingleton<_i19.IReservationFacade>(() => _i20.ReservationFacade());
  gh.factory<_i21.MessageBloc>(() => _i21.MessageBloc(get<_i11.IChatFacade>()));
  gh.factory<_i22.MyStoresBloc>(
      () => _i22.MyStoresBloc(get<_i23.IStoresFacade>()));
  gh.factory<_i24.NewAdSummaryBloc>(
      () => _i24.NewAdSummaryBloc(get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i25.NewAdvertisementBloc>(() => _i25.NewAdvertisementBloc());
  gh.factory<_i26.NotificationsBloc>(
      () => _i26.NotificationsBloc(get<_i13.INotificationFacade>()));
  gh.factory<_i27.PlacesFormBloc>(
      () => _i27.PlacesFormBloc(get<_i15.IPlacesFacade>()));
  gh.factory<_i28.ProductPageBloc>(() => _i28.ProductPageBloc(
      get<_i19.IReservationFacade>(), get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i29.ProfileBloc>(() => _i29.ProfileBloc());
  gh.factory<_i30.ReservationBloc>(
      () => _i30.ReservationBloc(get<_i19.IReservationFacade>()));
  gh.lazySingleton<_i31.RestAuthFacade>(() => _i31.RestAuthFacade());
  gh.factory<_i32.SearchFormBloc>(() => _i32.SearchFormBloc(
      get<_i7.IAdvertisementsFacade>(), get<_i17.IProductFacade>()));
  gh.factory<_i33.SearchResultBloc>(
      () => _i33.SearchResultBloc(get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i34.SellerAdvertisementsBloc>(
      () => _i34.SellerAdvertisementsBloc(get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i35.SellerGroupBloc>(
      () => _i35.SellerGroupBloc(get<_i19.IReservationFacade>()));
  gh.factory<_i36.SellerMenuBloc>(
      () => _i36.SellerMenuBloc(get<_i19.IReservationFacade>()));
  gh.factory<_i37.SellerReservationBloc>(() => _i37.SellerReservationBloc(
      get<_i19.IReservationFacade>(), get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i38.SellerSummaryBloc>(() => _i38.SellerSummaryBloc(
      get<_i7.IAdvertisementsFacade>(), get<_i19.IReservationFacade>()));
  gh.factory<_i39.SignInFormBloc>(
      () => _i39.SignInFormBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i40.SignUpFormBloc>(
      () => _i40.SignUpFormBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i41.SingleAdvertisementBloc>(
      () => _i41.SingleAdvertisementBloc(get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i42.SingleAdvertisementBloc>(
      () => _i42.SingleAdvertisementBloc(get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i43.SingleReservationBloc>(() => _i43.SingleReservationBloc(
      get<_i19.IReservationFacade>(), get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i44.SmsCodeFormBloc>(
      () => _i44.SmsCodeFormBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i45.SplashBloc>(() => _i45.SplashBloc());
  gh.factory<_i46.SummaryBloc>(
      () => _i46.SummaryBloc(get<_i19.IReservationFacade>()));
  gh.factory<_i47.SummaryReservationsBloc>(
      () => _i47.SummaryReservationsBloc(get<_i19.IReservationFacade>()));
  gh.factory<_i48.AdDetailBloc>(
      () => _i48.AdDetailBloc(get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i49.AddProductBloc>(
      () => _i49.AddProductBloc(get<_i17.IProductFacade>()));
  gh.factory<_i50.AdvertisementsBloc>(
      () => _i50.AdvertisementsBloc(get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i51.AdvertiserBloc>(
      () => _i51.AdvertiserBloc(get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i52.BuyerMenuBloc>(
      () => _i52.BuyerMenuBloc(get<_i19.IReservationFacade>()));
  gh.factory<_i53.CartBloc>(() => _i53.CartBloc(
      get<_i19.IReservationFacade>(), get<_i7.IAdvertisementsFacade>()));
  gh.factory<_i54.ChatBloc>(() => _i54.ChatBloc(get<_i11.IChatFacade>()));
  gh.factory<_i55.ChatListBloc>(
      () => _i55.ChatListBloc(get<_i11.IChatFacade>()));
  gh.factory<_i56.EditProfileBloc>(
      () => _i56.EditProfileBloc(get<_i9.IAuthFacade>()));
  gh.factory<_i57.GroupBloc>(
      () => _i57.GroupBloc(get<_i7.IAdvertisementsFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends _i58.FirebaseInjectableModule {}
