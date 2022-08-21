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
    List<OptionsDTO>? options,
  }) = _QuestionDTO;

  factory QuestionDTO.fromJson(Map<String, dynamic> json) =>
      _$QuestionDTOFromJson(json);
}

@freezed
class OptionsDTO with _$OptionsDTO {
  const factory OptionsDTO({
    required String id,
    @JsonKey(name: 'display_name') String? displayName,
  }) = _OptionsDTO;

  factory OptionsDTO.fromJson(Map<String, dynamic> json) =>
      _$OptionsDTOFromJson(json);
}

/* 
    {
        "id": "1",
        "display_name": "Введите имя",
        "field_type": "2"
    },
    {
        "id": "4",
        "display_name": "Пол",
        "field_type": "6",
        "options": [
            {
                "id": "male",
                "option": "Мужской"
            },
            {
                "id": "female",
                "option": "Женский"
            }
        ]
    },
*/
