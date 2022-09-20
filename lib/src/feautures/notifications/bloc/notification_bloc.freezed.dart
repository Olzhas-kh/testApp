// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'notification_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationEventTearOff {
  const _$NotificationEventTearOff();

  _FirebaseInit firebaseInit({required BuildContext context}) {
    return _FirebaseInit(
      context: context,
    );
  }

  _GetNotificationHiveBox getNotificationHiveBox() {
    return const _GetNotificationHiveBox();
  }
}

/// @nodoc
const $NotificationEvent = _$NotificationEventTearOff();

/// @nodoc
mixin _$NotificationEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) firebaseInit,
    required TResult Function() getNotificationHiveBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context)? firebaseInit,
    TResult Function()? getNotificationHiveBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? firebaseInit,
    TResult Function()? getNotificationHiveBox,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseInit value) firebaseInit,
    required TResult Function(_GetNotificationHiveBox value)
        getNotificationHiveBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirebaseInit value)? firebaseInit,
    TResult Function(_GetNotificationHiveBox value)? getNotificationHiveBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseInit value)? firebaseInit,
    TResult Function(_GetNotificationHiveBox value)? getNotificationHiveBox,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationEventCopyWith<$Res> {
  factory $NotificationEventCopyWith(
          NotificationEvent value, $Res Function(NotificationEvent) then) =
      _$NotificationEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationEventCopyWithImpl<$Res>
    implements $NotificationEventCopyWith<$Res> {
  _$NotificationEventCopyWithImpl(this._value, this._then);

  final NotificationEvent _value;
  // ignore: unused_field
  final $Res Function(NotificationEvent) _then;
}

/// @nodoc
abstract class _$FirebaseInitCopyWith<$Res> {
  factory _$FirebaseInitCopyWith(
          _FirebaseInit value, $Res Function(_FirebaseInit) then) =
      __$FirebaseInitCopyWithImpl<$Res>;
  $Res call({BuildContext context});
}

/// @nodoc
class __$FirebaseInitCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements _$FirebaseInitCopyWith<$Res> {
  __$FirebaseInitCopyWithImpl(
      _FirebaseInit _value, $Res Function(_FirebaseInit) _then)
      : super(_value, (v) => _then(v as _FirebaseInit));

  @override
  _FirebaseInit get _value => super._value as _FirebaseInit;

  @override
  $Res call({
    Object? context = freezed,
  }) {
    return _then(_FirebaseInit(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
    ));
  }
}

/// @nodoc

class _$_FirebaseInit with DiagnosticableTreeMixin implements _FirebaseInit {
  const _$_FirebaseInit({required this.context});

  @override
  final BuildContext context;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationEvent.firebaseInit(context: $context)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationEvent.firebaseInit'))
      ..add(DiagnosticsProperty('context', context));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FirebaseInit &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$FirebaseInitCopyWith<_FirebaseInit> get copyWith =>
      __$FirebaseInitCopyWithImpl<_FirebaseInit>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) firebaseInit,
    required TResult Function() getNotificationHiveBox,
  }) {
    return firebaseInit(context);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context)? firebaseInit,
    TResult Function()? getNotificationHiveBox,
  }) {
    return firebaseInit?.call(context);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? firebaseInit,
    TResult Function()? getNotificationHiveBox,
    required TResult orElse(),
  }) {
    if (firebaseInit != null) {
      return firebaseInit(context);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseInit value) firebaseInit,
    required TResult Function(_GetNotificationHiveBox value)
        getNotificationHiveBox,
  }) {
    return firebaseInit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirebaseInit value)? firebaseInit,
    TResult Function(_GetNotificationHiveBox value)? getNotificationHiveBox,
  }) {
    return firebaseInit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseInit value)? firebaseInit,
    TResult Function(_GetNotificationHiveBox value)? getNotificationHiveBox,
    required TResult orElse(),
  }) {
    if (firebaseInit != null) {
      return firebaseInit(this);
    }
    return orElse();
  }
}

