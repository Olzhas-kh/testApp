import 'dart:io';

import 'package:dio/dio.dart';
import 'package:narxoz/src/core/error/excepteion.dart';
import 'package:narxoz/src/core/network/dio_wrapper.dart';
import 'package:narxoz/src/core/network/network_helper.dart';
import 'package:narxoz/src/feautures/home/data/model/answer_payload.dart';
import 'package:narxoz/src/feautures/home/data/model/education_dto.dart';
import 'package:narxoz/src/feautures/home/data/model/hostel_info_dto.dart';
import 'package:narxoz/src/feautures/home/data/model/question_dto.dart';

abstract class HostelRemoteDS {
  Future<HostelInfoDTO> getInfo();

  Future<List<EducationDTO>> getEducationDegrees();

  Future<List<EducationDTO>> getEducationCategories({
    required int degreeId,
  });

  Future<List<QuestionDTO>> getCategoryQuestions({
    required int catId,
  });

  Future<String> questionsCheck({
    required int catId,
    required List<AnswerPayload> answers,
  });
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
        message: (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    }
  }

  @override
  Future<List<EducationDTO>> getEducationDegrees() async {
    try {
      final response = await dio.get(
        EndPoints.dormitoriesOrdersDegree,
      );

      return (response.data as List).map((e) => EducationDTO.fromJson(e as Map<String, dynamic>)).toList();
    } on DioError catch (e) {
      throw ServerException(
        message: (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    }
  }

  @override
  Future<List<EducationDTO>> getEducationCategories({
    required int degreeId,
  }) async {
    try {
      final response = await dio.get(
        EndPoints.educationCategories(degreeId),
      );

      return (response.data as List).map((e) => EducationDTO.fromJson(e as Map<String, dynamic>)).toList();
    } on DioError catch (e) {
      throw ServerException(
        message: (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    }
  }

  @override
  Future<List<QuestionDTO>> getCategoryQuestions({
    required int catId,
  }) async {
    try {
      final response = await dio.get(
        EndPoints.categoryQuestions(catId),
      );

      return (response.data as List).map((e) => QuestionDTO.fromJson(e as Map<String, dynamic>)).toList();
    } on DioError catch (e) {
      throw ServerException(
        message: (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    }
  }

  @override
  Future<String> questionsCheck({
    required int catId,
    required List<AnswerPayload> answers,
  }) async {
    try {
      final Map<String, dynamic> mapp = {};

      for (int i = 0; i < answers.length; i++) {
        if (answers[i].isFile ?? false) {
        } else {
          mapp['answers[$i]'] = {
            'question_id':  answers[i].questionID,
            'value': answers[i].value,
          };
          // mapp['answers[$i]']['question_id'] = answers[i].questionID;
          // (mapp['answers[$i]'] as Map<String, dynamic>)['value'] = answers[i].value;
        }
      }

      final FormData formData = FormData.fromMap(mapp);
      for (int i = 0; i < answers.length; i++) {
        if (answers[i].isFile ?? false) {
          formData.fields.add(
            MapEntry(
              'answers[$i][question_id]',
              answers[i].questionID,
            ),
          );
          formData.files.add(
            MapEntry(
              'answers[$i][value]',
              await MultipartFile.fromFile((answers[i].value as File).path),
            ),
          );
        }
      }

      final response = await dio.post(
        EndPoints.categoryQuestionsCheck(catId),
        data: formData,
      );

      if (response.statusCode == 200 || response.statusCode == 204) {
        return 'Success';
      } else {
        throw ServerException(message: 'questionsCheck - ${response.statusCode}');
      }
    } on DioError catch (e) {
      throw ServerException(
        message: (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    }
  }
}
