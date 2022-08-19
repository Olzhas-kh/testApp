// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'help_section_dto.freezed.dart';
part 'help_section_dto.g.dart';

@freezed
class HelpSectionDTO with _$HelpSectionDTO {
  const factory HelpSectionDTO({
    required int id,
    required String name,
    String? content,
  }) = _HelpSectionDTO;

  factory HelpSectionDTO.fromJson(Map<String, dynamic> json) =>
      _$HelpSectionDTOFromJson(json);
}
