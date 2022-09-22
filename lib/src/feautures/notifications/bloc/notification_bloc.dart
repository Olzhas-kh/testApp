// ignore_for_file: no_leading_underscores_for_local_identifiers, require_trailing_commas, prefer_final_locals, prefer_const_constructors, unawaited_futures, avoid_redundant_argument_values, avoid_catches_without_on_clauses, empty_catches, lines_longer_than_80_chars, use_build_context_synchronously

import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:narxoz/src/core/constants/hive_boxes.dart';
import 'package:narxoz/src/feautures/notifications/api/models/notification.dart';
import 'package:narxoz/src/feautures/notifications/widget/pages/notifications_screen.dart';

part 'notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

const _tag = 'NotificationBloc';

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  NotificationBloc() : super(const _Initial()) {
    on<NotificationEvent>(
      (event, emit) => event.map(
        firebaseInit: (event) => _firebaseInit(event, emit),
        getNotificationHiveBox: (event) => _getNotificationHiveBox(event, emit),
      ),
    );
  }

  Future<void> _getNotificationHiveBox(
    _GetNotificationHiveBox event,
    Emitter<NotificationState> emit,
  ) async {
    try {
      final box = !Hive.isBoxOpen(notifyBox)
          ? await Hive.openBox<NotificationEntity>(notifyBox)
          : Hive.box<NotificationEntity>(notifyBox);

      emit(NotificationState.successNotificationHiveBox(box: box));
    } catch (e) {
      emit(const NotificationState.errorOpenHiveBox());
    }
  }

  // ignore: long-method
  Future<void> _firebaseInit(
    _FirebaseInit eventFirebaseInit,
    Emitter<NotificationState> emit,
  ) async {
    log(' _firebaseInit', name: _tag);
    const initializationSettingsAndroid = AndroidInitializationSettings('@mipmap/ic_launcher');
    const initializationSettingsIOs = DarwinInitializationSettings();
    const initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOs,
    );
    // ignore: avoid-ignoring-return-values
    flutterLocalNotificationsPlugin.initialize(initializationSettings);

    await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
      alert: true,
      sound: true,
    );

    var fcmToken = await FirebaseMessaging.instance.getToken();
    log('FCM TOKEN: $fcmToken', name: _tag);

    final _messaging = FirebaseMessaging.instance;
    if (Platform.isIOS) {
      _requestPermissionToNotifications(_messaging);
    }

    _messaging.getInitialMessage().then((RemoteMessage? message) async {
      if (message == null) {
        return;
      }

      log('Message is: $message', name: _tag);
      if (message.notification != null) {
        await saveNotification(message);
      }
    });

    // FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

    //When the app is in the background, but not terminated.
    // ignore: avoid-ignoring-return-values
    FirebaseMessaging.onMessageOpenedApp.listen(
      (RemoteMessage event) async {
        log('openedAppMessage is: $event', name: _tag);
        await saveNotification(event);

        // ignore: avoid-ignoring-return-values
        Navigator.push(
          eventFirebaseInit.context,
          MaterialPageRoute(
            builder: (_) => NotificationsScreen(),
          ),
        );
      },
    );

    // ignore: avoid-ignoring-return-values
    FirebaseMessaging.onMessage.listen((RemoteMessage event) async {
      final notification = event.notification;

      final android = Platform.isAndroid ? event.notification?.android : null;

      log('Notify listen ${event.notification?.toMap()}', name: _tag);
      log('Notify listen ${event.data}', name: _tag);

      if (notification != null) {
        await saveNotification(event);
        if (Platform.isAndroid && android != null) {
          flutterLocalNotificationsPlugin.show(
            notification.hashCode,
            notification.title,
            notification.body,
            NotificationDetails(
              android: AndroidNotificationDetails(
                channel.id,
                channel.name,
                playSound: true,
                icon: '@mipmap/ic_launcher',
              ),
            ),
          );
        }
      }
    });
  }

  // Future<void> firebaseMessagingBackgroundHandler(
  //         RemoteMessage message) async =>
  //     Firebase.initializeApp();

  Future<void> saveNotification(RemoteMessage event) async {
    try {
      final notification = event.notification;
      if (notification != null) {
        // ignore: omit_local_variable_types
        NotificationEntity notifyModel = NotificationEntity(
          title: notification.title ?? '',
          text: notification.body ?? '',
          // date
          createdAt: DateTime.now().toString().substring(0, 16),
          // clock time
          time: DateTime.now().toString().substring(0, 16),
          // image: event.data['image'] != null ? await encodeUrlImg(event.data['image'] as String) : '',
          image: event.data['image'] != null ? (event.data['image'] as String) : '',
        );

        log('event.data["image"] ${event.data['image']}', name: _tag);
        log('notifyModel ${notifyModel.image}', name: _tag);

        final box = Hive.isBoxOpen(notifyBox)
            ? Hive.box<NotificationEntity>(notifyBox)
            : await Hive.openBox<NotificationEntity>(notifyBox);

        var listNotify = box.values.toList();
        var count = 0;

        if (listNotify.isEmpty) {
          // ignore: avoid-ignoring-return-values
          await box.add(notifyModel);

          return;
        }
        for (final n in listNotify) {
          if (n.title == notifyModel.title && n.text == notifyModel.text && n.time == notifyModel.time) {
            count++;
          }
        }
        if (count == 0) {
          // ignore: avoid-ignoring-return-values
          await box.add(notifyModel);
        }
        log('Notification is saved ${notifyModel.title}', name: _tag);
      }
    } catch (e) {}
  }

  Future<String> encodeUrlImg(String url) async {
    if (url == '') {
      return '';
    }
    final response = await http.get(Uri.parse(url));

    return Base64Encoder().convert(response.bodyBytes);
  }

  // ignore: member-ordering-extended
  Future<void> _requestPermissionToNotifications(FirebaseMessaging _messaging) async {
    final settings = await _messaging.requestPermission();

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      if (kDebugMode) {
        print('User granted permission');
      }
    } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
      if (kDebugMode) {
        print('User granted provisional permission');
      }
    } else {
      if (kDebugMode) {
        print('User declined or has not accepted permission');
      }
    }
  }
}

// ignore: prefer-correct-identifier-length
final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

const AndroidNotificationChannel channel = AndroidNotificationChannel(
  'high_importance_channel', // id
  'High Importance Notifications', // title
  description: 'This channel is used for important notifications.', // description
  importance: Importance.high,
);
