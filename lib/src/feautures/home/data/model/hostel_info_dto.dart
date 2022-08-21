// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'hostel_info_dto.freezed.dart';
part 'hostel_info_dto.g.dart';

@freezed
class HostelInfoDTO with _$HostelInfoDTO {
  const factory HostelInfoDTO({
    @JsonKey(name: "settlement_starts_at") String? settlmentStartsAt,
    @JsonKey(name: "settlement_ends_at") String? settlmentEndsAt,
    List<String>? images,
  }) = _HostelInfoDTO;

  factory HostelInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$HostelInfoDTOFromJson(json);
}
