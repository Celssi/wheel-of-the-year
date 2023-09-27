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
  final _random = Random();

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
          for (int i = 1; i <= 10; i++) {
            await scheduleNotification(
              'Tarot card of the day has been selected',
              now
                  .add(Duration(days: i))
                  .year,
              now
                  .add(Duration(days: i))
                  .month,
              now
                  .add(Duration(days: i))
                  .day,
            );
          }
        }

        if (settingsStore.showNextSabbat) {
          Sabbat nextSabbat = dataStore.closestSabbat;
          await scheduleNotification(
            'Today is ${nextSabbat.name}!',
            nextSabbat.date.year,
            nextSabbat.date.month,
            nextSabbat.date.day,
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
          );
        }
      }

      print((await notificationsPlugin.getActiveNotifications()).length);
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

  Future showNotification({String? title, String? body, String? payLoad}) async {
    return notificationsPlugin.show(_random.nextInt(99999), title, body, await notificationDetails());
  }

  Future<void> scheduleNotification(String message, int year, int month, int day) async {
    await notificationsPlugin.zonedSchedule(
      _random.nextInt(99999),
      'Witch Army Knife',
      message,
      await _wantedInstanceOfTenAM(year, month, day),
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'channelId',
          'General',
        ),
      ),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.time,
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

  Future<tz.TZDateTime> _wantedInstanceOfTenAM(int year, int month, int day) async {
    await _configureLocalTimeZone();
    final tz.TZDateTime now = tz.TZDateTime.now(tz.local);
    tz.TZDateTime scheduledDate = tz.TZDateTime(tz.local, year, month, day, 10);
    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(const Duration(days: 1));
    }
    return scheduledDate;
  }
}
