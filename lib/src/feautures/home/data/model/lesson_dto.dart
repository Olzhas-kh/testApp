// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'lesson_dto.freezed.dart';
part 'lesson_dto.g.dart';

@freezed
class LessonDTO with _$LessonDTO {
  const factory LessonDTO({
    @JsonKey(name: 'time_from') String? timeFrom,
    @JsonKey(name: 'time_to') String? timeTo,
    String? name,
    @JsonKey(name: 'type_of_activity') String? typeOfActivity,
    String? audience,
  }) = _LessonDTO;

  factory LessonDTO.fromJson(Map<String, dynamic> json) => _$LessonDTOFromJson(json);
}
