import 'package:dio/dio.dart';
import 'package:narxoz/src/core/error/excepteion.dart';
import 'package:narxoz/src/core/network/dio_wrapper.dart';
import 'package:narxoz/src/core/network/network_helper.dart';
import 'package:narxoz/src/feautures/sections/data/model/document_dto.dart';

abstract class StudentRemoteDS {
  Future<List<DocumentDTO>> getDocumentCats();

  Future<List<DocumentDTO>> getDocuments({
    required int documentCatId,
  });
}

class StudentRemoteDSImpl extends StudentRemoteDS {
  late final Dio dio;
  final DioWrapper dioWrapper;
  StudentRemoteDSImpl(this.dioWrapper) {
    // dioWrapper.path('');
    dio = dioWrapper.dio;
  }

  @override
  Future<List<DocumentDTO>> getDocumentCats() async {
    try {
      final response = await dio.get(
        EndPoints.documentCats,
      );

      return (response.data as List).map((e) => DocumentDTO.fromJson(e as Map<String, dynamic>)).toList();
    } on DioError catch (e) {
      throw ServerException(
        message: (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    }
  }

  @override
  Future<List<DocumentDTO>> getDocuments({
    required int documentCatId,
  }) async {
    try {
      final response = await dio.get(
        EndPoints.documents(documentCatId),
      );

      return (response.data as List).map((e) => DocumentDTO.fromJson(e as Map<String, dynamic>)).toList();
    } on DioError catch (e) {
      throw ServerException(
        message: (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    }
  }
}
