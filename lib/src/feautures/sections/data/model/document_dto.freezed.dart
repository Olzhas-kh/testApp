// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'document_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DocumentDTO _$DocumentDTOFromJson(Map<String, dynamic> json) {
  return _DocumentDTO.fromJson(json);
}

/// @nodoc
mixin _$DocumentDTO {
  int get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DocumentDTOCopyWith<DocumentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentDTOCopyWith<$Res> {
  factory $DocumentDTOCopyWith(
          DocumentDTO value, $Res Function(DocumentDTO) then) =
      _$DocumentDTOCopyWithImpl<$Res>;
  $Res call({int id, String? name, String? link});
}

/// @nodoc
class _$DocumentDTOCopyWithImpl<$Res> implements $DocumentDTOCopyWith<$Res> {
  _$DocumentDTOCopyWithImpl(this._value, this._then);

  final DocumentDTO _value;
  // ignore: unused_field
  final $Res Function(DocumentDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? link = freezed,
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
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_DocumentDTOCopyWith<$Res>
    implements $DocumentDTOCopyWith<$Res> {
  factory _$$_DocumentDTOCopyWith(
          _$_DocumentDTO value, $Res Function(_$_DocumentDTO) then) =
      __$$_DocumentDTOCopyWithImpl<$Res>;
  @override
  $Res call({int id, String? name, String? link});
}

/// @nodoc
class __$$_DocumentDTOCopyWithImpl<$Res> extends _$DocumentDTOCopyWithImpl<$Res>
    implements _$$_DocumentDTOCopyWith<$Res> {
  __$$_DocumentDTOCopyWithImpl(
      _$_DocumentDTO _value, $Res Function(_$_DocumentDTO) _then)
      : super(_value, (v) => _then(v as _$_DocumentDTO));

  @override
  _$_DocumentDTO get _value => super._value as _$_DocumentDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? link = freezed,
  }) {
    return _then(_$_DocumentDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DocumentDTO implements _DocumentDTO {
  const _$_DocumentDTO({required this.id, this.name, this.link});

  factory _$_DocumentDTO.fromJson(Map<String, dynamic> json) =>
      _$$_DocumentDTOFromJson(json);

  @override
  final int id;
  @override
  final String? name;
  @override
  final String? link;

  @override
  String toString() {
    return 'DocumentDTO(id: $id, name: $name, link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DocumentDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$$_DocumentDTOCopyWith<_$_DocumentDTO> get copyWith =>
      __$$_DocumentDTOCopyWithImpl<_$_DocumentDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DocumentDTOToJson(
      this,
    );
  }
}

abstract class _DocumentDTO implements DocumentDTO {
  const factory _DocumentDTO(
      {required final int id,
      final String? name,
      final String? link}) = _$_DocumentDTO;

  factory _DocumentDTO.fromJson(Map<String, dynamic> json) =
      _$_DocumentDTO.fromJson;

  @override
  int get id;
  @override
  String? get name;
  @override
  String? get link;
  @override
  @JsonKey(ignore: true)
  _$$_DocumentDTOCopyWith<_$_DocumentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
