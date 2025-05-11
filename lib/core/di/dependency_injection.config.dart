// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../cubits/availability/availability_cubit.dart' as _i291;
import '../../cubits/custom_features/custom_features_cubit.dart' as _i397;
import '../../cubits/review/review_cubit.dart' as _i668;
import '../../pages/akun/cubit/profile_cubit.dart' as _i680;
import '../../pages/auth/cubit/auth_cubit.dart' as _i297;
import '../../pages/layanan/cubit/service_cubit.dart' as _i860;
import '../../pages/pesanan/detail/cubit/order_detail_cubit.dart' as _i1009;
import '../../pages/pesanan/form/cubit/order_form_cubit.dart' as _i9;
import '../../pages/pesanan/form/custom/cubit/custom_order_form_cubit.dart'
    as _i194;
import '../../pages/pesanan/list/cubit/order_cubit.dart' as _i582;
import '../../pages/pesanan/pembayaran/detail/cubit/payment_detail_cubit.dart'
    as _i675;
import '../../pages/pesanan/pembayaran/history/cubit/payment_history_cubit.dart'
    as _i231;
import '../../pages/pesanan/pembayaran/method/cubit/payment_method_cubit.dart'
    as _i492;
import '../../pages/portfolio/cubit/portfolio_cubit.dart' as _i239;
import '../../pages/tim/cubit/tim_cubit.dart' as _i474;
import '../api/api_client.dart' as _i277;
import '../repositories/auth_repository.dart' as _i1002;
import '../repositories/availability_repository.dart' as _i609;
import '../repositories/content_repository.dart' as _i739;
import '../repositories/order_repository.dart' as _i344;
import '../repositories/payment_repository.dart' as _i771;
import '../repositories/profile_repository.dart' as _i210;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt init(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i277.ApiClient>(() => _i277.ApiClient());
  gh.lazySingleton<_i344.OrderRepository>(
      () => _i344.OrderRepository(apiClient: gh<_i277.ApiClient>()));
  gh.lazySingleton<_i609.AvailabilityRepository>(
      () => _i609.AvailabilityRepository(apiClient: gh<_i277.ApiClient>()));
  gh.lazySingleton<_i771.PaymentRepository>(
      () => _i771.PaymentRepository(apiClient: gh<_i277.ApiClient>()));
  gh.lazySingleton<_i739.ContentRepository>(
      () => _i739.ContentRepository(apiClient: gh<_i277.ApiClient>()));
  gh.lazySingleton<_i492.PaymentMethodCubit>(() => _i492.PaymentMethodCubit(
        orderRepository: gh<_i344.OrderRepository>(),
        paymentRepository: gh<_i771.PaymentRepository>(),
      ));
  gh.lazySingleton<_i1002.AuthRepository>(
      () => _i1002.AuthRepository(gh<_i277.ApiClient>()));
  gh.lazySingleton<_i675.PaymentDetailCubit>(() => _i675.PaymentDetailCubit(
        paymentRepository: gh<_i771.PaymentRepository>(),
        orderRepository: gh<_i344.OrderRepository>(),
      ));
  gh.lazySingleton<_i291.AvailabilityCubit>(() => _i291.AvailabilityCubit(
      availabilityRepository: gh<_i609.AvailabilityRepository>()));
  gh.factory<_i397.CustomFeaturesCubit>(() => _i397.CustomFeaturesCubit(
      contentRepository: gh<_i739.ContentRepository>()));
  gh.lazySingleton<_i668.ReviewCubit>(() =>
      _i668.ReviewCubit(contentRepository: gh<_i739.ContentRepository>()));
  gh.lazySingleton<_i474.TimCubit>(
      () => _i474.TimCubit(contentRepository: gh<_i739.ContentRepository>()));
  gh.lazySingleton<_i239.PortfolioCubit>(() =>
      _i239.PortfolioCubit(contentRepository: gh<_i739.ContentRepository>()));
  gh.lazySingleton<_i860.ServiceCubit>(() =>
      _i860.ServiceCubit(contentRepository: gh<_i739.ContentRepository>()));
  gh.factory<_i231.PaymentHistoryCubit>(() => _i231.PaymentHistoryCubit(
      paymentRepository: gh<_i771.PaymentRepository>()));
  gh.lazySingleton<_i582.OrderCubit>(
      () => _i582.OrderCubit(orderRepository: gh<_i344.OrderRepository>()));
  gh.factory<_i9.OrderFormCubit>(
      () => _i9.OrderFormCubit(orderRepository: gh<_i344.OrderRepository>()));
  gh.factory<_i1009.OrderDetailCubit>(() =>
      _i1009.OrderDetailCubit(orderRepository: gh<_i344.OrderRepository>()));
  gh.factory<_i194.CustomOrderFormCubit>(() =>
      _i194.CustomOrderFormCubit(orderRepository: gh<_i344.OrderRepository>()));
  gh.lazySingleton<_i297.AuthCubit>(
      () => _i297.AuthCubit(authRepository: gh<_i1002.AuthRepository>()));
  gh.lazySingleton<_i210.ProfileRepository>(() => _i210.ProfileRepository(
        apiClient: gh<_i277.ApiClient>(),
        authRepository: gh<_i1002.AuthRepository>(),
      ));
  gh.lazySingleton<_i680.ProfileCubit>(() =>
      _i680.ProfileCubit(profileRepository: gh<_i210.ProfileRepository>()));
  return getIt;
}
