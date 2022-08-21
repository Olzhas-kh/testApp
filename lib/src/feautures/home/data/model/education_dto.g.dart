// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EducationDTO _$$_EducationDTOFromJson(Map<String, dynamic> json) =>
    _$_EducationDTO(
      id: json['id'] as int,
      name: json['name'] as String?,
      description: json['description'] as String?,
      dormitoryName: json['dormitory_name'] as String?,
      availableSeatsCount: json['available_seats_count'] as int?,
    );

Map<String, dynamic> _$$_EducationDTOToJson(_$_EducationDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'dormitory_name': instance.dormitoryName,
      'available_seats_count': instance.availableSeatsCount,
    };
