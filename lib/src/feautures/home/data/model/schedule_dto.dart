// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narxoz/src/feautures/home/data/model/lesson_dto.dart';

part 'schedule_dto.freezed.dart';
part 'schedule_dto.g.dart';

@freezed
class ScheduleDTO with _$ScheduleDTO {
  const factory ScheduleDTO({
    String? week,
    @JsonKey(name: 'data') List<LessonDTO>? data,
  }) = _ScheduleDTO;

  factory ScheduleDTO.fromJson(Map<String, dynamic> json) => _$ScheduleDTOFromJson(json);
}

/*
        "week": "Понедельник",
        "data": [
            {
                "time_from": "09:05",
                "time_to": "09:55",
                "name": "Основы маркетинга",
                "type_of_activity": "Лекция",
                "audience": "Аудитория 215 (ГУК)"
            },
        ]
*/
