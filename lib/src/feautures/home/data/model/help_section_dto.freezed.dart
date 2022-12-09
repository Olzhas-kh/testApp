// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'help_section_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HelpSectionDTO _$HelpSectionDTOFromJson(Map<String, dynamic> json) {
  return _HelpSectionDTO.fromJson(json);
}

/// @nodoc
mixin _$HelpSectionDTO {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HelpSectionDTOCopyWith<HelpSectionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HelpSectionDTOCopyWith<$Res> {
  factory $HelpSectionDTOCopyWith(
          HelpSectionDTO value, $Res Function(HelpSectionDTO) then) =
      _$HelpSectionDTOCopyWithImpl<$Res, HelpSectionDTO>;
  @useResult
  $Res call({int id, String name, String? content});
}

/// @nodoc
class _$HelpSectionDTOCopyWithImpl<$Res, $Val extends HelpSectionDTO>
    implements $HelpSectionDTOCopyWith<$Res> {
  _$HelpSectionDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? content = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HelpSectionDTOCopyWith<$Res>
    implements $HelpSectionDTOCopyWith<$Res> {
  factory _$$_HelpSectionDTOCopyWith(
          _$_HelpSectionDTO value, $Res Function(_$_HelpSectionDTO) then) =
      __$$_HelpSectionDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String? content});
}

/// @nodoc
class __$$_HelpSectionDTOCopyWithImpl<$Res>
    extends _$HelpSectionDTOCopyWithImpl<$Res, _$_HelpSectionDTO>
    implements _$$_HelpSectionDTOCopyWith<$Res> {
  __$$_HelpSectionDTOCopyWithImpl(
      _$_HelpSectionDTO _value, $Res Function(_$_HelpSectionDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? content = freezed,
  }) {
    return _then(_$_HelpSectionDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HelpSectionDTO implements _HelpSectionDTO {
  const _$_HelpSectionDTO({required this.id, required this.name, this.content});

  factory _$_HelpSectionDTO.fromJson(Map<String, dynamic> json) =>
      _$$_HelpSectionDTOFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? content;

  @override
  String toString() {
    return 'HelpSectionDTO(id: $id, name: $name, content: $content)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HelpSectionDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HelpSectionDTOCopyWith<_$_HelpSectionDTO> get copyWith =>
      __$$_HelpSectionDTOCopyWithImpl<_$_HelpSectionDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HelpSectionDTOToJson(
      this,
    );
  }
}

abstract class _HelpSectionDTO implements HelpSectionDTO {
  const factory _HelpSectionDTO(
      {required final int id,
      required final String name,
      final String? content}) = _$_HelpSectionDTO;

  factory _HelpSectionDTO.fromJson(Map<String, dynamic> json) =
      _$_HelpSectionDTO.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get content;
  @override
  @JsonKey(ignore: true)
  _$$_HelpSectionDTOCopyWith<_$_HelpSectionDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
