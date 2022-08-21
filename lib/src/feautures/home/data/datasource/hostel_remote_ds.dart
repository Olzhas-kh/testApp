import 'package:dio/dio.dart';
import 'package:narxoz/src/core/error/excepteion.dart';
import 'package:narxoz/src/core/network/dio_wrapper.dart';
import 'package:narxoz/src/core/network/network_helper.dart';
import 'package:narxoz/src/feautures/home/data/model/hostel_info_dto.dart';

abstract class HostelRemoteDS {
  Future<HostelInfoDTO> getInfo();
}

class HostelRemoteDSImpl extends HostelRemoteDS {
  late final Dio dio;
  final DioWrapper dioWrapper;
  HostelRemoteDSImpl(this.dioWrapper) {
    // dioWrapper.path('');
    dio = dioWrapper.dio;
  }

  @override
  Future<HostelInfoDTO> getInfo() async {
    try {
      final response = await dio.get(
        EndPoints.dormitoriesInfo,
      );

      return HostelInfoDTO.fromJson(response.data as Map<String, dynamic>);
    } on DioError catch (e) {
      throw ServerException(
        message:
            (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    }
  }
}
