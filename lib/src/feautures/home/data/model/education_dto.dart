// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'education_dto.freezed.dart';
part 'education_dto.g.dart';

@freezed
class EducationDTO with _$EducationDTO {
  const factory EducationDTO({
    required int id,
    String? name,
    String? description,
    @JsonKey(name: 'dormitory_name') String? dormitoryName,
    @JsonKey(name: 'available_seats_count') int? availableSeatsCount,
  }) = _EducationDTO;

  factory EducationDTO.fromJson(Map<String, dynamic> json) =>
      _$EducationDTOFromJson(json);
}

/* 

    {
        "id": 1,
        "name": "Бакалавриат",
        "available_seats_count": 849
    },
    {
        "id": 3,
        "name": "Соц. уязвимые",
        "description": "Сироты, инвалиды, многодетная семья до 18, малообеспеченная семья и тд",
        "dormitory_name": "ДС 2А",
        "available_seats_count": 384
    },
*/
