// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_dto.freezed.dart';
part 'question_dto.g.dart';

@freezed
class QuestionDTO with _$QuestionDTO {
  const factory QuestionDTO({
    required String id,
    @JsonKey(name: 'display_name') String? displayName,
    @JsonKey(name: 'field_type') String? fieldType,
  }) = _QuestionDTO;

  factory QuestionDTO.fromJson(Map<String, dynamic> json) =>
      _$QuestionDTOFromJson(json);
}

/* 
    {
        "id": "1",
        "display_name": "Введите имя",
        "field_type": "2"
    },
    {
        "id": "2",
        "display_name": "Введите фамилию",
        "field_type": "2"
    },
*/
