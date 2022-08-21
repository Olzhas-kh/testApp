import 'package:dartz/dartz.dart';
import 'package:narxoz/src/core/error/excepteion.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/core/network/network_info.dart';
import 'package:narxoz/src/core/resources/constants.dart';
import 'package:narxoz/src/feautures/home/data/datasource/hostel_remote_ds.dart';
import 'package:narxoz/src/feautures/home/data/model/hostel_info_dto.dart';

abstract class HostelRepository {
  Future<Either<Failure, HostelInfoDTO>> getInfo();
}

class HostelRepositoryImpl extends HostelRepository {
  final HostelRemoteDS remoteDs;
  // final AuthLocalDS authLocalDS;
  final NetworkInfo networkInfo;

  HostelRepositoryImpl({
    required this.remoteDs,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, HostelInfoDTO>> getInfo() async {
    if (await networkInfo.isConnected) {
      try {
        final HostelInfoDTO section = await remoteDs.getInfo();

        return Right(section);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    } else {
      return Left(ServerFailure(message: NO_INTERNET_TEXT));
    }
  }
}
