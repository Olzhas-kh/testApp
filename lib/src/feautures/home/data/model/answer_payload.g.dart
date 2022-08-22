// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AnswerPayload _$$_AnswerPayloadFromJson(Map<String, dynamic> json) =>
    _$_AnswerPayload(
      questionID: json['question_id'] as String,
      value: json['value'],
      isFile: json['isFile'] as bool? ?? false,
      fieldType: json['fieldType'] as String?,
    );

Map<String, dynamic> _$$_AnswerPayloadToJson(_$_AnswerPayload instance) =>
    <String, dynamic>{
      'question_id': instance.questionID,
      'value': instance.value,
      'isFile': instance.isFile,
      'fieldType': instance.fieldType,
    };
