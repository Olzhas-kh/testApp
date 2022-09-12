// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDTO _$$_UserDTOFromJson(Map<String, dynamic> json) => _$_UserDTO(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      fullName: json['full_name'] as String?,
      email: json['email'] as String?,
      login: json['login'] as String?,
      gender: json['gender'] as String?,
      dateOfBirth: json['date_of_birth'] as String?,
      formOfTraining: json['form_of_training'] as String?,
      level: json['level'] as String?,
      program: json['program'] as String?,
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_UserDTOToJson(_$_UserDTO instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'full_name': instance.fullName,
      'email': instance.email,
      'login': instance.login,
      'gender': instance.gender,
      'date_of_birth': instance.dateOfBirth,
      'form_of_training': instance.formOfTraining,
      'level': instance.level,
      'program': instance.program,
      'token': instance.token,
    };
