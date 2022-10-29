// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'placement_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PlacementDTO _$PlacementDTOFromJson(Map<String, dynamic> json) {
  return _PlacementDTO.fromJson(json);
}

/// @nodoc
mixin _$PlacementDTO {
  String get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'available_seats_count')
  int? get availableSeatsCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlacementDTOCopyWith<PlacementDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacementDTOCopyWith<$Res> {
  factory $PlacementDTOCopyWith(
          PlacementDTO value, $Res Function(PlacementDTO) then) =
      _$PlacementDTOCopyWithImpl<$Res, PlacementDTO>;
  @useResult
  $Res call(
      {String id,
      String? name,
      @JsonKey(name: 'available_seats_count') int? availableSeatsCount});
}

/// @nodoc
class _$PlacementDTOCopyWithImpl<$Res, $Val extends PlacementDTO>
    implements $PlacementDTOCopyWith<$Res> {
  _$PlacementDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? availableSeatsCount = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      availableSeatsCount: freezed == availableSeatsCount
          ? _value.availableSeatsCount
          : availableSeatsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PlacementDTOCopyWith<$Res>
    implements $PlacementDTOCopyWith<$Res> {
  factory _$$_PlacementDTOCopyWith(
          _$_PlacementDTO value, $Res Function(_$_PlacementDTO) then) =
      __$$_PlacementDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? name,
      @JsonKey(name: 'available_seats_count') int? availableSeatsCount});
}

/// @nodoc
class __$$_PlacementDTOCopyWithImpl<$Res>
    extends _$PlacementDTOCopyWithImpl<$Res, _$_PlacementDTO>
    implements _$$_PlacementDTOCopyWith<$Res> {
  __$$_PlacementDTOCopyWithImpl(
      _$_PlacementDTO _value, $Res Function(_$_PlacementDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = freezed,
    Object? availableSeatsCount = freezed,
  }) {
    return _then(_$_PlacementDTO(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      availableSeatsCount: freezed == availableSeatsCount
          ? _value.availableSeatsCount
          : availableSeatsCount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PlacementDTO implements _PlacementDTO {
  const _$_PlacementDTO(
      {required this.id,
      this.name,
      @JsonKey(name: 'available_seats_count') this.availableSeatsCount});

  factory _$_PlacementDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PlacementDTOFromJson(json);

  @override
  final String id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'available_seats_count')
  final int? availableSeatsCount;

  @override
  String toString() {
    return 'PlacementDTO(id: $id, name: $name, availableSeatsCount: $availableSeatsCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PlacementDTO &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.availableSeatsCount, availableSeatsCount) ||
                other.availableSeatsCount == availableSeatsCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, availableSeatsCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PlacementDTOCopyWith<_$_PlacementDTO> get copyWith =>
      __$$_PlacementDTOCopyWithImpl<_$_PlacementDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PlacementDTOToJson(
      this,
    );
  }
}

abstract class _PlacementDTO implements PlacementDTO {
  const factory _PlacementDTO(
      {required final String id,
      final String? name,
      @JsonKey(name: 'available_seats_count')
          final int? availableSeatsCount}) = _$_PlacementDTO;

  factory _PlacementDTO.fromJson(Map<String, dynamic> json) =
      _$_PlacementDTO.fromJson;

  @override
  String get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'available_seats_count')
  int? get availableSeatsCount;
  @override
  @JsonKey(ignore: true)
  _$$_PlacementDTOCopyWith<_$_PlacementDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