abstract class _FirebaseInit implements NotificationEvent {
  const factory _FirebaseInit({required BuildContext context}) =
      _$_FirebaseInit;

  BuildContext get context;
  @JsonKey(ignore: true)
  _$FirebaseInitCopyWith<_FirebaseInit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GetNotificationHiveBoxCopyWith<$Res> {
  factory _$GetNotificationHiveBoxCopyWith(_GetNotificationHiveBox value,
          $Res Function(_GetNotificationHiveBox) then) =
      __$GetNotificationHiveBoxCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetNotificationHiveBoxCopyWithImpl<$Res>
    extends _$NotificationEventCopyWithImpl<$Res>
    implements _$GetNotificationHiveBoxCopyWith<$Res> {
  __$GetNotificationHiveBoxCopyWithImpl(_GetNotificationHiveBox _value,
      $Res Function(_GetNotificationHiveBox) _then)
      : super(_value, (v) => _then(v as _GetNotificationHiveBox));

  @override
  _GetNotificationHiveBox get _value => super._value as _GetNotificationHiveBox;
}

/// @nodoc

class _$_GetNotificationHiveBox
    with DiagnosticableTreeMixin
    implements _GetNotificationHiveBox {
  const _$_GetNotificationHiveBox();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationEvent.getNotificationHiveBox()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty(
        'type', 'NotificationEvent.getNotificationHiveBox'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _GetNotificationHiveBox);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context) firebaseInit,
    required TResult Function() getNotificationHiveBox,
  }) {
    return getNotificationHiveBox();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context)? firebaseInit,
    TResult Function()? getNotificationHiveBox,
  }) {
    return getNotificationHiveBox?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context)? firebaseInit,
    TResult Function()? getNotificationHiveBox,
    required TResult orElse(),
  }) {
    if (getNotificationHiveBox != null) {
      return getNotificationHiveBox();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FirebaseInit value) firebaseInit,
    required TResult Function(_GetNotificationHiveBox value)
        getNotificationHiveBox,
  }) {
    return getNotificationHiveBox(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FirebaseInit value)? firebaseInit,
    TResult Function(_GetNotificationHiveBox value)? getNotificationHiveBox,
  }) {
    return getNotificationHiveBox?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FirebaseInit value)? firebaseInit,
    TResult Function(_GetNotificationHiveBox value)? getNotificationHiveBox,
    required TResult orElse(),
  }) {
    if (getNotificationHiveBox != null) {
      return getNotificationHiveBox(this);
    }
    return orElse();
  }
}

abstract class _GetNotificationHiveBox implements NotificationEvent {
  const factory _GetNotificationHiveBox() = _$_GetNotificationHiveBox;
}

/// @nodoc
class _$NotificationStateTearOff {
  const _$NotificationStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _ErrorOpenHiveBox errorOpenHiveBox(
      {String message = 'Ошибка при заагрузке уведомлении!'}) {
    return _ErrorOpenHiveBox(
      message: message,
    );
  }

  _SuccessNotificationHiveBox successNotificationHiveBox(
      {required Box<NotificationEntity> box}) {
    return _SuccessNotificationHiveBox(
      box: box,
    );
  }
}

/// @nodoc
const $NotificationState = _$NotificationStateTearOff();

