import 'package:dartz/dartz.dart';
import 'package:narxoz/src/core/error/excepteion.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/core/network/network_info.dart';
import 'package:narxoz/src/core/resources/constants.dart';
import 'package:narxoz/src/feautures/sections/data/datasource/student_remote_ds.dart';
import 'package:narxoz/src/feautures/sections/data/model/document_dto.dart';

abstract class StudentRepository {
  Future<Either<Failure, List<DocumentDTO>>> getDocumentCats();

  Future<Either<Failure, List<DocumentDTO>>> getDocuments({
    required int documentCatId,
  });
}

class StudentRepositoryImpl extends StudentRepository {
  final StudentRemoteDS remoteDs;
  // final AuthLocalDS authLocalDS;
  final NetworkInfo networkInfo;

  StudentRepositoryImpl({
    required this.remoteDs,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, List<DocumentDTO>>> getDocumentCats() async {
    if (await networkInfo.isConnected) {
      try {
        final List<DocumentDTO> documentCategories = await remoteDs.getDocumentCats();

        return Right(documentCategories);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    } else {
      return Left(ServerFailure(message: NO_INTERNET_TEXT));
    }
  }

  @override
  Future<Either<Failure, List<DocumentDTO>>> getDocuments({
    required int documentCatId,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final List<DocumentDTO> documents = await remoteDs.getDocuments(
          documentCatId: documentCatId,
        );

        return Right(documents);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    } else {
      return Left(ServerFailure(message: NO_INTERNET_TEXT));
    }
  }
}
