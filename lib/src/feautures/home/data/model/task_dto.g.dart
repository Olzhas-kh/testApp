// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TaskDTO _$$_TaskDTOFromJson(Map<String, dynamic> json) => _$_TaskDTO(
      name: json['name'] as String?,
      grade: json['grade'] as String?,
      unlocakAt: json['unlock_at'] as String?,
      lockAt: json['lock_at'] as String?,
    );

Map<String, dynamic> _$$_TaskDTOToJson(_$_TaskDTO instance) =>
    <String, dynamic>{
      'name': instance.name,
      'grade': instance.grade,
      'unlock_at': instance.unlocakAt,
      'lock_at': instance.lockAt,
    };
