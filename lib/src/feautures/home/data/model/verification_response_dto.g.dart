// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VerificationResponseDTO _$$_VerificationResponseDTOFromJson(
        Map<String, dynamic> json) =>
    _$_VerificationResponseDTO(
      paymentStatus: json['payment_status'] as bool?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : ArendatorDTO.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_VerificationResponseDTOToJson(
        _$_VerificationResponseDTO instance) =>
    <String, dynamic>{
      'payment_status': instance.paymentStatus,
      'message': instance.message,
      'data': instance.data,
    };

_$_ArendatorDTO _$$_ArendatorDTOFromJson(Map<String, dynamic> json) =>
    _$_ArendatorDTO(
      fullName: json['fullname'] as String?,
      amount: json['amount'] as int?,
    );

Map<String, dynamic> _$$_ArendatorDTOToJson(_$_ArendatorDTO instance) =>
    <String, dynamic>{
      'fullname': instance.fullName,
      'amount': instance.amount,
    };
