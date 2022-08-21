// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hostel_info_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HostelInfoDTO _$HostelInfoDTOFromJson(Map<String, dynamic> json) {
  return _HostelInfoDTO.fromJson(json);
}

/// @nodoc
mixin _$HostelInfoDTO {
  @JsonKey(name: "settlement_starts_at")
  String? get settlmentStartsAt => throw _privateConstructorUsedError;
  @JsonKey(name: "settlement_ends_at")
  String? get settlmentEndsAt => throw _privateConstructorUsedError;
  List<String>? get images => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HostelInfoDTOCopyWith<HostelInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HostelInfoDTOCopyWith<$Res> {
  factory $HostelInfoDTOCopyWith(
          HostelInfoDTO value, $Res Function(HostelInfoDTO) then) =
      _$HostelInfoDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: "settlement_starts_at") String? settlmentStartsAt,
      @JsonKey(name: "settlement_ends_at") String? settlmentEndsAt,
      List<String>? images});
}

/// @nodoc
class _$HostelInfoDTOCopyWithImpl<$Res>
    implements $HostelInfoDTOCopyWith<$Res> {
  _$HostelInfoDTOCopyWithImpl(this._value, this._then);

  final HostelInfoDTO _value;
  // ignore: unused_field
  final $Res Function(HostelInfoDTO) _then;

  @override
  $Res call({
    Object? settlmentStartsAt = freezed,
    Object? settlmentEndsAt = freezed,
    Object? images = freezed,
  }) {
    return _then(_value.copyWith(
      settlmentStartsAt: settlmentStartsAt == freezed
          ? _value.settlmentStartsAt
          : settlmentStartsAt // ignore: cast_nullable_to_non_nullable
              as String?,
      settlmentEndsAt: settlmentEndsAt == freezed
          ? _value.settlmentEndsAt
          : settlmentEndsAt // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$$_HostelInfoDTOCopyWith<$Res>
    implements $HostelInfoDTOCopyWith<$Res> {
  factory _$$_HostelInfoDTOCopyWith(
          _$_HostelInfoDTO value, $Res Function(_$_HostelInfoDTO) then) =
      __$$_HostelInfoDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: "settlement_starts_at") String? settlmentStartsAt,
      @JsonKey(name: "settlement_ends_at") String? settlmentEndsAt,
      List<String>? images});
}

/// @nodoc
class __$$_HostelInfoDTOCopyWithImpl<$Res>
    extends _$HostelInfoDTOCopyWithImpl<$Res>
    implements _$$_HostelInfoDTOCopyWith<$Res> {
  __$$_HostelInfoDTOCopyWithImpl(
      _$_HostelInfoDTO _value, $Res Function(_$_HostelInfoDTO) _then)
      : super(_value, (v) => _then(v as _$_HostelInfoDTO));

  @override
  _$_HostelInfoDTO get _value => super._value as _$_HostelInfoDTO;

  @override
  $Res call({
    Object? settlmentStartsAt = freezed,
    Object? settlmentEndsAt = freezed,
    Object? images = freezed,
  }) {
    return _then(_$_HostelInfoDTO(
      settlmentStartsAt: settlmentStartsAt == freezed
          ? _value.settlmentStartsAt
          : settlmentStartsAt // ignore: cast_nullable_to_non_nullable
              as String?,
      settlmentEndsAt: settlmentEndsAt == freezed
          ? _value.settlmentEndsAt
          : settlmentEndsAt // ignore: cast_nullable_to_non_nullable
              as String?,
      images: images == freezed
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HostelInfoDTO implements _HostelInfoDTO {
  const _$_HostelInfoDTO(
      {@JsonKey(name: "settlement_starts_at") this.settlmentStartsAt,
      @JsonKey(name: "settlement_ends_at") this.settlmentEndsAt,
      final List<String>? images})
      : _images = images;

  factory _$_HostelInfoDTO.fromJson(Map<String, dynamic> json) =>
      _$$_HostelInfoDTOFromJson(json);

  @override
  @JsonKey(name: "settlement_starts_at")
  final String? settlmentStartsAt;
  @override
  @JsonKey(name: "settlement_ends_at")
  final String? settlmentEndsAt;
  final List<String>? _images;
  @override
  List<String>? get images {
    final value = _images;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HostelInfoDTO(settlmentStartsAt: $settlmentStartsAt, settlmentEndsAt: $settlmentEndsAt, images: $images)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HostelInfoDTO &&
            const DeepCollectionEquality()
                .equals(other.settlmentStartsAt, settlmentStartsAt) &&
            const DeepCollectionEquality()
                .equals(other.settlmentEndsAt, settlmentEndsAt) &&
            const DeepCollectionEquality().equals(other._images, _images));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(settlmentStartsAt),
      const DeepCollectionEquality().hash(settlmentEndsAt),
      const DeepCollectionEquality().hash(_images));

  @JsonKey(ignore: true)
  @override
  _$$_HostelInfoDTOCopyWith<_$_HostelInfoDTO> get copyWith =>
      __$$_HostelInfoDTOCopyWithImpl<_$_HostelInfoDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HostelInfoDTOToJson(
      this,
    );
  }
}

abstract class _HostelInfoDTO implements HostelInfoDTO {
  const factory _HostelInfoDTO(
      {@JsonKey(name: "settlement_starts_at") final String? settlmentStartsAt,
      @JsonKey(name: "settlement_ends_at") final String? settlmentEndsAt,
      final List<String>? images}) = _$_HostelInfoDTO;

  factory _HostelInfoDTO.fromJson(Map<String, dynamic> json) =
      _$_HostelInfoDTO.fromJson;

  @override
  @JsonKey(name: "settlement_starts_at")
  String? get settlmentStartsAt;
  @override
  @JsonKey(name: "settlement_ends_at")
  String? get settlmentEndsAt;
  @override
  List<String>? get images;
  @override
  @JsonKey(ignore: true)
  _$$_HostelInfoDTOCopyWith<_$_HostelInfoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
