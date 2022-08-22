// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'placement_dto.freezed.dart';
part 'placement_dto.g.dart';

@freezed
class PlacementDTO with _$PlacementDTO {
  const factory PlacementDTO({
    required String id,
    String? name,
    @JsonKey(name: 'available_seats_count') int? availableSeatsCount,
  }) = _PlacementDTO;

  factory PlacementDTO.fromJson(Map<String, dynamic> json) => _$PlacementDTOFromJson(json);
}
