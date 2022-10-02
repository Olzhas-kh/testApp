// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'task_dto.freezed.dart';
part 'task_dto.g.dart';

@freezed
class TaskDTO with _$TaskDTO {
  const factory TaskDTO({
    String? name,
    String? grade,
    @JsonKey(name: 'unlock_at') String? unlocakAt,
    @JsonKey(name: 'lock_at') String? lockAt,
  }) = _TaskDTO;

  factory TaskDTO.fromJson(Map<String, dynamic> json) => _$TaskDTOFromJson(json);
}

/*
    {
        "name": "Class activity",
        "grade": null,
        "unlock_at": null,
        "lock_at": null
    },
*/
