import 'package:dio/dio.dart';
import 'package:narxoz/src/core/error/excepteion.dart';
import 'package:narxoz/src/core/network/dio_wrapper.dart';
import 'package:narxoz/src/core/network/network_helper.dart';

abstract class AuthRemoteDS {
  Future<String> login({
    required String login,
    required String password,
  });
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
  }) async {
    try {
      final response = await dio.post(
        EndPoints.login,
        data: {
          'email': login,
          'password': password,
        },
      );

      return (response.data as Map<String, dynamic>)['token'] as String;
    } on DioError catch (e) {
      throw ServerException(
        message: (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    }
  }
}
