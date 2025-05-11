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
import '../../cubits/order/order_cubit.dart' as _i184;
import '../../cubits/order_detail/order_detail_cubit.dart' as _i865;
import '../../cubits/order_form/order_form_cubit.dart' as _i702;
import '../../cubits/payment_detail/payment_detail_cubit.dart' as _i807;
import '../../cubits/payment_history/payment_history_cubit.dart' as _i1060;
import '../../cubits/payment_method/payment_method_cubit.dart' as _i90;
import '../../pages/portfolio/cubit/portfolio_cubit.dart' as _i453;
import '../../cubits/profile/profile_cubit.dart' as _i1056;
import '../../cubits/review/review_cubit.dart' as _i668;
import '../../cubits/service/service_cubit.dart' as _i327;
import '../../pages/auth/cubit/auth_cubit.dart' as _i297;
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
  gh.lazySingleton<_i90.PaymentMethodCubit>(() => _i90.PaymentMethodCubit(
        orderRepository: gh<_i344.OrderRepository>(),
        paymentRepository: gh<_i771.PaymentRepository>(),
      ));
  gh.lazySingleton<_i1002.AuthRepository>(
      () => _i1002.AuthRepository(gh<_i277.ApiClient>()));
  gh.lazySingleton<_i807.PaymentDetailCubit>(() => _i807.PaymentDetailCubit(
        paymentRepository: gh<_i771.PaymentRepository>(),
        orderRepository: gh<_i344.OrderRepository>(),
      ));
  gh.lazySingleton<_i291.AvailabilityCubit>(() => _i291.AvailabilityCubit(
      availabilityRepository: gh<_i609.AvailabilityRepository>()));
  gh.lazySingleton<_i668.ReviewCubit>(() =>
      _i668.ReviewCubit(contentRepository: gh<_i739.ContentRepository>()));
  gh.lazySingleton<_i453.PortfolioCubit>(() =>
      _i453.PortfolioCubit(contentRepository: gh<_i739.ContentRepository>()));
  gh.lazySingleton<_i327.ServiceCubit>(() =>
      _i327.ServiceCubit(contentRepository: gh<_i739.ContentRepository>()));
  gh.lazySingleton<_i474.TimCubit>(
      () => _i474.TimCubit(contentRepository: gh<_i739.ContentRepository>()));
  gh.factory<_i1060.PaymentHistoryCubit>(() => _i1060.PaymentHistoryCubit(
      paymentRepository: gh<_i771.PaymentRepository>()));
  gh.lazySingleton<_i184.OrderCubit>(
      () => _i184.OrderCubit(orderRepository: gh<_i344.OrderRepository>()));
  gh.factory<_i702.OrderFormCubit>(
      () => _i702.OrderFormCubit(orderRepository: gh<_i344.OrderRepository>()));
  gh.factory<_i865.OrderDetailCubit>(() =>
      _i865.OrderDetailCubit(orderRepository: gh<_i344.OrderRepository>()));
  gh.lazySingleton<_i297.AuthCubit>(
      () => _i297.AuthCubit(authRepository: gh<_i1002.AuthRepository>()));
  gh.lazySingleton<_i210.ProfileRepository>(() => _i210.ProfileRepository(
        apiClient: gh<_i277.ApiClient>(),
        authRepository: gh<_i1002.AuthRepository>(),
      ));
  gh.lazySingleton<_i1056.ProfileCubit>(() =>
      _i1056.ProfileCubit(profileRepository: gh<_i210.ProfileRepository>()));
  return getIt;
}
