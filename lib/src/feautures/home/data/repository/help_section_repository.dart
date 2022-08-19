import 'package:dartz/dartz.dart';
import 'package:narxoz/src/core/error/excepteion.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/core/network/network_info.dart';
import 'package:narxoz/src/core/resources/constants.dart';
import 'package:narxoz/src/feautures/home/data/datasource/help_section_remote_ds.dart';
import 'package:narxoz/src/feautures/home/data/datasource/hostel_remote_ds.dart';
import 'package:narxoz/src/feautures/home/data/model/help_section_dto.dart';

abstract class HelpSectionRepository {
  Future<Either<Failure, List<HelpSectionDTO>>> helpSections();

  Future<Either<Failure, HelpSectionDTO>> showDetailHelpSection({
    required int helpSectionId,
  });
}

class HelpSectionRepositoryImpl extends HelpSectionRepository {
  final HelpSectionRemoteDS remoteDs;
  // final AuthLocalDS authLocalDS;
  final NetworkInfo networkInfo;

  HelpSectionRepositoryImpl({
    required this.remoteDs,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<HelpSectionDTO>>> helpSections() async {
    if (await networkInfo.isConnected) {
      try {
        final List<HelpSectionDTO> sections = await remoteDs.helpSections();
        
        return Right(sections);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    } else {
      return Left(ServerFailure(message: NO_INTERNET_TEXT));
    }
  }

  @override
  Future<Either<Failure, HelpSectionDTO>> showDetailHelpSection({
    required int helpSectionId,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final HelpSectionDTO section = await remoteDs.showDetailHelpSection(
          helpSectionId: helpSectionId,
        );
        
        return Right(section);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    } else {
      return Left(ServerFailure(message: NO_INTERNET_TEXT));
    }
  }
}
