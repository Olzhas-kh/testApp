import 'package:dio/dio.dart';
import 'package:narxoz/src/core/error/excepteion.dart';
import 'package:narxoz/src/core/network/dio_wrapper.dart';
import 'package:narxoz/src/core/network/network_helper.dart';
import 'package:narxoz/src/feautures/home/data/model/help_section_dto.dart';

abstract class HelpSectionRemoteDS {
  Future<List<HelpSectionDTO>> helpSections();

  Future<HelpSectionDTO> showDetailHelpSection({
    required int helpSectionId,
  });
}

class HelpSectionRemoteDSImpl extends HelpSectionRemoteDS {
  late final Dio dio;
  final DioWrapper dioWrapper;
  HelpSectionRemoteDSImpl(this.dioWrapper) {
    // dioWrapper.path('');
    dio = dioWrapper.dio;
  }

  @override
  Future<List<HelpSectionDTO>> helpSections() async {
    try {
      final response = await dio.get(
        EndPoints.helpSections,
      );

      return (response.data as List).map((e) => HelpSectionDTO.fromJson(e as Map<String, dynamic>)).toList();
    } on DioError catch (e) {
      throw ServerException(
        message: (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }

  @override
  Future<HelpSectionDTO> showDetailHelpSection({
    required int helpSectionId,
  }) async {
    try {
      final response = await dio.get(
        '${EndPoints.helpSections}/$helpSectionId',
      );

      return HelpSectionDTO.fromJson(response.data as Map<String, dynamic>);
    } on DioError catch (e) {
      throw ServerException(
        message: (e.response!.data as Map<String, dynamic>)['message'] as String,
      );
    } catch (e) {
      throw ServerException(message: e.toString());
    }
  }
}
