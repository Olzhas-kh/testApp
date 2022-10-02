import 'package:dio/dio.dart';
import 'package:narxoz/src/core/error/excepteion.dart';
import 'package:narxoz/src/core/network/dio_wrapper.dart';
import 'package:narxoz/src/core/network/network_helper.dart';
import 'package:narxoz/src/feautures/home/data/model/schedule_dto.dart';

abstract class HomeRemoteDS {
  Future<List<ScheduleDTO>> getSchedule();
}

class HomeRemoteDSImpl extends HomeRemoteDS {
  late final Dio dio;
  final DioWrapper dioWrapper;
  HomeRemoteDSImpl(this.dioWrapper) {
    // dioWrapper.path('');
    dio = dioWrapper.dio;
  }

  @override
  Future<List<ScheduleDTO>> getSchedule() async {
    try {
      final response = await dio.get(
        EndPoints.schedules,
      );

      return (response.data as List).map((e) => ScheduleDTO.fromJson(e as Map<String, dynamic>)).toList();
    } on DioError catch (e) {
      throw ServerException(
        message: (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    } catch(e) {
      throw ServerException(message: e.toString());
    }
  }
}
