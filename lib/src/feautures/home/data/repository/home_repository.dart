import 'package:dartz/dartz.dart';
import 'package:narxoz/src/core/error/excepteion.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/core/network/network_info.dart';
import 'package:narxoz/src/core/resources/constants.dart';
import 'package:narxoz/src/feautures/home/data/datasource/home_remote_ds.dart';
import 'package:narxoz/src/feautures/home/data/model/schedule_dto.dart';
import 'package:narxoz/src/feautures/home/data/model/task_dto.dart';

abstract class HomeRepository {
  Future<Either<Failure, List<ScheduleDTO>>> getSchedule();

  Future<Either<Failure, List<TaskDTO>>> getObjects();

  Future<Either<Failure, List<TaskDTO>>> getAssessments({
    required String name,
  });
}

class HomeRepositoryImpl extends HomeRepository {
  final HomeRemoteDS remoteDs;
  // final AuthLocalDS authLocalDS;
  final NetworkInfo networkInfo;

  HomeRepositoryImpl({
    required this.remoteDs,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<ScheduleDTO>>> getSchedule() async {
    if (await networkInfo.isConnected) {
      try {
        final List<ScheduleDTO> schedules = await remoteDs.getSchedule();

        return Right(schedules);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    } else {
      return Left(ServerFailure(message: NO_INTERNET_TEXT));
    }
  }

  @override
  Future<Either<Failure, List<TaskDTO>>> getObjects() async {
    if (await networkInfo.isConnected) {
      try {
        final List<TaskDTO> objects = await remoteDs.getObjects();

        return Right(objects);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    } else {
      return Left(ServerFailure(message: NO_INTERNET_TEXT));
    }
  }

  @override
  Future<Either<Failure, List<TaskDTO>>> getAssessments({
    required String name,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final List<TaskDTO> assessments = await remoteDs.getAssessments(
          name: name,
        );

        return Right(assessments);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    } else {
      return Left(ServerFailure(message: NO_INTERNET_TEXT));
    }
  }
}
