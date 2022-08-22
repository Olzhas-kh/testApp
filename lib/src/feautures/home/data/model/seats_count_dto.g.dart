// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'seats_count_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SeatsCountDTO _$$_SeatsCountDTOFromJson(Map<String, dynamic> json) =>
    _$_SeatsCountDTO(
      price: json['price'] as int,
      placements: (json['placements'] as List<dynamic>?)
          ?.map((e) => PlacementDTO.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SeatsCountDTOToJson(_$_SeatsCountDTO instance) =>
    <String, dynamic>{
      'price': instance.price,
      'placements': instance.placements,
    };
