// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hostel_info_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HostelInfoDTO _$$_HostelInfoDTOFromJson(Map<String, dynamic> json) =>
    _$_HostelInfoDTO(
      settlmentStartsAt: json['settlement_starts_at'] as String?,
      settlmentEndsAt: json['settlement_ends_at'] as String?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_HostelInfoDTOToJson(_$_HostelInfoDTO instance) =>
    <String, dynamic>{
      'settlement_starts_at': instance.settlmentStartsAt,
      'settlement_ends_at': instance.settlmentEndsAt,
      'images': instance.images,
    };
