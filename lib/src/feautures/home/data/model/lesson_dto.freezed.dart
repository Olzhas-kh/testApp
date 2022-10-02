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
      _$LessonDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'time_from') String? timeFrom,
      @JsonKey(name: 'time_to') String? timeTo,
      String? name,
      @JsonKey(name: 'type_of_activity') String? typeOfActivity,
      String? audience});
}

/// @nodoc
class _$LessonDTOCopyWithImpl<$Res> implements $LessonDTOCopyWith<$Res> {
  _$LessonDTOCopyWithImpl(this._value, this._then);

  final LessonDTO _value;
  // ignore: unused_field
  final $Res Function(LessonDTO) _then;

  @override
  $Res call({
    Object? timeFrom = freezed,
    Object? timeTo = freezed,
    Object? name = freezed,
    Object? typeOfActivity = freezed,
    Object? audience = freezed,
  }) {
    return _then(_value.copyWith(
      timeFrom: timeFrom == freezed
          ? _value.timeFrom
          : timeFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      timeTo: timeTo == freezed
          ? _value.timeTo
          : timeTo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      typeOfActivity: typeOfActivity == freezed
          ? _value.typeOfActivity
          : typeOfActivity // ignore: cast_nullable_to_non_nullable
              as String?,
      audience: audience == freezed
          ? _value.audience
          : audience // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_LessonDTOCopyWith<$Res> implements $LessonDTOCopyWith<$Res> {
  factory _$$_LessonDTOCopyWith(
          _$_LessonDTO value, $Res Function(_$_LessonDTO) then) =
      __$$_LessonDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'time_from') String? timeFrom,
      @JsonKey(name: 'time_to') String? timeTo,
      String? name,
      @JsonKey(name: 'type_of_activity') String? typeOfActivity,
      String? audience});
}

/// @nodoc
class __$$_LessonDTOCopyWithImpl<$Res> extends _$LessonDTOCopyWithImpl<$Res>
    implements _$$_LessonDTOCopyWith<$Res> {
  __$$_LessonDTOCopyWithImpl(
      _$_LessonDTO _value, $Res Function(_$_LessonDTO) _then)
      : super(_value, (v) => _then(v as _$_LessonDTO));

  @override
  _$_LessonDTO get _value => super._value as _$_LessonDTO;

  @override
  $Res call({
    Object? timeFrom = freezed,
    Object? timeTo = freezed,
    Object? name = freezed,
    Object? typeOfActivity = freezed,
    Object? audience = freezed,
  }) {
    return _then(_$_LessonDTO(
      timeFrom: timeFrom == freezed
          ? _value.timeFrom
          : timeFrom // ignore: cast_nullable_to_non_nullable
              as String?,
      timeTo: timeTo == freezed
          ? _value.timeTo
          : timeTo // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      typeOfActivity: typeOfActivity == freezed
          ? _value.typeOfActivity
          : typeOfActivity // ignore: cast_nullable_to_non_nullable
              as String?,
      audience: audience == freezed
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
            const DeepCollectionEquality().equals(other.timeFrom, timeFrom) &&
            const DeepCollectionEquality().equals(other.timeTo, timeTo) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.typeOfActivity, typeOfActivity) &&
            const DeepCollectionEquality().equals(other.audience, audience));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timeFrom),
      const DeepCollectionEquality().hash(timeTo),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(typeOfActivity),
      const DeepCollectionEquality().hash(audience));

  @JsonKey(ignore: true)
  @override
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
