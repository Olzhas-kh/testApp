// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionDTO _$$_QuestionDTOFromJson(Map<String, dynamic> json) =>
    _$_QuestionDTO(
      id: json['id'] as String,
      displayName: json['display_name'] as String?,
      fieldType: json['field_type'] as String?,
    );

Map<String, dynamic> _$$_QuestionDTOToJson(_$_QuestionDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'display_name': instance.displayName,
      'field_type': instance.fieldType,
    };
