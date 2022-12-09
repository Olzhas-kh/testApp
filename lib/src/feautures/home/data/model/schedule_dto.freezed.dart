// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'schedule_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ScheduleDTO _$ScheduleDTOFromJson(Map<String, dynamic> json) {
  return _ScheduleDTO.fromJson(json);
}

/// @nodoc
mixin _$ScheduleDTO {
  String? get week => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  List<LessonDTO>? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ScheduleDTOCopyWith<ScheduleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ScheduleDTOCopyWith<$Res> {
  factory $ScheduleDTOCopyWith(
          ScheduleDTO value, $Res Function(ScheduleDTO) then) =
      _$ScheduleDTOCopyWithImpl<$Res, ScheduleDTO>;
  @useResult
  $Res call({String? week, @JsonKey(name: 'data') List<LessonDTO>? data});
}

/// @nodoc
class _$ScheduleDTOCopyWithImpl<$Res, $Val extends ScheduleDTO>
    implements $ScheduleDTOCopyWith<$Res> {
  _$ScheduleDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? week = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      week: freezed == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LessonDTO>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ScheduleDTOCopyWith<$Res>
    implements $ScheduleDTOCopyWith<$Res> {
  factory _$$_ScheduleDTOCopyWith(
          _$_ScheduleDTO value, $Res Function(_$_ScheduleDTO) then) =
      __$$_ScheduleDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? week, @JsonKey(name: 'data') List<LessonDTO>? data});
}

/// @nodoc
class __$$_ScheduleDTOCopyWithImpl<$Res>
    extends _$ScheduleDTOCopyWithImpl<$Res, _$_ScheduleDTO>
    implements _$$_ScheduleDTOCopyWith<$Res> {
  __$$_ScheduleDTOCopyWithImpl(
      _$_ScheduleDTO _value, $Res Function(_$_ScheduleDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? week = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_ScheduleDTO(
      week: freezed == week
          ? _value.week
          : week // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<LessonDTO>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ScheduleDTO implements _ScheduleDTO {
  const _$_ScheduleDTO(
      {this.week, @JsonKey(name: 'data') final List<LessonDTO>? data})
      : _data = data;

  factory _$_ScheduleDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ScheduleDTOFromJson(json);

  @override
  final String? week;
  final List<LessonDTO>? _data;
  @override
  @JsonKey(name: 'data')
  List<LessonDTO>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ScheduleDTO(week: $week, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScheduleDTO &&
            (identical(other.week, week) || other.week == week) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, week, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ScheduleDTOCopyWith<_$_ScheduleDTO> get copyWith =>
      __$$_ScheduleDTOCopyWithImpl<_$_ScheduleDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ScheduleDTOToJson(
      this,
    );
  }
}

abstract class _ScheduleDTO implements ScheduleDTO {
  const factory _ScheduleDTO(
      {final String? week,
      @JsonKey(name: 'data') final List<LessonDTO>? data}) = _$_ScheduleDTO;

  factory _ScheduleDTO.fromJson(Map<String, dynamic> json) =
      _$_ScheduleDTO.fromJson;

  @override
  String? get week;
  @override
  @JsonKey(name: 'data')
  List<LessonDTO>? get data;
  @override
  @JsonKey(ignore: true)
  _$$_ScheduleDTOCopyWith<_$_ScheduleDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
