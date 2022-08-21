// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QuestionDTO _$QuestionDTOFromJson(Map<String, dynamic> json) {
  return _QuestionDTO.fromJson(json);
}

/// @nodoc
mixin _$QuestionDTO {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'display_name')
  String? get displayName => throw _privateConstructorUsedError;
  @JsonKey(name: 'field_type')
  String? get fieldType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionDTOCopyWith<QuestionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionDTOCopyWith<$Res> {
  factory $QuestionDTOCopyWith(
          QuestionDTO value, $Res Function(QuestionDTO) then) =
      _$QuestionDTOCopyWithImpl<$Res>;
  $Res call(
      {String id,
      @JsonKey(name: 'display_name') String? displayName,
      @JsonKey(name: 'field_type') String? fieldType});
}

/// @nodoc
class _$QuestionDTOCopyWithImpl<$Res> implements $QuestionDTOCopyWith<$Res> {
  _$QuestionDTOCopyWithImpl(this._value, this._then);

  final QuestionDTO _value;
  // ignore: unused_field
  final $Res Function(QuestionDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? displayName = freezed,
    Object? fieldType = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      fieldType: fieldType == freezed
          ? _value.fieldType
          : fieldType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_QuestionDTOCopyWith<$Res>
    implements $QuestionDTOCopyWith<$Res> {
  factory _$$_QuestionDTOCopyWith(
          _$_QuestionDTO value, $Res Function(_$_QuestionDTO) then) =
      __$$_QuestionDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      @JsonKey(name: 'display_name') String? displayName,
      @JsonKey(name: 'field_type') String? fieldType});
}

/// @nodoc
class __$$_QuestionDTOCopyWithImpl<$Res> extends _$QuestionDTOCopyWithImpl<$Res>
    implements _$$_QuestionDTOCopyWith<$Res> {
  __$$_QuestionDTOCopyWithImpl(
      _$_QuestionDTO _value, $Res Function(_$_QuestionDTO) _then)
      : super(_value, (v) => _then(v as _$_QuestionDTO));

  @override
  _$_QuestionDTO get _value => super._value as _$_QuestionDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? displayName = freezed,
    Object? fieldType = freezed,
  }) {
    return _then(_$_QuestionDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      fieldType: fieldType == freezed
          ? _value.fieldType
          : fieldType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QuestionDTO implements _QuestionDTO {
  const _$_QuestionDTO(
      {required this.id,
      @JsonKey(name: 'display_name') this.displayName,
      @JsonKey(name: 'field_type') this.fieldType});

  factory _$_QuestionDTO.fromJson(Map<String, dynamic> json) =>
      _$$_QuestionDTOFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: 'display_name')
  final String? displayName;
  @override
  @JsonKey(name: 'field_type')
  final String? fieldType;

  @override
  String toString() {
    return 'QuestionDTO(id: $id, displayName: $displayName, fieldType: $fieldType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.displayName, displayName) &&
            const DeepCollectionEquality().equals(other.fieldType, fieldType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(displayName),
      const DeepCollectionEquality().hash(fieldType));

  @JsonKey(ignore: true)
  @override
  _$$_QuestionDTOCopyWith<_$_QuestionDTO> get copyWith =>
      __$$_QuestionDTOCopyWithImpl<_$_QuestionDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QuestionDTOToJson(
      this,
    );
  }
}

abstract class _QuestionDTO implements QuestionDTO {
  const factory _QuestionDTO(
      {required final String id,
      @JsonKey(name: 'display_name') final String? displayName,
      @JsonKey(name: 'field_type') final String? fieldType}) = _$_QuestionDTO;

  factory _QuestionDTO.fromJson(Map<String, dynamic> json) =
      _$_QuestionDTO.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: 'display_name')
  String? get displayName;
  @override
  @JsonKey(name: 'field_type')
  String? get fieldType;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionDTOCopyWith<_$_QuestionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
