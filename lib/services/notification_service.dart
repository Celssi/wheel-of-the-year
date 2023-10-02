import 'dart:io';
import 'dart:math';

import 'package:app_settings/app_settings.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:timezone/data/latest_all.dart' as tz;
import 'package:timezone/timezone.dart' as tz;
import 'package:witch_army_knife/helpers/moon_phase_calculator.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/models/sabbat.dart';

class NotificationService {
  final FlutterLocalNotificationsPlugin notificationsPlugin = FlutterLocalNotificationsPlugin();
  bool _notificationsEnabled = false;
  final Random _random = Random();

  Future<void> initNotificationService() async {
    if (settingsStore.showNotifications) {
      await _isAndroidPermissionGranted();

      if (!_notificationsEnabled) {
        await requestPermissions();
      }

      settingsStore.setShowNotifications(_notificationsEnabled, false, null);

      if (_notificationsEnabled && settingsStore.showNotifications) {
        await cancelNotifications();

        if (settingsStore.showCardOfTheDay) {
          DateTime now = DateTime.now();
          await scheduleNotification(
            'Tarot card of the day has been selected',
            now.year,
            now.month,
            now.day,
            10,
            0,
            0,
            DateTimeComponents.time,
          );
        }

        if (settingsStore.showNextSabbat) {
          Sabbat nextSabbat = dataStore.closestSabbat;
          await scheduleNotification(
            'Today is ${nextSabbat.name}!',
            nextSabbat.date.year,
            nextSabbat.date.month,
            nextSabbat.date.day,
            10,
            0,
            0,
            DateTimeComponents.dateAndTime,
          );
        }

        if (settingsStore.showMoonPhase) {
          var daysUntilFullMoon = daysUntilPhase();
          var fullMoonDate = DateTime.now().add(Duration(days: daysUntilFullMoon));

          await scheduleNotification(
            'Today is full moon!',
            fullMoonDate.year,
            fullMoonDate.month,
            fullMoonDate.day,
            10,
            0,
            0,
            DateTimeComponents.dateAndTime,
          );
        }
      }
    }

    var initializationSettings = InitializationSettings(
      android: const AndroidInitializationSettings('ic_notification'),
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

  Future showNotification({String? title, String? body}) async {
    return notificationsPlugin.show(_random.nextInt(99999), title, body, await notificationDetails());
  }

  Future<void> scheduleNotification(
    String message,
    int year,
    int month,
    int day,
    int hours,
    int minutes,
    int seconds,
    DateTimeComponents matchDateTimeComponents,
  ) async {
    int id = _random.nextInt(99999);
    tz.TZDateTime scheduledDate = await _wantedDateTime(year, month, day, hours, minutes, seconds);
    await notificationsPlugin.zonedSchedule(
      id,
      'Witch Army Knife',
      message,
      scheduledDate,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'channelId',
          'General',
        ),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: matchDateTimeComponents,
    );
  }

  Future<void> repeatNotification(String message) async {
    const AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
      'channelId',
      'General',
    );
    const NotificationDetails notificationDetails = NotificationDetails(android: androidNotificationDetails);

    await notificationsPlugin.periodicallyShow(
      _random.nextInt(99999),
      'Witch Army Knife',
      message,
      RepeatInterval.daily,
      notificationDetails,
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
    );
  }

  Future cancelNotifications() async {
    return notificationsPlugin.cancelAll();
  }

  Future<void> requestPermissions({bool openSettingsIfNeeded = false}) async {
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

      final bool granted = await androidImplementation?.requestPermission() ?? false;

      if (!granted && openSettingsIfNeeded) {
        await AppSettings.openNotificationSettings();
        await _isAndroidPermissionGranted();
      }

      _notificationsEnabled = granted;
    }
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

  Future<void> _configureLocalTimeZone() async {
    tz.initializeTimeZones();
    final String timeZoneName = await FlutterTimezone.getLocalTimezone();
    tz.setLocalLocation(tz.getLocation(timeZoneName));
  }

  Future<tz.TZDateTime> _wantedDateTime(int year, int month, int day, int hours, int minutes, int seconds) async {
    await _configureLocalTimeZone();
    tz.TZDateTime scheduledDate = tz.TZDateTime(tz.local, year, month, day, hours, minutes, seconds);
    return scheduledDate;
  }
}
