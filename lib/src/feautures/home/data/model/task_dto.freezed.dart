// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'task_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TaskDTO _$TaskDTOFromJson(Map<String, dynamic> json) {
  return _TaskDTO.fromJson(json);
}

/// @nodoc
mixin _$TaskDTO {
  String? get name => throw _privateConstructorUsedError;
  String? get grade => throw _privateConstructorUsedError;
  @JsonKey(name: 'unlock_at')
  String? get unlocakAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'lock_at')
  String? get lockAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TaskDTOCopyWith<TaskDTO> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskDTOCopyWith<$Res> {
  factory $TaskDTOCopyWith(TaskDTO value, $Res Function(TaskDTO) then) =
      _$TaskDTOCopyWithImpl<$Res, TaskDTO>;
  @useResult
  $Res call(
      {String? name,
      String? grade,
      @JsonKey(name: 'unlock_at') String? unlocakAt,
      @JsonKey(name: 'lock_at') String? lockAt});
}

/// @nodoc
class _$TaskDTOCopyWithImpl<$Res, $Val extends TaskDTO>
    implements $TaskDTOCopyWith<$Res> {
  _$TaskDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? grade = freezed,
    Object? unlocakAt = freezed,
    Object? lockAt = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String?,
      unlocakAt: freezed == unlocakAt
          ? _value.unlocakAt
          : unlocakAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lockAt: freezed == lockAt
          ? _value.lockAt
          : lockAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TaskDTOCopyWith<$Res> implements $TaskDTOCopyWith<$Res> {
  factory _$$_TaskDTOCopyWith(
          _$_TaskDTO value, $Res Function(_$_TaskDTO) then) =
      __$$_TaskDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? grade,
      @JsonKey(name: 'unlock_at') String? unlocakAt,
      @JsonKey(name: 'lock_at') String? lockAt});
}

/// @nodoc
class __$$_TaskDTOCopyWithImpl<$Res>
    extends _$TaskDTOCopyWithImpl<$Res, _$_TaskDTO>
    implements _$$_TaskDTOCopyWith<$Res> {
  __$$_TaskDTOCopyWithImpl(_$_TaskDTO _value, $Res Function(_$_TaskDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? grade = freezed,
    Object? unlocakAt = freezed,
    Object? lockAt = freezed,
  }) {
    return _then(_$_TaskDTO(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      grade: freezed == grade
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String?,
      unlocakAt: freezed == unlocakAt
          ? _value.unlocakAt
          : unlocakAt // ignore: cast_nullable_to_non_nullable
              as String?,
      lockAt: freezed == lockAt
          ? _value.lockAt
          : lockAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TaskDTO implements _TaskDTO {
  const _$_TaskDTO(
      {this.name,
      this.grade,
      @JsonKey(name: 'unlock_at') this.unlocakAt,
      @JsonKey(name: 'lock_at') this.lockAt});

  factory _$_TaskDTO.fromJson(Map<String, dynamic> json) =>
      _$$_TaskDTOFromJson(json);

  @override
  final String? name;
  @override
  final String? grade;
  @override
  @JsonKey(name: 'unlock_at')
  final String? unlocakAt;
  @override
  @JsonKey(name: 'lock_at')
  final String? lockAt;

  @override
  String toString() {
    return 'TaskDTO(name: $name, grade: $grade, unlocakAt: $unlocakAt, lockAt: $lockAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TaskDTO &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.grade, grade) || other.grade == grade) &&
            (identical(other.unlocakAt, unlocakAt) ||
                other.unlocakAt == unlocakAt) &&
            (identical(other.lockAt, lockAt) || other.lockAt == lockAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, grade, unlocakAt, lockAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TaskDTOCopyWith<_$_TaskDTO> get copyWith =>
      __$$_TaskDTOCopyWithImpl<_$_TaskDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TaskDTOToJson(
      this,
    );
  }
}

abstract class _TaskDTO implements TaskDTO {
  const factory _TaskDTO(
      {final String? name,
      final String? grade,
      @JsonKey(name: 'unlock_at') final String? unlocakAt,
      @JsonKey(name: 'lock_at') final String? lockAt}) = _$_TaskDTO;

  factory _TaskDTO.fromJson(Map<String, dynamic> json) = _$_TaskDTO.fromJson;

  @override
  String? get name;
  @override
  String? get grade;
  @override
  @JsonKey(name: 'unlock_at')
  String? get unlocakAt;
  @override
  @JsonKey(name: 'lock_at')
  String? get lockAt;
  @override
  @JsonKey(ignore: true)
  _$$_TaskDTOCopyWith<_$_TaskDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
