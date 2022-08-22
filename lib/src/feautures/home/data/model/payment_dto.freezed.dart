// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'payment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaymentDTO _$PaymentDTOFromJson(Map<String, dynamic> json) {
  return _PaymentDTO.fromJson(json);
}

/// @nodoc
mixin _$PaymentDTO {
  @JsonKey(name: 'redirect_url')
  String? get redirectUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'request_url')
  String? get requestUrl => throw _privateConstructorUsedError;
  @JsonKey(name: 'failure_url')
  String? get failureUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaymentDTOCopyWith<PaymentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentDTOCopyWith<$Res> {
  factory $PaymentDTOCopyWith(
          PaymentDTO value, $Res Function(PaymentDTO) then) =
      _$PaymentDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'redirect_url') String? redirectUrl,
      @JsonKey(name: 'request_url') String? requestUrl,
      @JsonKey(name: 'failure_url') String? failureUrl});
}

/// @nodoc
class _$PaymentDTOCopyWithImpl<$Res> implements $PaymentDTOCopyWith<$Res> {
  _$PaymentDTOCopyWithImpl(this._value, this._then);

  final PaymentDTO _value;
  // ignore: unused_field
  final $Res Function(PaymentDTO) _then;

  @override
  $Res call({
    Object? redirectUrl = freezed,
    Object? requestUrl = freezed,
    Object? failureUrl = freezed,
  }) {
    return _then(_value.copyWith(
      redirectUrl: redirectUrl == freezed
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      requestUrl: requestUrl == freezed
          ? _value.requestUrl
          : requestUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      failureUrl: failureUrl == freezed
          ? _value.failureUrl
          : failureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_PaymentDTOCopyWith<$Res>
    implements $PaymentDTOCopyWith<$Res> {
  factory _$$_PaymentDTOCopyWith(
          _$_PaymentDTO value, $Res Function(_$_PaymentDTO) then) =
      __$$_PaymentDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'redirect_url') String? redirectUrl,
      @JsonKey(name: 'request_url') String? requestUrl,
      @JsonKey(name: 'failure_url') String? failureUrl});
}

/// @nodoc
class __$$_PaymentDTOCopyWithImpl<$Res> extends _$PaymentDTOCopyWithImpl<$Res>
    implements _$$_PaymentDTOCopyWith<$Res> {
  __$$_PaymentDTOCopyWithImpl(
      _$_PaymentDTO _value, $Res Function(_$_PaymentDTO) _then)
      : super(_value, (v) => _then(v as _$_PaymentDTO));

  @override
  _$_PaymentDTO get _value => super._value as _$_PaymentDTO;

  @override
  $Res call({
    Object? redirectUrl = freezed,
    Object? requestUrl = freezed,
    Object? failureUrl = freezed,
  }) {
    return _then(_$_PaymentDTO(
      redirectUrl: redirectUrl == freezed
          ? _value.redirectUrl
          : redirectUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      requestUrl: requestUrl == freezed
          ? _value.requestUrl
          : requestUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      failureUrl: failureUrl == freezed
          ? _value.failureUrl
          : failureUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaymentDTO implements _PaymentDTO {
  const _$_PaymentDTO(
      {@JsonKey(name: 'redirect_url') this.redirectUrl,
      @JsonKey(name: 'request_url') this.requestUrl,
      @JsonKey(name: 'failure_url') this.failureUrl});

  factory _$_PaymentDTO.fromJson(Map<String, dynamic> json) =>
      _$$_PaymentDTOFromJson(json);

  @override
  @JsonKey(name: 'redirect_url')
  final String? redirectUrl;
  @override
  @JsonKey(name: 'request_url')
  final String? requestUrl;
  @override
  @JsonKey(name: 'failure_url')
  final String? failureUrl;

  @override
  String toString() {
    return 'PaymentDTO(redirectUrl: $redirectUrl, requestUrl: $requestUrl, failureUrl: $failureUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentDTO &&
            const DeepCollectionEquality()
                .equals(other.redirectUrl, redirectUrl) &&
            const DeepCollectionEquality()
                .equals(other.requestUrl, requestUrl) &&
            const DeepCollectionEquality()
                .equals(other.failureUrl, failureUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(redirectUrl),
      const DeepCollectionEquality().hash(requestUrl),
      const DeepCollectionEquality().hash(failureUrl));

  @JsonKey(ignore: true)
  @override
  _$$_PaymentDTOCopyWith<_$_PaymentDTO> get copyWith =>
      __$$_PaymentDTOCopyWithImpl<_$_PaymentDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaymentDTOToJson(
      this,
    );
  }
}

abstract class _PaymentDTO implements PaymentDTO {
  const factory _PaymentDTO(
      {@JsonKey(name: 'redirect_url') final String? redirectUrl,
      @JsonKey(name: 'request_url') final String? requestUrl,
      @JsonKey(name: 'failure_url') final String? failureUrl}) = _$_PaymentDTO;

  factory _PaymentDTO.fromJson(Map<String, dynamic> json) =
      _$_PaymentDTO.fromJson;

  @override
  @JsonKey(name: 'redirect_url')
  String? get redirectUrl;
  @override
  @JsonKey(name: 'request_url')
  String? get requestUrl;
  @override
  @JsonKey(name: 'failure_url')
  String? get failureUrl;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentDTOCopyWith<_$_PaymentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
