// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'banner_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BannerDTO _$BannerDTOFromJson(Map<String, dynamic> json) {
  return _BannerDTO.fromJson(json);
}

/// @nodoc
mixin _$BannerDTO {
  int get id => throw _privateConstructorUsedError;
  String? get link => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BannerDTOCopyWith<BannerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BannerDTOCopyWith<$Res> {
  factory $BannerDTOCopyWith(BannerDTO value, $Res Function(BannerDTO) then) =
      _$BannerDTOCopyWithImpl<$Res>;
  $Res call({int id, String? link, String? image});
}

/// @nodoc
class _$BannerDTOCopyWithImpl<$Res> implements $BannerDTOCopyWith<$Res> {
  _$BannerDTOCopyWithImpl(this._value, this._then);

  final BannerDTO _value;
  // ignore: unused_field
  final $Res Function(BannerDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? link = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_BannerDTOCopyWith<$Res> implements $BannerDTOCopyWith<$Res> {
  factory _$$_BannerDTOCopyWith(
          _$_BannerDTO value, $Res Function(_$_BannerDTO) then) =
      __$$_BannerDTOCopyWithImpl<$Res>;
  @override
  $Res call({int id, String? link, String? image});
}

/// @nodoc
class __$$_BannerDTOCopyWithImpl<$Res> extends _$BannerDTOCopyWithImpl<$Res>
    implements _$$_BannerDTOCopyWith<$Res> {
  __$$_BannerDTOCopyWithImpl(
      _$_BannerDTO _value, $Res Function(_$_BannerDTO) _then)
      : super(_value, (v) => _then(v as _$_BannerDTO));

  @override
  _$_BannerDTO get _value => super._value as _$_BannerDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? link = freezed,
    Object? image = freezed,
  }) {
    return _then(_$_BannerDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      link: link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BannerDTO implements _BannerDTO {
  const _$_BannerDTO({required this.id, this.link, this.image});

  factory _$_BannerDTO.fromJson(Map<String, dynamic> json) =>
      _$$_BannerDTOFromJson(json);

  @override
  final int id;
  @override
  final String? link;
  @override
  final String? image;

  @override
  String toString() {
    return 'BannerDTO(id: $id, link: $link, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BannerDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.link, link) &&
            const DeepCollectionEquality().equals(other.image, image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(link),
      const DeepCollectionEquality().hash(image));

  @JsonKey(ignore: true)
  @override
  _$$_BannerDTOCopyWith<_$_BannerDTO> get copyWith =>
      __$$_BannerDTOCopyWithImpl<_$_BannerDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BannerDTOToJson(
      this,
    );
  }
}

abstract class _BannerDTO implements BannerDTO {
  const factory _BannerDTO(
      {required final int id,
      final String? link,
      final String? image}) = _$_BannerDTO;

  factory _BannerDTO.fromJson(Map<String, dynamic> json) =
      _$_BannerDTO.fromJson;

  @override
  int get id;
  @override
  String? get link;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$_BannerDTOCopyWith<_$_BannerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
