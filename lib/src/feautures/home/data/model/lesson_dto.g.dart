// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lesson_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LessonDTO _$$_LessonDTOFromJson(Map<String, dynamic> json) => _$_LessonDTO(
      timeFrom: json['time_from'] as String?,
      timeTo: json['time_to'] as String?,
      name: json['name'] as String?,
      typeOfActivity: json['type_of_activity'] as String?,
      audience: json['audience'] as String?,
    );

Map<String, dynamic> _$$_LessonDTOToJson(_$_LessonDTO instance) =>
    <String, dynamic>{
      'time_from': instance.timeFrom,
      'time_to': instance.timeTo,
      'name': instance.name,
      'type_of_activity': instance.typeOfActivity,
      'audience': instance.audience,
    };
