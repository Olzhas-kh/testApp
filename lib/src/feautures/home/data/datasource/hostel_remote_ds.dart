import 'package:dio/dio.dart';
import 'package:narxoz/src/core/network/dio_wrapper.dart';

abstract class HostelRemoteDS {}

class HostelRemoteDSImpl extends HostelRemoteDS {
  late final Dio dio;
  final DioWrapper dioWrapper;
  HostelRemoteDSImpl(this.dioWrapper) {
    dioWrapper.path('');
    dio = dioWrapper.dio;
  }
}
