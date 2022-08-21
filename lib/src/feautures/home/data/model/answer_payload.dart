// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'answer_payload.freezed.dart';
part 'answer_payload.g.dart';

@unfreezed
class AnswerPayload with _$AnswerPayload {
   factory AnswerPayload({
    @JsonKey(name: 'question_id') required String questionID,
    required dynamic value,
    @JsonKey(defaultValue: false) bool? isFile,
    String? fieldType,
  }) = _AnswerPayload;

  factory AnswerPayload.fromJson(Map<String, dynamic> json) =>
      _$AnswerPayloadFromJson(json);
}
 