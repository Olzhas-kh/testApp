// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_response_dto.freezed.dart';
part 'verification_response_dto.g.dart';

@freezed
class VerificationResponseDTO with _$VerificationResponseDTO {
  const factory VerificationResponseDTO({
    @JsonKey(name: 'payment_status') required bool? paymentStatus,
    required String? message,
    required ArendatorDTO? data,
  }) = _VerificationResponseDTO;

  factory VerificationResponseDTO.fromJson(Map<String, dynamic> json) => _$VerificationResponseDTOFromJson(json);
}

@freezed
class ArendatorDTO with _$ArendatorDTO {
  const factory ArendatorDTO({
    @JsonKey(name: 'fullname') String? fullName,
    int? amount,
  }) = _ArendatorDTO;

  factory ArendatorDTO.fromJson(Map<String, dynamic> json) => _$ArendatorDTOFromJson(json);
}

/* 
{
    "payment_status": true,
    "message": "",
    "data": {
        "fullname": "Fenis Rayy",
        "amount": 100
    }
}
*/
