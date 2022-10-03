// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScheduleDTO _$$_ScheduleDTOFromJson(Map<String, dynamic> json) =>
    _$_ScheduleDTO(
      week: json['week'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => LessonDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ScheduleDTOToJson(_$_ScheduleDTO instance) =>
    <String, dynamic>{
      'week': instance.week,
      'data': instance.data,
    };
