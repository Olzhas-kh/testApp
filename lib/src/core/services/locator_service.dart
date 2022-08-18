import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:narxoz/src/feautures/app/bloc/app_bloc.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.g.dart';

final sl = GetIt.instance;

Future<void> initLocator() async {
  // BLoC / Cubit
  sl.registerFactory(
    () => AppBloc(
        // sl(),
        // sl(),
        // sl(),
        // sl(),
        // sl(),
        ),
  );
  // sl.registerFactory(() => SignInCubit(sl()));
  // sl.registerFactory(() => CategoryCubit(sl()));
  // sl.registerFactory(() => CategoryNameCubit(sl()));
  // sl.registerFactory(() => CityCubit(sl()));
  // sl.registerFactory(() => RegionCubit(sl()));
  // sl.registerFactory(() => CountryCubit(sl()));
  // sl.registerFactory(() => ProfileCubit(sl()));

  ///
  ///
  /// Core
  // sl.registerLazySingleton<NetworkInfo>(
  //   () => NetworkInfoImp(sl()),
  // );

  ///
  ///
  /// Repository
  // sl.registerLazySingleton<AuthRepository>(
  //   () => AuthRepositoryImpl(
  //     localDS: sl(),
  //     remoteDS: sl(),
  //     networkInfo: sl(),
  //   ),
  // );
  // sl.registerLazySingleton<NewAdRepository>(
  //   () => NewAdRepositoryImpl(
  //     networkInfo: sl(),
  //     authLocalDS: sl(),
  //     newAdRemoteDS: sl(),
  //   ),
  // );
  // sl.registerLazySingleton<AddressRepository>(
  //   () => AddressRepositoryImpl(
  //     networkInfo: sl(),
  //     authLocalDS: sl(),
  //     addressRemoteDs: sl(),
  //   ),
  // );

  ///
  ///
  /// DS
  // sl.registerLazySingleton<AuthRemoteDS>(
  //   () => AuthRemoteDsImpl(sl()),
  // );
  // sl.registerLazySingleton<NewAdRemoteDs>(
  //   () => NewAdRemoteDsImpl(sl()),
  // );
  // sl.registerLazySingleton<AddressRemoteDs>(
  //   () => AddressRemoteDsImpl(sl()),
  // );

  ///
  ///
  /// LS
  // sl.registerLazySingleton<AuthLocalDS>(
  //   () => AuthLocalDSImpl(sharedPreferences: sl()),
  // );

  ///
  ///
  /// External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => Dio());
  // sl.registerLazySingleton(() => DioWrapper(sl()));
  sl.registerLazySingleton(() => InternetConnectionChecker());

  ///
  ///
  /// Internal
  sl.registerLazySingleton(() => AppRouter());
  // sl.registerLazySingleton(() => AppLocalizations());
}
