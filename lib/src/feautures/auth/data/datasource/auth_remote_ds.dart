import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:narxoz/src/core/error/excepteion.dart';
import 'package:narxoz/src/core/network/dio_wrapper.dart';
import 'package:narxoz/src/core/network/network_helper.dart';
import 'package:narxoz/src/feautures/auth/data/model/user_dto.dart';
import 'package:narxoz/src/feautures/home/data/model/banner_dto.dart';

const _tag = 'AuthRemoteDS';

abstract class AuthRemoteDS {
  Future<String> login({
    required String login,
    required String password,
    required String deviceToken,
  });

  Future<String> logOut();

  Future<UserDTO> getProfile();

  Future<List<BannerDTO>> getBanners();
}

class AuthRemoteDSImpl extends AuthRemoteDS {
  late final Dio dio;
  final DioWrapper dioWrapper;
  AuthRemoteDSImpl(this.dioWrapper) {
    // dioWrapper.path('');
    dio = dioWrapper.dio;
  }

  @override
  Future<String> login({
    required String login,
    required String password,
    required String deviceToken,
  }) async {
    try {
      final response = await dio.post(
        EndPoints.login,
        data: {
          'email': login,
          'password': password,
          'device_token': deviceToken,
        },
      );

      return (response.data as Map<String, dynamic>)['token'] as String;
    } on DioError catch (e) {
      throw ServerException(
        message: (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    }
  }

  @override
  Future<String> logOut() async {
    try {
      final response = await dio.post(
        EndPoints.logout,
      );

      if (response.statusCode == 200 || response.statusCode == 204) {
        return 'Success';
      } else {
        return 'Some bugs';
      }
    } on DioError catch (e) {
      log('##### logOut api error::: ${e.response}, ${e.error}', name: _tag);
      throw ServerException(
        message: (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    }
  }

  @override
  Future<UserDTO> getProfile() async {
    try {
      final response = await dio.get(
        EndPoints.profile,
      );

      return UserDTO.fromJson(response.data as Map<String, dynamic>);
    } on DioError catch (e) {
      throw ServerException(
        message: (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    }
  }

  @override
  Future<List<BannerDTO>> getBanners() async {
    try {
      final response = await dio.get(
        EndPoints.banners,
      );

      return (response.data as List).map((e) => BannerDTO.fromJson(e as Map<String, dynamic>)).toList();
    } on DioError catch (e) {
      throw ServerException(
        message: (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    }
  }
}
