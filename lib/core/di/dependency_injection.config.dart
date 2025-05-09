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
import '../../cubits/home/home_cubit.dart' as _i196;
import '../../cubits/portfolio/portfolio_cubit.dart' as _i453;
import '../../cubits/profile/profile_cubit.dart' as _i1056;
import '../../cubits/review/review_cubit.dart' as _i668;
import '../../cubits/service/service_cubit.dart' as _i327;
import '../../data/repositories/auth_repository.dart' as _i481;
import '../../data/repositories/content_repository.dart' as _i785;
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
  gh.lazySingleton<_i785.ContentRepository>(
      () => _i785.ContentRepository(apiClient: gh<_i277.ApiClient>()));
  gh.lazySingletonAsync<_i481.AuthRepository>(() {
    final i = _i481.AuthRepository(gh<_i277.ApiClient>());
    return i.init().then((_) => i);
  });
  gh.lazySingleton<_i196.HomeCubit>(
      () => _i196.HomeCubit(contentRepository: gh<_i785.ContentRepository>()));
  gh.lazySingleton<_i668.ReviewCubit>(() =>
      _i668.ReviewCubit(contentRepository: gh<_i785.ContentRepository>()));
  gh.lazySingleton<_i453.PortfolioCubit>(() =>
      _i453.PortfolioCubit(contentRepository: gh<_i785.ContentRepository>()));
  gh.lazySingleton<_i327.ServiceCubit>(() =>
      _i327.ServiceCubit(contentRepository: gh<_i785.ContentRepository>()));
  gh.lazySingletonAsync<_i971.ProfileRepository>(
      () async => _i971.ProfileRepository(
            apiClient: gh<_i277.ApiClient>(),
            authRepository: await gh.getAsync<_i481.AuthRepository>(),
          ));
  gh.lazySingletonAsync<_i685.AuthCubit>(() async {
    final i = _i685.AuthCubit(
        authRepository: await gh.getAsync<_i481.AuthRepository>());
    return i.checkAuthStatus().then((_) => i);
  });
  gh.lazySingletonAsync<_i1056.ProfileCubit>(() async => _i1056.ProfileCubit(
      profileRepository: await gh.getAsync<_i971.ProfileRepository>()));
  return getIt;
}