/// @nodoc
mixin _$NotificationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) errorOpenHiveBox,
    required TResult Function(Box<NotificationEntity> box)
        successNotificationHiveBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? errorOpenHiveBox,
    TResult Function(Box<NotificationEntity> box)? successNotificationHiveBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? errorOpenHiveBox,
    TResult Function(Box<NotificationEntity> box)? successNotificationHiveBox,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ErrorOpenHiveBox value) errorOpenHiveBox,
    required TResult Function(_SuccessNotificationHiveBox value)
        successNotificationHiveBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ErrorOpenHiveBox value)? errorOpenHiveBox,
    TResult Function(_SuccessNotificationHiveBox value)?
        successNotificationHiveBox,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ErrorOpenHiveBox value)? errorOpenHiveBox,
    TResult Function(_SuccessNotificationHiveBox value)?
        successNotificationHiveBox,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  final NotificationState _value;
  // ignore: unused_field
  final $Res Function(NotificationState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$NotificationStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'NotificationState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) errorOpenHiveBox,
    required TResult Function(Box<NotificationEntity> box)
        successNotificationHiveBox,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? errorOpenHiveBox,
    TResult Function(Box<NotificationEntity> box)? successNotificationHiveBox,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? errorOpenHiveBox,
    TResult Function(Box<NotificationEntity> box)? successNotificationHiveBox,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ErrorOpenHiveBox value) errorOpenHiveBox,
    required TResult Function(_SuccessNotificationHiveBox value)
        successNotificationHiveBox,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ErrorOpenHiveBox value)? errorOpenHiveBox,
    TResult Function(_SuccessNotificationHiveBox value)?
        successNotificationHiveBox,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ErrorOpenHiveBox value)? errorOpenHiveBox,
    TResult Function(_SuccessNotificationHiveBox value)?
        successNotificationHiveBox,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NotificationState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$ErrorOpenHiveBoxCopyWith<$Res> {
  factory _$ErrorOpenHiveBoxCopyWith(
          _ErrorOpenHiveBox value, $Res Function(_ErrorOpenHiveBox) then) =
      __$ErrorOpenHiveBoxCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$ErrorOpenHiveBoxCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements _$ErrorOpenHiveBoxCopyWith<$Res> {
  __$ErrorOpenHiveBoxCopyWithImpl(
      _ErrorOpenHiveBox _value, $Res Function(_ErrorOpenHiveBox) _then)
      : super(_value, (v) => _then(v as _ErrorOpenHiveBox));

  @override
  _ErrorOpenHiveBox get _value => super._value as _ErrorOpenHiveBox;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_ErrorOpenHiveBox(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ErrorOpenHiveBox
    with DiagnosticableTreeMixin
    implements _ErrorOpenHiveBox {
  const _$_ErrorOpenHiveBox(
      {this.message = 'Ошибка при заагрузке уведомлении!'});

  @JsonKey()
  @override
  final String message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationState.errorOpenHiveBox(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NotificationState.errorOpenHiveBox'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorOpenHiveBox &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$ErrorOpenHiveBoxCopyWith<_ErrorOpenHiveBox> get copyWith =>
      __$ErrorOpenHiveBoxCopyWithImpl<_ErrorOpenHiveBox>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) errorOpenHiveBox,
    required TResult Function(Box<NotificationEntity> box)
        successNotificationHiveBox,
  }) {
    return errorOpenHiveBox(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? errorOpenHiveBox,
    TResult Function(Box<NotificationEntity> box)? successNotificationHiveBox,
  }) {
    return errorOpenHiveBox?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? errorOpenHiveBox,
    TResult Function(Box<NotificationEntity> box)? successNotificationHiveBox,
    required TResult orElse(),
  }) {
    if (errorOpenHiveBox != null) {
      return errorOpenHiveBox(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ErrorOpenHiveBox value) errorOpenHiveBox,
    required TResult Function(_SuccessNotificationHiveBox value)
        successNotificationHiveBox,
  }) {
    return errorOpenHiveBox(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ErrorOpenHiveBox value)? errorOpenHiveBox,
    TResult Function(_SuccessNotificationHiveBox value)?
        successNotificationHiveBox,
  }) {
    return errorOpenHiveBox?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ErrorOpenHiveBox value)? errorOpenHiveBox,
    TResult Function(_SuccessNotificationHiveBox value)?
        successNotificationHiveBox,
    required TResult orElse(),
  }) {
    if (errorOpenHiveBox != null) {
      return errorOpenHiveBox(this);
    }
    return orElse();
  }
}

abstract class _ErrorOpenHiveBox implements NotificationState {
  const factory _ErrorOpenHiveBox({String message}) = _$_ErrorOpenHiveBox;

