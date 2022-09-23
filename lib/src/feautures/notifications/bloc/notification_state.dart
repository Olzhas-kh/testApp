part of 'notification_bloc.dart';

@freezed
class NotificationState with _$NotificationState {
  const factory NotificationState.initial() = _Initial;

  const factory NotificationState.errorOpenHiveBox({
    @Default('Ошибка при заагрузке уведомлении!') String message,
  }) = _ErrorOpenHiveBox;

  const factory NotificationState.successNotificationHiveBox({
    required Box<NotificationEntity> box,
  }) = _SuccessNotificationHiveBox;
}
