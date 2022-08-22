// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'placement_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PlacementDTO _$$_PlacementDTOFromJson(Map<String, dynamic> json) =>
    _$_PlacementDTO(
      id: json['id'] as String,
      name: json['name'] as String?,
      availableSeatsCount: json['available_seats_count'] as int?,
    );

Map<String, dynamic> _$$_PlacementDTOToJson(_$_PlacementDTO instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'available_seats_count': instance.availableSeatsCount,
    };
