part of 'notification_bloc.dart';

@freezed
class NotificationEvent with _$NotificationEvent {
  const factory NotificationEvent.firebaseInit({
    required BuildContext context,
  }) = _FirebaseInit;

  const factory NotificationEvent.getNotificationHiveBox() =
      _GetNotificationHiveBox;
}
