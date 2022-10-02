import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:narxoz/src/core/error/excepteion.dart';
import 'package:narxoz/src/core/network/dio_wrapper.dart';
import 'package:narxoz/src/core/network/network_helper.dart';
import 'package:narxoz/src/feautures/home/data/model/answer_payload.dart';
import 'package:narxoz/src/feautures/home/data/model/education_dto.dart';
import 'package:narxoz/src/feautures/home/data/model/hostel_info_dto.dart';
import 'package:narxoz/src/feautures/home/data/model/payment_dto.dart';
import 'package:narxoz/src/feautures/home/data/model/question_dto.dart';
import 'package:narxoz/src/feautures/home/data/model/verification_response_dto.dart';

abstract class HostelRemoteDS {
  Future<HostelInfoDTO> getInfo();

  Future<List<EducationDTO>> getEducationDegrees();

  Future<List<EducationDTO>> getEducationCategories({
    required int degreeId,
  });

  Future<List<QuestionDTO>> getCategoryQuestions({
    required int catId,
  });

  Future<int> createApplication({
    required int catId,
    required List<AnswerPayload> answers,
  });

  // Future<SeatsCountDTO> getFreeSeatsCount({
  //   required int catId,
  //   required String gender,
  // });

  Future<VerificationResponseDTO> checkApplication({
    required int orderId,
  });

  Future<PaymentDTO?> paymentDorm({
    required int orderId,
    // required List<AnswerPayload> answers,
    // required String placementId,
    required File? chequeFile,
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
    } catch (e) {
      throw ServerException(message: e.toString());
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
    } catch (e) {
      throw ServerException(message: e.toString());
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
    } catch (e) {
      throw ServerException(message: e.toString());
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
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<int> createApplication({
    required int catId,
    required List<AnswerPayload> answers,
  }) async {
    try {
      final Map<String, dynamic> mapp = {};

      for (int i = 0; i < answers.length; i++) {
        if (answers[i].isFile ?? false) {
        } else {
          mapp['answers[$i]'] = {
            'question_id': answers[i].questionID,
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
        EndPoints.createApplication(catId),
        data: formData,
      );

      return (response.data as Map<String, dynamic>)['order_id'] as int;
    } on DioError catch (e) {
      throw ServerException(
        message: (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  // @override
  // Future<SeatsCountDTO> getFreeSeatsCount({
  //   required int catId,
  //   required String gender,
  // }) async {
  //   try {
  //     final response = await dio.get(
  //       EndPoints.dormPlacements(catId),
  //       queryParameters: {
  //         'gender': gender,
  //       },
  //     );

  //     return SeatsCountDTO.fromJson(response.data as Map<String, dynamic>);
  //   } on DioError catch (e) {
  //     throw ServerException(
  //       message: (e.response!.data as Map<String, dynamic>)['message'] as String,
  //     );
  //   }
  // }

  @override
  Future<PaymentDTO?> paymentDorm({
    required int orderId,
    // required List<AnswerPayload> answers,
    // required String placementId,
    required File? chequeFile,
  }) async {
    try {
      // final Map<String, dynamic> mapp = {};

      // for (int i = 0; i < answers.length; i++) {
      //   if (answers[i].isFile ?? false) {
      //   } else {
      //     mapp['answers[$i]'] = {
      //       'question_id': answers[i].questionID,
      //       'value': answers[i].value,
      //     };
      //   }
      // }

      final FormData formData = FormData.fromMap({});
      // for (int i = 0; i < answers.length; i++) {
      //   if (answers[i].isFile ?? false) {
      //     formData.fields.add(
      //       MapEntry(
      //         'answers[$i][question_id]',
      //         answers[i].questionID,
      //       ),
      //     );
      //     formData.files.add(
      //       MapEntry(
      //         'answers[$i][value]',
      //         await MultipartFile.fromFile((answers[i].value as File).path),
      //       ),
      //     );
      //   }
      // }

      // formData.fields.add(
      //   MapEntry(
      //     'placement_type',
      //     placementId,
      //   ),
      // );
      if (chequeFile != null) {
        formData.files.add(
          MapEntry(
            'cheque',
            await MultipartFile.fromFile(chequeFile.path),
          ),
        );
      }

      final response = await dio.post(
        EndPoints.paymentDorm(orderId),
        data: formData,
      );

      if (response.data == null || response.statusCode == 204) {
        return null;
      }
      return PaymentDTO.fromJson(response.data as Map<String, dynamic>);
    } on DioError catch (e) {
      log(e.toString());
      throw ServerException(
        message: e.response.toString(), //(e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<VerificationResponseDTO> checkApplication({
    required int orderId,
  }) async {
    try {
      final response = await dio.post(
        EndPoints.checkApplication(orderId),
      );

      return VerificationResponseDTO.fromJson(response.data as Map<String, dynamic>);
    } on DioError catch (e) {
      throw ServerException(
        message: (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
