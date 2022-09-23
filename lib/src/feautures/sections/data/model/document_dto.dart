// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'document_dto.freezed.dart';
part 'document_dto.g.dart';

@freezed
class DocumentDTO with _$DocumentDTO {
  const factory DocumentDTO({
    required int id,
    String? name,
    String? link,
  }) = _DocumentDTO;

  factory DocumentDTO.fromJson(Map<String, dynamic> json) => _$DocumentDTOFromJson(json);
}

/* 
    {
        "id": 1,
        "name": "НПМ, ПМ - Академический календарь на 2022-2023",
        "link": "https://portal.narxoz.kz/images/files/63123060378c2.pdf"
    }
*/
