import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:narxoz/src/core/error/excepteion.dart';
import 'package:narxoz/src/core/error/failure.dart';
import 'package:narxoz/src/core/network/network_info.dart';
import 'package:narxoz/src/core/resources/constants.dart';
import 'package:narxoz/src/feautures/home/data/datasource/hostel_remote_ds.dart';
import 'package:narxoz/src/feautures/home/data/model/answer_payload.dart';
import 'package:narxoz/src/feautures/home/data/model/education_dto.dart';
import 'package:narxoz/src/feautures/home/data/model/hostel_info_dto.dart';
import 'package:narxoz/src/feautures/home/data/model/payment_dto.dart';
import 'package:narxoz/src/feautures/home/data/model/question_dto.dart';
import 'package:narxoz/src/feautures/home/data/model/seats_count_dto.dart';

abstract class HostelRepository {
  Future<Either<Failure, HostelInfoDTO>> getInfo();

  Future<Either<Failure, List<EducationDTO>>> getEducationDegrees();

  Future<Either<Failure, List<EducationDTO>>> getEducationCategories({
    required int degreeId,
  });

  Future<Either<Failure, List<QuestionDTO>>> getCategoryQuestions({
    required int catId,
  });

  Future<Either<Failure, String>> questionsCheck({
    required int catId,
    required List<AnswerPayload> answers,
  });

  Future<Either<Failure, SeatsCountDTO>> getFreeSeatsCount({
    required int catId,
    required String gender,
  });

  Future<Either<Failure, PaymentDTO?>> paymentDorm({
    required int catId,
    required List<AnswerPayload> answers,
    required String placementId,
    required File? chequeFile,
  });
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

  @override
  Future<Either<Failure, List<EducationDTO>>> getEducationDegrees() async {
    if (await networkInfo.isConnected) {
      try {
        final List<EducationDTO> degrees = await remoteDs.getEducationDegrees();

        return Right(degrees);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    } else {
      return Left(ServerFailure(message: NO_INTERNET_TEXT));
    }
  }

  @override
  Future<Either<Failure, List<EducationDTO>>> getEducationCategories({
    required int degreeId,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final List<EducationDTO> cats = await remoteDs.getEducationCategories(
          degreeId: degreeId,
        );

        return Right(cats);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    } else {
      return Left(ServerFailure(message: NO_INTERNET_TEXT));
    }
  }

  @override
  Future<Either<Failure, List<QuestionDTO>>> getCategoryQuestions({
    required int catId,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final List<QuestionDTO> questions = await remoteDs.getCategoryQuestions(
          catId: catId,
        );

        return Right(questions);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    } else {
      return Left(ServerFailure(message: NO_INTERNET_TEXT));
    }
  }

  @override
  Future<Either<Failure, String>> questionsCheck({
    required int catId,
    required List<AnswerPayload> answers,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final String msg = await remoteDs.questionsCheck(
          catId: catId,
          answers: answers,
        );

        return Right(msg);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    } else {
      return Left(ServerFailure(message: NO_INTERNET_TEXT));
    }
  }

  @override
  Future<Either<Failure, SeatsCountDTO>> getFreeSeatsCount({
    required int catId,
    required String gender,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final SeatsCountDTO seatsCount = await remoteDs.getFreeSeatsCount(
          catId: catId,
          gender: gender,
        );

        return Right(seatsCount);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    } else {
      return Left(ServerFailure(message: NO_INTERNET_TEXT));
    }
  }

  @override
  Future<Either<Failure, PaymentDTO?>> paymentDorm({
    required int catId,
    required List<AnswerPayload> answers,
    required String placementId,
    required File? chequeFile,
  }) async {
    if (await networkInfo.isConnected) {
      try {
        final PaymentDTO? paymentDTO = await remoteDs.paymentDorm(
          catId: catId,
          answers: answers,
          chequeFile: chequeFile,
          placementId: placementId,
        );

        return Right(paymentDTO);
      } on ServerException catch (e) {
        return Left(ServerFailure(message: e.message));
      }
    } else {
      return Left(ServerFailure(message: NO_INTERNET_TEXT));
    }
  }
}
