import 'package:dio/dio.dart';
import 'package:narxoz/src/core/error/excepteion.dart';
import 'package:narxoz/src/core/network/dio_wrapper.dart';
import 'package:narxoz/src/core/network/network_helper.dart';
import 'package:narxoz/src/feautures/home/data/model/schedule_dto.dart';
import 'package:narxoz/src/feautures/home/data/model/task_dto.dart';

abstract class HomeRemoteDS {
  Future<List<ScheduleDTO>> getSchedule();

  Future<List<TaskDTO>> getObjects();

  Future<List<TaskDTO>> getAssessments({
    required String name,
  });
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
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<List<TaskDTO>> getObjects() async {
    try {
      final response = await dio.get(
        EndPoints.assessments,
      );

      return (response.data as List).map((e) => TaskDTO.fromJson(e as Map<String, dynamic>)).toList();
    } on DioError catch (e) {
      throw ServerException(
        message: (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<List<TaskDTO>> getAssessments({required String name}) async {
    try {
      final response = await dio.get(
        EndPoints.assessmentsDetail(name),
      );

      return (response.data as List).map((e) => TaskDTO.fromJson(e as Map<String, dynamic>)).toList();
    } on DioError catch (e) {
      throw ServerException(
        message: (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
