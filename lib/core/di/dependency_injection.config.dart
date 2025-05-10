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

import '../../cubits/auth/auth_cubit.dart' as _i685;
import '../../cubits/availability/availability_cubit.dart' as _i291;
import '../../cubits/order/order_cubit.dart' as _i184;
import '../../cubits/order_detail/order_detail_cubit.dart' as _i865;
import '../../cubits/order_form/order_form_cubit.dart' as _i702;
import '../../cubits/payment_detail/payment_detail_cubit.dart' as _i807;
import '../../cubits/portfolio/portfolio_cubit.dart' as _i453;
import '../../cubits/profile/profile_cubit.dart' as _i1056;
import '../../cubits/review/review_cubit.dart' as _i668;
import '../../cubits/service/service_cubit.dart' as _i327;
import '../../cubits/team/team_cubit.dart' as _i22;
import '../../data/repositories/auth_repository.dart' as _i481;
import '../../data/repositories/availability_repository.dart' as _i798;
import '../../data/repositories/content_repository.dart' as _i785;
import '../../data/repositories/order_repository.dart' as _i893;
import '../../data/repositories/payment_repository.dart' as _i753;
import '../../data/repositories/profile_repository.dart' as _i971;
import '../api/api_client.dart' as _i277;

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
  gh.lazySingleton<_i893.OrderRepository>(
      () => _i893.OrderRepository(apiClient: gh<_i277.ApiClient>()));
  gh.lazySingleton<_i798.AvailabilityRepository>(
      () => _i798.AvailabilityRepository(apiClient: gh<_i277.ApiClient>()));
  gh.lazySingleton<_i753.PaymentRepository>(
      () => _i753.PaymentRepository(apiClient: gh<_i277.ApiClient>()));
  gh.lazySingleton<_i785.ContentRepository>(
      () => _i785.ContentRepository(apiClient: gh<_i277.ApiClient>()));
  gh.factory<_i807.PaymentDetailCubit>(() =>
      _i807.PaymentDetailCubit(orderRepository: gh<_i893.OrderRepository>()));
  gh.factory<_i702.OrderFormCubit>(
      () => _i702.OrderFormCubit(orderRepository: gh<_i893.OrderRepository>()));
  gh.factory<_i865.OrderDetailCubit>(() =>
      _i865.OrderDetailCubit(orderRepository: gh<_i893.OrderRepository>()));
  gh.lazySingleton<_i184.OrderCubit>(
      () => _i184.OrderCubit(orderRepository: gh<_i893.OrderRepository>()));
  gh.lazySingleton<_i481.AuthRepository>(
      () => _i481.AuthRepository(gh<_i277.ApiClient>()));
  gh.lazySingleton<_i291.AvailabilityCubit>(() => _i291.AvailabilityCubit(
      availabilityRepository: gh<_i798.AvailabilityRepository>()));
  gh.lazySingleton<_i22.TeamCubit>(
      () => _i22.TeamCubit(contentRepository: gh<_i785.ContentRepository>()));
  gh.lazySingleton<_i668.ReviewCubit>(() =>
      _i668.ReviewCubit(contentRepository: gh<_i785.ContentRepository>()));
  gh.lazySingleton<_i453.PortfolioCubit>(() =>
      _i453.PortfolioCubit(contentRepository: gh<_i785.ContentRepository>()));
  gh.lazySingleton<_i327.ServiceCubit>(() =>
      _i327.ServiceCubit(contentRepository: gh<_i785.ContentRepository>()));
  gh.lazySingleton<_i971.ProfileRepository>(() => _i971.ProfileRepository(
        apiClient: gh<_i277.ApiClient>(),
        authRepository: gh<_i481.AuthRepository>(),
      ));
  gh.lazySingleton<_i685.AuthCubit>(
      () => _i685.AuthCubit(authRepository: gh<_i481.AuthRepository>()));
  gh.lazySingleton<_i1056.ProfileCubit>(() =>
      _i1056.ProfileCubit(profileRepository: gh<_i971.ProfileRepository>()));
  return getIt;
}
