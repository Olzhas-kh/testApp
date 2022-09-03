// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_dto.freezed.dart';
part 'banner_dto.g.dart';

@freezed
class BannerDTO with _$BannerDTO {
  const factory BannerDTO({
    required int id,
    String? link,
    String? image,
  }) = _BannerDTO;

  factory BannerDTO.fromJson(Map<String, dynamic> json) => _$BannerDTOFromJson(json);
}

/* 
    {
        "id": 3,
        "link": "https://www.google.com/",
        "image": "https://dev.api.narxozapp.kz/v1/storage/banners/qFdaKrddhoIXAHRWPAO2ZYNGRQGk1UpGpz8ybAhH.jpg"
    },
*/
