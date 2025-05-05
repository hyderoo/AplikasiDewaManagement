// lib/core/di/dependency_injection.dart
import 'package:dewa_wo_app/core/api/api_client.dart';
import 'package:dewa_wo_app/cubits/auth/auth_cubit.dart';
import 'package:dewa_wo_app/cubits/home/home_cubit.dart';
import 'package:dewa_wo_app/cubits/profile/profile_cubit.dart';
import 'package:dewa_wo_app/cubits/portfolio/portfolio_cubit.dart';
import 'package:dewa_wo_app/cubits/review/review_cubit.dart';
import 'package:dewa_wo_app/cubits/service/service_cubit.dart';
import 'package:dewa_wo_app/data/repositories/auth_repository.dart';
import 'package:dewa_wo_app/data/repositories/content_repository.dart';
import 'package:dewa_wo_app/data/repositories/profile_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

final getIt = GetIt.instance;

Future<void> initDependencies() async {
  // Initialize Hive
  final appDocumentDir = await getApplicationDocumentsDirectory();
  await Hive.initFlutter(appDocumentDir.path);

  // Register API Client
  getIt.registerLazySingleton<ApiClient>(() => ApiClient());

  // Register Auth Repository
  getIt.registerLazySingleton<AuthRepository>(() => AuthRepository(
        apiClient: getIt<ApiClient>(),
      ));

  // Initialize Auth Repository
  await getIt<AuthRepository>().init();

  getIt.registerLazySingleton<ContentRepository>(() => ContentRepository(
        apiClient: getIt<ApiClient>(),
      ));

  // Register Profile Repository
  getIt.registerLazySingleton<ProfileRepository>(() => ProfileRepository(
        apiClient: getIt<ApiClient>(),
        authRepository: getIt<AuthRepository>(),
      ));

  // Register Auth Cubit
  getIt.registerLazySingleton<AuthCubit>(() => AuthCubit(
        authRepository: getIt<AuthRepository>(),
      ));

  // Initialize Auth Cubit
  await getIt<AuthCubit>().checkAuthStatus();

  // Register Profile Cubit
  getIt.registerFactory<ProfileCubit>(() => ProfileCubit(
        profileRepository: getIt<ProfileRepository>(),
      ));

  // Register Content Cubits
  getIt.registerFactory<PortfolioCubit>(() => PortfolioCubit(
        contentRepository: getIt<ContentRepository>(),
      ));

  getIt.registerFactory<ServiceCubit>(() => ServiceCubit(
        contentRepository: getIt<ContentRepository>(),
      ));

  getIt.registerFactory<ReviewCubit>(() => ReviewCubit(
        contentRepository: getIt<ContentRepository>(),
      ));

  getIt.registerFactory<HomeCubit>(() => HomeCubit(
        contentRepository: getIt<ContentRepository>(),
      ));
}
