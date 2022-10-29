import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:narxoz/src/core/network/dio_wrapper.dart';
import 'package:narxoz/src/core/network/network_info.dart';
import 'package:narxoz/src/feautures/app/bloc/app_bloc.dart';
import 'package:narxoz/src/feautures/app/logic/not_auth_logic.dart';
import 'package:narxoz/src/feautures/app/router/app_router.dart';
import 'package:narxoz/src/feautures/auth/data/datasource/auth_local_ds.dart';
import 'package:narxoz/src/feautures/auth/data/datasource/auth_remote_ds.dart';
import 'package:narxoz/src/feautures/auth/data/repository/auth_repository.dart';
import 'package:narxoz/src/feautures/auth/presentation/bloc/sign_in_cubit.dart';
import 'package:narxoz/src/feautures/home/data/datasource/help_section_remote_ds.dart';
import 'package:narxoz/src/feautures/home/data/datasource/home_remote_ds.dart';
import 'package:narxoz/src/feautures/home/data/datasource/hostel_remote_ds.dart';
import 'package:narxoz/src/feautures/home/data/repository/help_section_repository.dart';
import 'package:narxoz/src/feautures/home/data/repository/home_repository.dart';
import 'package:narxoz/src/feautures/home/data/repository/hostel_repository.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/application_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/application_verify_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/assessment_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/banners_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/choose_edu_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/dorm_card_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/help_section_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/help_section_detail_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/hostel_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/my_application_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/schedule_cubit.dart';
import 'package:narxoz/src/feautures/home/presentation/bloc/tasks_cubit.dart';
import 'package:narxoz/src/feautures/notifications/bloc/notification_bloc.dart';
import 'package:narxoz/src/feautures/profile/presentation/bloc/profile_cubit.dart';
import 'package:narxoz/src/feautures/sections/data/datasource/student_remote_ds.dart';
import 'package:narxoz/src/feautures/sections/data/repository/student_repository.dart';
import 'package:narxoz/src/feautures/sections/presentation/bloc/documents_cubit.dart';
import 'package:narxoz/src/feautures/sections/presentation/bloc/students_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

Future<void> initLocator() async {
  // BLoC / Cubit
  sl.registerFactory(
    () => AppBloc(
      sl(),
      sl(),
      // sl(),
      // sl(),
      // sl(),
    ),
  );

  sl.registerFactory(() => NotificationBloc());
  sl.registerFactory(() => SignInCubit(sl()));
  sl.registerFactory(() => HelpSectionCubit(sl()));
  sl.registerFactory(() => HelpSectionDetailCubit(sl()));
  sl.registerFactory(() => HostelCubit(sl()));
  sl.registerFactory(() => ChooseEduCubit(sl()));
  sl.registerFactory(() => ApplicationCubit(sl()));
  sl.registerFactory(() => MyApplicationCubit(sl()));
  sl.registerFactory(() => ApplicationVerifyCubit(sl()));
  sl.registerFactory(() => DormCardCubit(sl()));
  // sl.registerFactory(() => DormCardVerifyCubit(sl()));
  sl.registerFactory(() => ProfileCubit(sl()));
  sl.registerFactory(() => BannersCubit(sl()));
  sl.registerFactory(() => StudentsCubit(sl()));
  sl.registerFactory(() => DocumentsCubit(sl()));
  sl.registerFactory(() => ScheduleCubit(sl()));
  sl.registerFactory(() => TasksCubit(sl()));
  sl.registerFactory(() => AssessmentsCubit(sl()));

  ///
  ///
  /// Core
  sl.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImp(sl()),
  );
  sl.registerLazySingleton<NotAuthLogic>(
    () => NotAuthLogic(),
  );

  ///
  ///
  /// Repository
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      localDS: sl(),
      remoteDS: sl(),
      networkInfo: sl(),
    ),
  );
  sl.registerLazySingleton<HelpSectionRepository>(
    () => HelpSectionRepositoryImpl(
      networkInfo: sl(),
      remoteDs: sl(),
    ),
  );
  sl.registerLazySingleton<HostelRepository>(
    () => HostelRepositoryImpl(
      networkInfo: sl(),
      remoteDs: sl(),
      // newAdRemoteDS: sl(),
    ),
  );
  sl.registerLazySingleton<StudentRepository>(
    () => StudentRepositoryImpl(
      networkInfo: sl(),
      remoteDs: sl(),
      // newAdRemoteDS: sl(),
    ),
  );
  sl.registerLazySingleton<HomeRepository>(
    () => HomeRepositoryImpl(
      networkInfo: sl(),
      remoteDs: sl(),
    ),
  );

  ///
  ///
  /// DS
  sl.registerLazySingleton<AuthRemoteDS>(
    () => AuthRemoteDSImpl(sl()),
  );
  sl.registerLazySingleton<HelpSectionRemoteDS>(
    () => HelpSectionRemoteDSImpl(sl()),
  );
  sl.registerLazySingleton<HostelRemoteDS>(
    () => HostelRemoteDSImpl(sl()),
  );
  sl.registerLazySingleton<StudentRemoteDS>(
    () => StudentRemoteDSImpl(sl()),
  );
  sl.registerLazySingleton<HomeRemoteDS>(
    () => HomeRemoteDSImpl(sl()),
  );

  ///
  ///
  /// LS
  sl.registerLazySingleton<AuthLocalDS>(
    () => AuthLocalDSImpl(sharedPreferences: sl()),
  );

  ///
  ///
  /// External
  final sharedPreferences = await SharedPreferences.getInstance();
  sl.registerLazySingleton(() => sharedPreferences);
  sl.registerLazySingleton(() => Dio());
  sl.registerLazySingleton(() => DioWrapper(sl()));
  sl.registerLazySingleton(() => InternetConnectionChecker());

  ///
  ///
  /// Internal
  sl.registerLazySingleton(() => AppRouter());
  // sl.registerLazySingleton(() => AppLocalizations());
}
