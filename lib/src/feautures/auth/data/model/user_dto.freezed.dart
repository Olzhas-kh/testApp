// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserDTO _$UserDTOFromJson(Map<String, dynamic> json) {
  return _UserDTO.fromJson(json);
}

/// @nodoc
mixin _$UserDTO {
  @JsonKey(name: 'first_name')
  String? get firstName => throw _privateConstructorUsedError;
  @JsonKey(name: 'last_name')
  String? get lastName => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get login => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth => throw _privateConstructorUsedError;
  @JsonKey(name: 'form_of_training')
  String? get formOfTraining => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  String? get program => throw _privateConstructorUsedError;
  String? get gpa => throw _privateConstructorUsedError;
  String? get avatar =>
      throw _privateConstructorUsedError; // dynamic telephone,
// dynamic country,
// String? address,
// @JsonKey(name: 'postal_code') dynamic postCode,
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDTOCopyWith<UserDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDTOCopyWith<$Res> {
  factory $UserDTOCopyWith(UserDTO value, $Res Function(UserDTO) then) =
      _$UserDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'full_name') String? fullName,
      String? email,
      String? login,
      String? gender,
      @JsonKey(name: 'date_of_birth') String? dateOfBirth,
      @JsonKey(name: 'form_of_training') String? formOfTraining,
      String? level,
      String? program,
      String? gpa,
      String? avatar,
      String? token});
}

/// @nodoc
class _$UserDTOCopyWithImpl<$Res> implements $UserDTOCopyWith<$Res> {
  _$UserDTOCopyWithImpl(this._value, this._then);

  final UserDTO _value;
  // ignore: unused_field
  final $Res Function(UserDTO) _then;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? login = freezed,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? formOfTraining = freezed,
    Object? level = freezed,
    Object? program = freezed,
    Object? gpa = freezed,
    Object? avatar = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      formOfTraining: formOfTraining == freezed
          ? _value.formOfTraining
          : formOfTraining // ignore: cast_nullable_to_non_nullable
              as String?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      program: program == freezed
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as String?,
      gpa: gpa == freezed
          ? _value.gpa
          : gpa // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_UserDTOCopyWith<$Res> implements $UserDTOCopyWith<$Res> {
  factory _$$_UserDTOCopyWith(
          _$_UserDTO value, $Res Function(_$_UserDTO) then) =
      __$$_UserDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'first_name') String? firstName,
      @JsonKey(name: 'last_name') String? lastName,
      @JsonKey(name: 'full_name') String? fullName,
      String? email,
      String? login,
      String? gender,
      @JsonKey(name: 'date_of_birth') String? dateOfBirth,
      @JsonKey(name: 'form_of_training') String? formOfTraining,
      String? level,
      String? program,
      String? gpa,
      String? avatar,
      String? token});
}

