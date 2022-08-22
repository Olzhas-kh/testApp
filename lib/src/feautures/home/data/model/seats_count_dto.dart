// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narxoz/src/feautures/home/data/model/placement_dto.dart';

part 'seats_count_dto.freezed.dart';
part 'seats_count_dto.g.dart';

@freezed
class SeatsCountDTO with _$SeatsCountDTO {
  const factory SeatsCountDTO({
    required int price,
    List<PlacementDTO>? placements,
  }) = _SeatsCountDTO;

  factory SeatsCountDTO.fromJson(Map<String, dynamic> json) => _$SeatsCountDTOFromJson(json);
}
