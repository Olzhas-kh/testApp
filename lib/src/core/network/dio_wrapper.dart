// ignore_for_file: avoid_redundant_argument_values

import 'dart:io';

import 'package:dio/dio.dart';
import 'package:narxoz/src/core/network/network_helper.dart';
import 'package:narxoz/src/core/services/locator_service.dart';
import 'package:narxoz/src/feautures/app/logic/not_auth_logic.dart';
import 'package:narxoz/src/feautures/auth/data/datasource/auth_local_ds.dart';
import 'package:narxoz/src/feautures/auth/data/model/user_dto.dart';

import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioWrapper {
  final AuthLocalDS _authLocalDS;

  Dio dio = Dio(
    BaseOptions(
      baseUrl: EndPoints.devBaseUrl, //.baseUrl, //.devBaseUrl,
      headers: {
        'Content-Language': 'ru', //default
      },
    ),
  );

  Dio get instance => dio;

  // void path(String path) {
  //   dio = Dio(
  //     BaseOptions(
  //       baseUrl: EndPoints.baseUrl + path.trim(),
  //       headers: {
  //         'Content-Language': 'ru', //default
  //       },
  //     ),
  //   )..interceptors.addAll([
  //       _NarxozDioInterceptor(_authLocalDS),
  //       // LogInterceptor(
  //       //   request: true,
  //       //   requestBody: true,
  //       //   requestHeader: true,
  //       //   responseBody: true,
  //       //   responseHeader: false,
  //       //   error: true,
  //       // ),
  //       PrettyDioLogger(
  //         requestHeader: true,
  //         requestBody: true,
  //         responseBody: true,
  //         responseHeader: false,
  //         compact: true,
  //       ),
  //     ]);
  // }

  void changeLang(String lang) {
    dio.options.headers['Content-Language'] = lang;
  }

  DioWrapper(this._authLocalDS) {
    dio.interceptors.addAll([
      _NarxozDioInterceptor(_authLocalDS),
      PrettyDioLogger(
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: false,
        compact: false,
      ),
      // LogInterceptor(
      //   request: true,
      //   requestBody: true,
      //   requestHeader: true,
      //   responseBody: true,
      //   responseHeader: false,
      //   error: true,
      // ),
    ]);
  }
}

class _NarxozDioInterceptor extends Interceptor {
  final AuthLocalDS _authLocalDS;
  _NarxozDioInterceptor(this._authLocalDS);

  Dio dio = Dio(BaseOptions(baseUrl: EndPoints.baseUrl));

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    final UserDTO? user = _authLocalDS.getUserFromCacheNull();
    if (user != null && user.token != null) {
      options.headers['Authorization'] = 'Bearer ${user.token}';
    }
    options.headers['Accept'] = "application/json";
    // options.headers['Content-Language'] = 'ru';
    super.onRequest(options, handler);
  }

  @override
  Future onError(
    DioError err,
    ErrorInterceptorHandler handler,
  ) async {
    sl<NotAuthLogic>().statusSubject.add(err.response?.statusCode ?? 0);

    if ((err.response?.statusCode ?? 0) == HttpStatus.unauthorized) {
      // try {
      //   // await refreshToken();
      // } on DioError {
      //   rethrow;
      // }
    } else if ((err.response?.statusCode ?? 0) == HttpStatus.unprocessableEntity) {
      // try {
      //   await refreshToken();
      // } on DioError catch (e) {
      //   throw e;
      // }
    } else if ((err.response?.statusCode ?? 0) == HttpStatus.notFound) {
      // getIt<NotFoundLogic>().statusSubject.add(404);
    }
    return super.onError(err, handler);
  }
}