/// @nodoc
class __$$_UserDTOCopyWithImpl<$Res> extends _$UserDTOCopyWithImpl<$Res>
    implements _$$_UserDTOCopyWith<$Res> {
  __$$_UserDTOCopyWithImpl(_$_UserDTO _value, $Res Function(_$_UserDTO) _then)
      : super(_value, (v) => _then(v as _$_UserDTO));

  @override
  _$_UserDTO get _value => super._value as _$_UserDTO;

  @override
  $Res call({
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? fullName = freezed,
    Object? email = freezed,
    Object? login = freezed,
    Object? gender = freezed,
    Object? dateOfBirth = freezed,
    Object? formOfTraining = freezed,
    Object? level = freezed,
    Object? program = freezed,
    Object? gpa = freezed,
    Object? avatar = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_UserDTO(
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      login: login == freezed
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      dateOfBirth: dateOfBirth == freezed
          ? _value.dateOfBirth
          : dateOfBirth // ignore: cast_nullable_to_non_nullable
              as String?,
      formOfTraining: formOfTraining == freezed
          ? _value.formOfTraining
          : formOfTraining // ignore: cast_nullable_to_non_nullable
              as String?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      program: program == freezed
          ? _value.program
          : program // ignore: cast_nullable_to_non_nullable
              as String?,
      gpa: gpa == freezed
          ? _value.gpa
          : gpa // ignore: cast_nullable_to_non_nullable
              as String?,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDTO implements _UserDTO {
  const _$_UserDTO(
      {@JsonKey(name: 'first_name') this.firstName,
      @JsonKey(name: 'last_name') this.lastName,
      @JsonKey(name: 'full_name') this.fullName,
      this.email,
      required this.login,
      this.gender,
      @JsonKey(name: 'date_of_birth') this.dateOfBirth,
      @JsonKey(name: 'form_of_training') this.formOfTraining,
      this.level,
      this.program,
      this.gpa,
      this.avatar,
      this.token});

  factory _$_UserDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UserDTOFromJson(json);

  @override
  @JsonKey(name: 'first_name')
  final String? firstName;
  @override
  @JsonKey(name: 'last_name')
  final String? lastName;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  final String? email;
  @override
  final String? login;
  @override
  final String? gender;
  @override
  @JsonKey(name: 'date_of_birth')
  final String? dateOfBirth;
  @override
  @JsonKey(name: 'form_of_training')
  final String? formOfTraining;
  @override
  final String? level;
  @override
  final String? program;
  @override
  final String? gpa;
  @override
  final String? avatar;
// dynamic telephone,
// dynamic country,
// String? address,
// @JsonKey(name: 'postal_code') dynamic postCode,
  @override
  final String? token;

  @override
  String toString() {
    return 'UserDTO(firstName: $firstName, lastName: $lastName, fullName: $fullName, email: $email, login: $login, gender: $gender, dateOfBirth: $dateOfBirth, formOfTraining: $formOfTraining, level: $level, program: $program, gpa: $gpa, avatar: $avatar, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDTO &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.login, login) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality()
                .equals(other.dateOfBirth, dateOfBirth) &&
            const DeepCollectionEquality()
                .equals(other.formOfTraining, formOfTraining) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality().equals(other.program, program) &&
            const DeepCollectionEquality().equals(other.gpa, gpa) &&
            const DeepCollectionEquality().equals(other.avatar, avatar) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(login),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(dateOfBirth),
      const DeepCollectionEquality().hash(formOfTraining),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(program),
      const DeepCollectionEquality().hash(gpa),
      const DeepCollectionEquality().hash(avatar),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$$_UserDTOCopyWith<_$_UserDTO> get copyWith =>
      __$$_UserDTOCopyWithImpl<_$_UserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDTOToJson(
      this,
    );
  }
}

abstract class _UserDTO implements UserDTO {
  const factory _UserDTO(
      {@JsonKey(name: 'first_name') final String? firstName,
      @JsonKey(name: 'last_name') final String? lastName,
      @JsonKey(name: 'full_name') final String? fullName,
      final String? email,
      required final String? login,
      final String? gender,
      @JsonKey(name: 'date_of_birth') final String? dateOfBirth,
      @JsonKey(name: 'form_of_training') final String? formOfTraining,
      final String? level,
      final String? program,
      final String? gpa,
      final String? avatar,
      final String? token}) = _$_UserDTO;

  factory _UserDTO.fromJson(Map<String, dynamic> json) = _$_UserDTO.fromJson;

  @override
  @JsonKey(name: 'first_name')
  String? get firstName;
  @override
  @JsonKey(name: 'last_name')
  String? get lastName;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  String? get email;
  @override
  String? get login;
  @override
  String? get gender;
  @override
  @JsonKey(name: 'date_of_birth')
  String? get dateOfBirth;
  @override
  @JsonKey(name: 'form_of_training')
  String? get formOfTraining;
  @override
  String? get level;
  @override
  String? get program;
  @override
  String? get gpa;
  @override
  String? get avatar;
  @override // dynamic telephone,
// dynamic country,
// String? address,
// @JsonKey(name: 'postal_code') dynamic postCode,
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$$_UserDTOCopyWith<_$_UserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
