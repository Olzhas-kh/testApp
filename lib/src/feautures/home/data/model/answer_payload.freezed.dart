// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'answer_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnswerPayload _$AnswerPayloadFromJson(Map<String, dynamic> json) {
  return _AnswerPayload.fromJson(json);
}

/// @nodoc
mixin _$AnswerPayload {
  @JsonKey(name: 'question_id')
  String get questionID => throw _privateConstructorUsedError;
  @JsonKey(name: 'question_id')
  set questionID(String value) => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;
  set value(dynamic value) => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  bool? get isFile => throw _privateConstructorUsedError;
  @JsonKey(defaultValue: false)
  set isFile(bool? value) => throw _privateConstructorUsedError;
  String? get fieldType => throw _privateConstructorUsedError;
  set fieldType(String? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerPayloadCopyWith<AnswerPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerPayloadCopyWith<$Res> {
  factory $AnswerPayloadCopyWith(
          AnswerPayload value, $Res Function(AnswerPayload) then) =
      _$AnswerPayloadCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'question_id') String questionID,
      dynamic value,
      @JsonKey(defaultValue: false) bool? isFile,
      String? fieldType});
}

/// @nodoc
class _$AnswerPayloadCopyWithImpl<$Res>
    implements $AnswerPayloadCopyWith<$Res> {
  _$AnswerPayloadCopyWithImpl(this._value, this._then);

  final AnswerPayload _value;
  // ignore: unused_field
  final $Res Function(AnswerPayload) _then;

  @override
  $Res call({
    Object? questionID = freezed,
    Object? value = freezed,
    Object? isFile = freezed,
    Object? fieldType = freezed,
  }) {
    return _then(_value.copyWith(
      questionID: questionID == freezed
          ? _value.questionID
          : questionID // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isFile: isFile == freezed
          ? _value.isFile
          : isFile // ignore: cast_nullable_to_non_nullable
              as bool?,
      fieldType: fieldType == freezed
          ? _value.fieldType
          : fieldType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_AnswerPayloadCopyWith<$Res>
    implements $AnswerPayloadCopyWith<$Res> {
  factory _$$_AnswerPayloadCopyWith(
          _$_AnswerPayload value, $Res Function(_$_AnswerPayload) then) =
      __$$_AnswerPayloadCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'question_id') String questionID,
      dynamic value,
      @JsonKey(defaultValue: false) bool? isFile,
      String? fieldType});
}

/// @nodoc
class __$$_AnswerPayloadCopyWithImpl<$Res>
    extends _$AnswerPayloadCopyWithImpl<$Res>
    implements _$$_AnswerPayloadCopyWith<$Res> {
  __$$_AnswerPayloadCopyWithImpl(
      _$_AnswerPayload _value, $Res Function(_$_AnswerPayload) _then)
      : super(_value, (v) => _then(v as _$_AnswerPayload));

  @override
  _$_AnswerPayload get _value => super._value as _$_AnswerPayload;

  @override
  $Res call({
    Object? questionID = freezed,
    Object? value = freezed,
    Object? isFile = freezed,
    Object? fieldType = freezed,
  }) {
    return _then(_$_AnswerPayload(
      questionID: questionID == freezed
          ? _value.questionID
          : questionID // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isFile: isFile == freezed
          ? _value.isFile
          : isFile // ignore: cast_nullable_to_non_nullable
              as bool?,
      fieldType: fieldType == freezed
          ? _value.fieldType
          : fieldType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnswerPayload implements _AnswerPayload {
  _$_AnswerPayload(
      {@JsonKey(name: 'question_id') required this.questionID,
      required this.value,
      @JsonKey(defaultValue: false) this.isFile,
      this.fieldType});

  factory _$_AnswerPayload.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerPayloadFromJson(json);

  @override
  @JsonKey(name: 'question_id')
  String questionID;
  @override
  dynamic value;
  @override
  @JsonKey(defaultValue: false)
  bool? isFile;
  @override
  String? fieldType;

  @override
  String toString() {
    return 'AnswerPayload(questionID: $questionID, value: $value, isFile: $isFile, fieldType: $fieldType)';
  }

  @JsonKey(ignore: true)
  @override
  _$$_AnswerPayloadCopyWith<_$_AnswerPayload> get copyWith =>
      __$$_AnswerPayloadCopyWithImpl<_$_AnswerPayload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerPayloadToJson(
      this,
    );
  }
}

abstract class _AnswerPayload implements AnswerPayload {
  factory _AnswerPayload(
      {@JsonKey(name: 'question_id') required String questionID,
      required dynamic value,
      @JsonKey(defaultValue: false) bool? isFile,
      String? fieldType}) = _$_AnswerPayload;

  factory _AnswerPayload.fromJson(Map<String, dynamic> json) =
      _$_AnswerPayload.fromJson;

  @override
  @JsonKey(name: 'question_id')
  String get questionID;
  @JsonKey(name: 'question_id')
  set questionID(String value);
  @override
  dynamic get value;
  set value(dynamic value);
  @override
  @JsonKey(defaultValue: false)
  bool? get isFile;
  @JsonKey(defaultValue: false)
  set isFile(bool? value);
  @override
  String? get fieldType;
  set fieldType(String? value);
  @override
  @JsonKey(ignore: true)
  _$$_AnswerPayloadCopyWith<_$_AnswerPayload> get copyWith =>
      throw _privateConstructorUsedError;
}
