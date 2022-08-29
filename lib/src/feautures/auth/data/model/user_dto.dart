// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
class UserDTO with _$UserDTO {
  const factory UserDTO({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'full_name') String? fullName,
    required String? login,
    String? email,
    dynamic telephone,
    dynamic country,
    String? address,
    @JsonKey(name: 'postal_code') dynamic postCode,
    String? token,
  }) = _UserDTO;

  factory UserDTO.fromJson(Map<String, dynamic> json) => _$UserDTOFromJson(json);
}

/* 

{
    "first_name": "Кристина",
    "last_name": "Рябова",
    "full_name": "Рябова Кристина Евгеньевна",
    "login": "S20014242",
    "email": "kristina.ryabova@narxoz.kz",
    "telephone": null,
    "country": null,
    "address": null,
    "postal_code": null
}
*/
