import 'dart:io';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:witch_army_knife/main.dart';

class NotificationService {
  final FlutterLocalNotificationsPlugin notificationsPlugin = FlutterLocalNotificationsPlugin();
  bool _notificationsEnabled = false;

  Future<void> initNotificationService() async {
    if (settingsStore.showNotifications) {
      await _isAndroidPermissionGranted();

      if (!_notificationsEnabled) {
        await requestPermissions();
      }
    }

    var initializationSettings = InitializationSettings(
      android: const AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(
        onDidReceiveLocalNotification: (int id, String? title, String? body, String? payload) async {},
      ),
    );

    await notificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: (NotificationResponse notificationResponse) async {},
    );
  }

  notificationDetails() {
    return const NotificationDetails(
      android: AndroidNotificationDetails('channelId', 'General', importance: Importance.max),
      iOS: DarwinNotificationDetails(),
    );
  }

  Future showNotification({int id = 0, String? title, String? body, String? payLoad}) async {
    return notificationsPlugin.show(id, title, body, await notificationDetails());
  }

  Future cancelNotifications() async {
    return notificationsPlugin.cancelAll();
  }

  Future<void> _isAndroidPermissionGranted() async {
    if (Platform.isAndroid) {
      final bool granted = await notificationsPlugin
              .resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()
              ?.areNotificationsEnabled() ??
          false;

      _notificationsEnabled = granted;
    }
  }

  Future<void> requestPermissions() async {
    if (Platform.isIOS || Platform.isMacOS) {
      await notificationsPlugin
          .resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );
      await notificationsPlugin
          .resolvePlatformSpecificImplementation<MacOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );
    } else if (Platform.isAndroid) {
      final AndroidFlutterLocalNotificationsPlugin? androidImplementation =
          notificationsPlugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();

      final bool? granted = await androidImplementation?.requestPermission();
      _notificationsEnabled = granted ?? false;
    }
  }
}