  String get message;
  @JsonKey(ignore: true)
  _$ErrorOpenHiveBoxCopyWith<_ErrorOpenHiveBox> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SuccessNotificationHiveBoxCopyWith<$Res> {
  factory _$SuccessNotificationHiveBoxCopyWith(
          _SuccessNotificationHiveBox value,
          $Res Function(_SuccessNotificationHiveBox) then) =
      __$SuccessNotificationHiveBoxCopyWithImpl<$Res>;
  $Res call({Box<NotificationEntity> box});
}

/// @nodoc
class __$SuccessNotificationHiveBoxCopyWithImpl<$Res>
    extends _$NotificationStateCopyWithImpl<$Res>
    implements _$SuccessNotificationHiveBoxCopyWith<$Res> {
  __$SuccessNotificationHiveBoxCopyWithImpl(_SuccessNotificationHiveBox _value,
      $Res Function(_SuccessNotificationHiveBox) _then)
      : super(_value, (v) => _then(v as _SuccessNotificationHiveBox));

  @override
  _SuccessNotificationHiveBox get _value =>
      super._value as _SuccessNotificationHiveBox;

  @override
  $Res call({
    Object? box = freezed,
  }) {
    return _then(_SuccessNotificationHiveBox(
      box: box == freezed
          ? _value.box
          : box // ignore: cast_nullable_to_non_nullable
              as Box<NotificationEntity>,
    ));
  }
}

/// @nodoc

class _$_SuccessNotificationHiveBox
    with DiagnosticableTreeMixin
    implements _SuccessNotificationHiveBox {
  const _$_SuccessNotificationHiveBox({required this.box});

  @override
  final Box<NotificationEntity> box;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NotificationState.successNotificationHiveBox(box: $box)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty(
          'type', 'NotificationState.successNotificationHiveBox'))
      ..add(DiagnosticsProperty('box', box));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SuccessNotificationHiveBox &&
            const DeepCollectionEquality().equals(other.box, box));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(box));

  @JsonKey(ignore: true)
  @override
  _$SuccessNotificationHiveBoxCopyWith<_SuccessNotificationHiveBox>
      get copyWith => __$SuccessNotificationHiveBoxCopyWithImpl<
          _SuccessNotificationHiveBox>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String message) errorOpenHiveBox,
    required TResult Function(Box<NotificationEntity> box)
        successNotificationHiveBox,
  }) {
    return successNotificationHiveBox(box);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? errorOpenHiveBox,
    TResult Function(Box<NotificationEntity> box)? successNotificationHiveBox,
  }) {
    return successNotificationHiveBox?.call(box);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String message)? errorOpenHiveBox,
    TResult Function(Box<NotificationEntity> box)? successNotificationHiveBox,
    required TResult orElse(),
  }) {
    if (successNotificationHiveBox != null) {
      return successNotificationHiveBox(box);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ErrorOpenHiveBox value) errorOpenHiveBox,
    required TResult Function(_SuccessNotificationHiveBox value)
        successNotificationHiveBox,
  }) {
    return successNotificationHiveBox(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ErrorOpenHiveBox value)? errorOpenHiveBox,
    TResult Function(_SuccessNotificationHiveBox value)?
        successNotificationHiveBox,
  }) {
    return successNotificationHiveBox?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ErrorOpenHiveBox value)? errorOpenHiveBox,
    TResult Function(_SuccessNotificationHiveBox value)?
        successNotificationHiveBox,
    required TResult orElse(),
  }) {
    if (successNotificationHiveBox != null) {
      return successNotificationHiveBox(this);
    }
    return orElse();
  }
}

abstract class _SuccessNotificationHiveBox implements NotificationState {
  const factory _SuccessNotificationHiveBox(
      {required Box<NotificationEntity> box}) = _$_SuccessNotificationHiveBox;

  Box<NotificationEntity> get box;
  @JsonKey(ignore: true)
  _$SuccessNotificationHiveBoxCopyWith<_SuccessNotificationHiveBox>
      get copyWith => throw _privateConstructorUsedError;
}
