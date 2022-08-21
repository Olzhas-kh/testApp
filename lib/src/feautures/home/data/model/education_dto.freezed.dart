// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'education_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EducationDTO _$EducationDTOFromJson(Map<String, dynamic> json) {
  return _EducationDTO.fromJson(json);
}

/// @nodoc
mixin _$EducationDTO {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'dormitory_name')
  String? get dormitoryName => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_seats_count')
  int? get availableSeatsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EducationDTOCopyWith<EducationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EducationDTOCopyWith<$Res> {
  factory $EducationDTOCopyWith(
          EducationDTO value, $Res Function(EducationDTO) then) =
      _$EducationDTOCopyWithImpl<$Res>;
  $Res call(
      {int id,
      String? name,
      String? description,
      @JsonKey(name: 'dormitory_name') String? dormitoryName,
      @JsonKey(name: 'available_seats_count') int? availableSeatsCount});
}

/// @nodoc
class _$EducationDTOCopyWithImpl<$Res> implements $EducationDTOCopyWith<$Res> {
  _$EducationDTOCopyWithImpl(this._value, this._then);

  final EducationDTO _value;
  // ignore: unused_field
  final $Res Function(EducationDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? dormitoryName = freezed,
    Object? availableSeatsCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dormitoryName: dormitoryName == freezed
          ? _value.dormitoryName
          : dormitoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      availableSeatsCount: availableSeatsCount == freezed
          ? _value.availableSeatsCount
          : availableSeatsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_EducationDTOCopyWith<$Res>
    implements $EducationDTOCopyWith<$Res> {
  factory _$$_EducationDTOCopyWith(
          _$_EducationDTO value, $Res Function(_$_EducationDTO) then) =
      __$$_EducationDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      String? name,
      String? description,
      @JsonKey(name: 'dormitory_name') String? dormitoryName,
      @JsonKey(name: 'available_seats_count') int? availableSeatsCount});
}

/// @nodoc
class __$$_EducationDTOCopyWithImpl<$Res>
    extends _$EducationDTOCopyWithImpl<$Res>
    implements _$$_EducationDTOCopyWith<$Res> {
  __$$_EducationDTOCopyWithImpl(
      _$_EducationDTO _value, $Res Function(_$_EducationDTO) _then)
      : super(_value, (v) => _then(v as _$_EducationDTO));

  @override
  _$_EducationDTO get _value => super._value as _$_EducationDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? dormitoryName = freezed,
    Object? availableSeatsCount = freezed,
  }) {
    return _then(_$_EducationDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      dormitoryName: dormitoryName == freezed
          ? _value.dormitoryName
          : dormitoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      availableSeatsCount: availableSeatsCount == freezed
          ? _value.availableSeatsCount
          : availableSeatsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EducationDTO implements _EducationDTO {
  const _$_EducationDTO(
      {required this.id,
      this.name,
      this.description,
      @JsonKey(name: 'dormitory_name') this.dormitoryName,
      @JsonKey(name: 'available_seats_count') this.availableSeatsCount});

  factory _$_EducationDTO.fromJson(Map<String, dynamic> json) =>
      _$$_EducationDTOFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? description;
  @override
  @JsonKey(name: 'dormitory_name')
  final String? dormitoryName;
  @override
  @JsonKey(name: 'available_seats_count')
  final int? availableSeatsCount;

  @override
  String toString() {
    return 'EducationDTO(id: $id, name: $name, description: $description, dormitoryName: $dormitoryName, availableSeatsCount: $availableSeatsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EducationDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality()
                .equals(other.dormitoryName, dormitoryName) &&
            const DeepCollectionEquality()
                .equals(other.availableSeatsCount, availableSeatsCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(dormitoryName),
      const DeepCollectionEquality().hash(availableSeatsCount));

  @JsonKey(ignore: true)
  @override
  _$$_EducationDTOCopyWith<_$_EducationDTO> get copyWith =>
      __$$_EducationDTOCopyWithImpl<_$_EducationDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EducationDTOToJson(
      this,
    );
  }
}

abstract class _EducationDTO implements EducationDTO {
  const factory _EducationDTO(
      {required final int id,
      final String? name,
      final String? description,
      @JsonKey(name: 'dormitory_name')
          final String? dormitoryName,
      @JsonKey(name: 'available_seats_count')
          final int? availableSeatsCount}) = _$_EducationDTO;

  factory _EducationDTO.fromJson(Map<String, dynamic> json) =
      _$_EducationDTO.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get description;
  @override
  @JsonKey(name: 'dormitory_name')
  String? get dormitoryName;
  @override
  @JsonKey(name: 'available_seats_count')
  int? get availableSeatsCount;
  @override
  @JsonKey(ignore: true)
  _$$_EducationDTOCopyWith<_$_EducationDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
