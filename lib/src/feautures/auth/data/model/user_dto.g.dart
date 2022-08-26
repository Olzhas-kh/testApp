// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$$_UserDTOFromJson(Map<String, dynamic> json) => _$_UserDTO(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      fullName: json['full_name'] as String?,
      login: json['login'] as String?,
      email: json['email'] as String?,
      telephone: json['telephone'],
      country: json['country'],
      address: json['address'] as String?,
      postCode: json['postal_code'],
    );

Map<String, dynamic> _$$_UserDTOToJson(_$_UserDTO instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'full_name': instance.fullName,
      'login': instance.login,
      'email': instance.email,
      'telephone': instance.telephone,
      'country': instance.country,
      'address': instance.address,
      'postal_code': instance.postCode,
    };
