// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_dto.freezed.dart';
part 'payment_dto.g.dart';

@freezed
class PaymentDTO with _$PaymentDTO {
  const factory PaymentDTO({
    @JsonKey(name: 'redirect_url') String? redirectUrl,
    @JsonKey(name: 'request_url') String? requestUrl,
    @JsonKey(name: 'failure_url') String? failureUrl,
  }) = _PaymentDTO;

  factory PaymentDTO.fromJson(Map<String, dynamic> json) => _$PaymentDTOFromJson(json);
}
