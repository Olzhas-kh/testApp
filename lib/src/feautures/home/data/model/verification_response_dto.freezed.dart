// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'verification_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerificationResponseDTO _$VerificationResponseDTOFromJson(
    Map<String, dynamic> json) {
  return _VerificationResponseDTO.fromJson(json);
}

/// @nodoc
mixin _$VerificationResponseDTO {
  @JsonKey(name: 'payment_status')
  bool? get paymentStatus => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  ArendatorDTO? get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationResponseDTOCopyWith<VerificationResponseDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationResponseDTOCopyWith<$Res> {
  factory $VerificationResponseDTOCopyWith(VerificationResponseDTO value,
          $Res Function(VerificationResponseDTO) then) =
      _$VerificationResponseDTOCopyWithImpl<$Res, VerificationResponseDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_status') bool? paymentStatus,
      String? message,
      ArendatorDTO? data});

  $ArendatorDTOCopyWith<$Res>? get data;
}

/// @nodoc
class _$VerificationResponseDTOCopyWithImpl<$Res,
        $Val extends VerificationResponseDTO>
    implements $VerificationResponseDTOCopyWith<$Res> {
  _$VerificationResponseDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentStatus = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ArendatorDTO?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ArendatorDTOCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $ArendatorDTOCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_VerificationResponseDTOCopyWith<$Res>
    implements $VerificationResponseDTOCopyWith<$Res> {
  factory _$$_VerificationResponseDTOCopyWith(_$_VerificationResponseDTO value,
          $Res Function(_$_VerificationResponseDTO) then) =
      __$$_VerificationResponseDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'payment_status') bool? paymentStatus,
      String? message,
      ArendatorDTO? data});

  @override
  $ArendatorDTOCopyWith<$Res>? get data;
}

/// @nodoc
class __$$_VerificationResponseDTOCopyWithImpl<$Res>
    extends _$VerificationResponseDTOCopyWithImpl<$Res,
        _$_VerificationResponseDTO>
    implements _$$_VerificationResponseDTOCopyWith<$Res> {
  __$$_VerificationResponseDTOCopyWithImpl(_$_VerificationResponseDTO _value,
      $Res Function(_$_VerificationResponseDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? paymentStatus = freezed,
    Object? message = freezed,
    Object? data = freezed,
  }) {
    return _then(_$_VerificationResponseDTO(
      paymentStatus: freezed == paymentStatus
          ? _value.paymentStatus
          : paymentStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ArendatorDTO?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerificationResponseDTO implements _VerificationResponseDTO {
  const _$_VerificationResponseDTO(
      {@JsonKey(name: 'payment_status') required this.paymentStatus,
      required this.message,
      required this.data});

  factory _$_VerificationResponseDTO.fromJson(Map<String, dynamic> json) =>
      _$$_VerificationResponseDTOFromJson(json);

  @override
  @JsonKey(name: 'payment_status')
  final bool? paymentStatus;
  @override
  final String? message;
  @override
  final ArendatorDTO? data;

  @override
  String toString() {
    return 'VerificationResponseDTO(paymentStatus: $paymentStatus, message: $message, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerificationResponseDTO &&
            (identical(other.paymentStatus, paymentStatus) ||
                other.paymentStatus == paymentStatus) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, paymentStatus, message, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerificationResponseDTOCopyWith<_$_VerificationResponseDTO>
      get copyWith =>
          __$$_VerificationResponseDTOCopyWithImpl<_$_VerificationResponseDTO>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerificationResponseDTOToJson(
      this,
    );
  }
}

abstract class _VerificationResponseDTO implements VerificationResponseDTO {
  const factory _VerificationResponseDTO(
      {@JsonKey(name: 'payment_status') required final bool? paymentStatus,
      required final String? message,
      required final ArendatorDTO? data}) = _$_VerificationResponseDTO;

  factory _VerificationResponseDTO.fromJson(Map<String, dynamic> json) =
      _$_VerificationResponseDTO.fromJson;

  @override
  @JsonKey(name: 'payment_status')
  bool? get paymentStatus;
  @override
  String? get message;
  @override
  ArendatorDTO? get data;
  @override
  @JsonKey(ignore: true)
  _$$_VerificationResponseDTOCopyWith<_$_VerificationResponseDTO>
      get copyWith => throw _privateConstructorUsedError;
}

ArendatorDTO _$ArendatorDTOFromJson(Map<String, dynamic> json) {
  return _ArendatorDTO.fromJson(json);
}

/// @nodoc
mixin _$ArendatorDTO {
  @JsonKey(name: 'fullname')
  String? get fullName => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArendatorDTOCopyWith<ArendatorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArendatorDTOCopyWith<$Res> {
  factory $ArendatorDTOCopyWith(
          ArendatorDTO value, $Res Function(ArendatorDTO) then) =
      _$ArendatorDTOCopyWithImpl<$Res, ArendatorDTO>;
  @useResult
  $Res call({@JsonKey(name: 'fullname') String? fullName, int? amount});
}

/// @nodoc
class _$ArendatorDTOCopyWithImpl<$Res, $Val extends ArendatorDTO>
    implements $ArendatorDTOCopyWith<$Res> {
  _$ArendatorDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? amount = freezed,
  }) {
    return _then(_value.copyWith(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArendatorDTOCopyWith<$Res>
    implements $ArendatorDTOCopyWith<$Res> {
  factory _$$_ArendatorDTOCopyWith(
          _$_ArendatorDTO value, $Res Function(_$_ArendatorDTO) then) =
      __$$_ArendatorDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'fullname') String? fullName, int? amount});
}

/// @nodoc
class __$$_ArendatorDTOCopyWithImpl<$Res>
    extends _$ArendatorDTOCopyWithImpl<$Res, _$_ArendatorDTO>
    implements _$$_ArendatorDTOCopyWith<$Res> {
  __$$_ArendatorDTOCopyWithImpl(
      _$_ArendatorDTO _value, $Res Function(_$_ArendatorDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullName = freezed,
    Object? amount = freezed,
  }) {
    return _then(_$_ArendatorDTO(
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: freezed == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArendatorDTO implements _ArendatorDTO {
  const _$_ArendatorDTO(
      {@JsonKey(name: 'fullname') this.fullName, this.amount});

  factory _$_ArendatorDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ArendatorDTOFromJson(json);

  @override
  @JsonKey(name: 'fullname')
  final String? fullName;
  @override
  final int? amount;

  @override
  String toString() {
    return 'ArendatorDTO(fullName: $fullName, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArendatorDTO &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fullName, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArendatorDTOCopyWith<_$_ArendatorDTO> get copyWith =>
      __$$_ArendatorDTOCopyWithImpl<_$_ArendatorDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArendatorDTOToJson(
      this,
    );
  }
}

abstract class _ArendatorDTO implements ArendatorDTO {
  const factory _ArendatorDTO(
      {@JsonKey(name: 'fullname') final String? fullName,
      final int? amount}) = _$_ArendatorDTO;

  factory _ArendatorDTO.fromJson(Map<String, dynamic> json) =
      _$_ArendatorDTO.fromJson;

  @override
  @JsonKey(name: 'fullname')
  String? get fullName;
  @override
  int? get amount;
  @override
  @JsonKey(ignore: true)
  _$$_ArendatorDTOCopyWith<_$_ArendatorDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
