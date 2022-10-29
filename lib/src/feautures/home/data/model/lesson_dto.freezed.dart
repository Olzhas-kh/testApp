// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lesson_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LessonDTO _$LessonDTOFromJson(Map<String, dynamic> json) {
  return _LessonDTO.fromJson(json);
}

/// @nodoc
mixin _$LessonDTO {
  @JsonKey(name: 'time_from')
  String? get timeFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'time_to')
  String? get timeTo => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'type_of_activity')
  String? get typeOfActivity => throw _privateConstructorUsedError;
  String? get audience => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LessonDTOCopyWith<LessonDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LessonDTOCopyWith<$Res> {
  factory $LessonDTOCopyWith(LessonDTO value, $Res Function(LessonDTO) then) =
      _$LessonDTOCopyWithImpl<$Res, LessonDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'time_from') String? timeFrom,
      @JsonKey(name: 'time_to') String? timeTo,
      String? name,
      @JsonKey(name: 'type_of_activity') String? typeOfActivity,
      String? audience});
}

/// @nodoc
class _$LessonDTOCopyWithImpl<$Res, $Val extends LessonDTO>
    implements $LessonDTOCopyWith<$Res> {
  _$LessonDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeFrom = freezed,
    Object? timeTo = freezed,
    Object? name = freezed,
    Object? typeOfActivity = freezed,
    Object? audience = freezed,
  }) {
    return _then(_value.copyWith(
      timeFrom: freezed == timeFrom
          ? _value.timeFrom
          : timeFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      timeTo: freezed == timeTo
          ? _value.timeTo
          : timeTo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      typeOfActivity: freezed == typeOfActivity
          ? _value.typeOfActivity
          : typeOfActivity // ignore: cast_nullable_to_non_nullable
              as String?,
      audience: freezed == audience
          ? _value.audience
          : audience // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LessonDTOCopyWith<$Res> implements $LessonDTOCopyWith<$Res> {
  factory _$$_LessonDTOCopyWith(
          _$_LessonDTO value, $Res Function(_$_LessonDTO) then) =
      __$$_LessonDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'time_from') String? timeFrom,
      @JsonKey(name: 'time_to') String? timeTo,
      String? name,
      @JsonKey(name: 'type_of_activity') String? typeOfActivity,
      String? audience});
}

/// @nodoc
class __$$_LessonDTOCopyWithImpl<$Res>
    extends _$LessonDTOCopyWithImpl<$Res, _$_LessonDTO>
    implements _$$_LessonDTOCopyWith<$Res> {
  __$$_LessonDTOCopyWithImpl(
      _$_LessonDTO _value, $Res Function(_$_LessonDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeFrom = freezed,
    Object? timeTo = freezed,
    Object? name = freezed,
    Object? typeOfActivity = freezed,
    Object? audience = freezed,
  }) {
    return _then(_$_LessonDTO(
      timeFrom: freezed == timeFrom
          ? _value.timeFrom
          : timeFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      timeTo: freezed == timeTo
          ? _value.timeTo
          : timeTo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      typeOfActivity: freezed == typeOfActivity
          ? _value.typeOfActivity
          : typeOfActivity // ignore: cast_nullable_to_non_nullable
              as String?,
      audience: freezed == audience
          ? _value.audience
          : audience // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LessonDTO implements _LessonDTO {
  const _$_LessonDTO(
      {@JsonKey(name: 'time_from') this.timeFrom,
      @JsonKey(name: 'time_to') this.timeTo,
      this.name,
      @JsonKey(name: 'type_of_activity') this.typeOfActivity,
      this.audience});

  factory _$_LessonDTO.fromJson(Map<String, dynamic> json) =>
      _$$_LessonDTOFromJson(json);

  @override
  @JsonKey(name: 'time_from')
  final String? timeFrom;
  @override
  @JsonKey(name: 'time_to')
  final String? timeTo;
  @override
  final String? name;
  @override
  @JsonKey(name: 'type_of_activity')
  final String? typeOfActivity;
  @override
  final String? audience;

  @override
  String toString() {
    return 'LessonDTO(timeFrom: $timeFrom, timeTo: $timeTo, name: $name, typeOfActivity: $typeOfActivity, audience: $audience)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LessonDTO &&
            (identical(other.timeFrom, timeFrom) ||
                other.timeFrom == timeFrom) &&
            (identical(other.timeTo, timeTo) || other.timeTo == timeTo) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.typeOfActivity, typeOfActivity) ||
                other.typeOfActivity == typeOfActivity) &&
            (identical(other.audience, audience) ||
                other.audience == audience));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, timeFrom, timeTo, name, typeOfActivity, audience);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LessonDTOCopyWith<_$_LessonDTO> get copyWith =>
      __$$_LessonDTOCopyWithImpl<_$_LessonDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LessonDTOToJson(
      this,
    );
  }
}

abstract class _LessonDTO implements LessonDTO {
  const factory _LessonDTO(
      {@JsonKey(name: 'time_from') final String? timeFrom,
      @JsonKey(name: 'time_to') final String? timeTo,
      final String? name,
      @JsonKey(name: 'type_of_activity') final String? typeOfActivity,
      final String? audience}) = _$_LessonDTO;

  factory _LessonDTO.fromJson(Map<String, dynamic> json) =
      _$_LessonDTO.fromJson;

  @override
  @JsonKey(name: 'time_from')
  String? get timeFrom;
  @override
  @JsonKey(name: 'time_to')
  String? get timeTo;
  @override
  String? get name;
  @override
  @JsonKey(name: 'type_of_activity')
  String? get typeOfActivity;
  @override
  String? get audience;
  @override
  @JsonKey(ignore: true)
  _$$_LessonDTOCopyWith<_$_LessonDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
