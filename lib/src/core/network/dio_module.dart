// ignore_for_file: avoid_classes_with_only_static_members

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:package_info_plus/package_info_plus.dart';
// import 'package:zam_zam_bloc/src/core/constants/environment.dart';
// import 'package:zam_zam_bloc/src/core/model/user_repository.dart';
// import 'package:zam_zam_bloc/src/core/network/interceptors/custom_log_interceptor.dart';
// import 'package:zam_zam_bloc/src/core/network/interceptors/log_out_interceptor.dart';

/// Creates new `Dio` instance
@sealed
class DioModule {
  DioModule._();

  /// Конфигурация Dio
  static Dio configureDio(
    // IUserRepository userRepository,
    // PackageInfo packageInfo,
  ) {
    final dio = Dio();
    dio
      // ..options.baseUrl = kBaseUrl
      ..options.headers.addAll({
        'accept': 'application/json',
        // 'version': packageInfo.version,
      })
      ..interceptors.addAll([
        // LogOutInterceptor(userRepository),
        // CustomLogInterceptor(),
      ]);

    return dio;
  }
}
