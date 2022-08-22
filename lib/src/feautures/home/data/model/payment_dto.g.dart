// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PaymentDTO _$$_PaymentDTOFromJson(Map<String, dynamic> json) =>
    _$_PaymentDTO(
      redirectUrl: json['redirect_url'] as String?,
      requestUrl: json['request_url'] as String?,
      failureUrl: json['failure_url'] as String?,
    );

Map<String, dynamic> _$$_PaymentDTOToJson(_$_PaymentDTO instance) =>
    <String, dynamic>{
      'redirect_url': instance.redirectUrl,
      'request_url': instance.requestUrl,
      'failure_url': instance.failureUrl,
    };
