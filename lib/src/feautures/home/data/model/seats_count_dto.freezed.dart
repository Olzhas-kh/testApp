// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'seats_count_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SeatsCountDTO _$SeatsCountDTOFromJson(Map<String, dynamic> json) {
  return _SeatsCountDTO.fromJson(json);
}

/// @nodoc
mixin _$SeatsCountDTO {
  int get price => throw _privateConstructorUsedError;
  List<PlacementDTO>? get placements => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeatsCountDTOCopyWith<SeatsCountDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeatsCountDTOCopyWith<$Res> {
  factory $SeatsCountDTOCopyWith(
          SeatsCountDTO value, $Res Function(SeatsCountDTO) then) =
      _$SeatsCountDTOCopyWithImpl<$Res, SeatsCountDTO>;
  @useResult
  $Res call({int price, List<PlacementDTO>? placements});
}

/// @nodoc
class _$SeatsCountDTOCopyWithImpl<$Res, $Val extends SeatsCountDTO>
    implements $SeatsCountDTOCopyWith<$Res> {
  _$SeatsCountDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? placements = freezed,
  }) {
    return _then(_value.copyWith(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      placements: freezed == placements
          ? _value.placements
          : placements // ignore: cast_nullable_to_non_nullable
              as List<PlacementDTO>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SeatsCountDTOCopyWith<$Res>
    implements $SeatsCountDTOCopyWith<$Res> {
  factory _$$_SeatsCountDTOCopyWith(
          _$_SeatsCountDTO value, $Res Function(_$_SeatsCountDTO) then) =
      __$$_SeatsCountDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int price, List<PlacementDTO>? placements});
}

/// @nodoc
class __$$_SeatsCountDTOCopyWithImpl<$Res>
    extends _$SeatsCountDTOCopyWithImpl<$Res, _$_SeatsCountDTO>
    implements _$$_SeatsCountDTOCopyWith<$Res> {
  __$$_SeatsCountDTOCopyWithImpl(
      _$_SeatsCountDTO _value, $Res Function(_$_SeatsCountDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? price = null,
    Object? placements = freezed,
  }) {
    return _then(_$_SeatsCountDTO(
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as int,
      placements: freezed == placements
          ? _value._placements
          : placements // ignore: cast_nullable_to_non_nullable
              as List<PlacementDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SeatsCountDTO implements _SeatsCountDTO {
  const _$_SeatsCountDTO(
      {required this.price, final List<PlacementDTO>? placements})
      : _placements = placements;

  factory _$_SeatsCountDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SeatsCountDTOFromJson(json);

  @override
  final int price;
  final List<PlacementDTO>? _placements;
  @override
  List<PlacementDTO>? get placements {
    final value = _placements;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SeatsCountDTO(price: $price, placements: $placements)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeatsCountDTO &&
            (identical(other.price, price) || other.price == price) &&
            const DeepCollectionEquality()
                .equals(other._placements, _placements));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, price, const DeepCollectionEquality().hash(_placements));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeatsCountDTOCopyWith<_$_SeatsCountDTO> get copyWith =>
      __$$_SeatsCountDTOCopyWithImpl<_$_SeatsCountDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeatsCountDTOToJson(
      this,
    );
  }
}

abstract class _SeatsCountDTO implements SeatsCountDTO {
  const factory _SeatsCountDTO(
      {required final int price,
      final List<PlacementDTO>? placements}) = _$_SeatsCountDTO;

  factory _SeatsCountDTO.fromJson(Map<String, dynamic> json) =
      _$_SeatsCountDTO.fromJson;

  @override
  int get price;
  @override
  List<PlacementDTO>? get placements;
  @override
  @JsonKey(ignore: true)
  _$$_SeatsCountDTOCopyWith<_$_SeatsCountDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
