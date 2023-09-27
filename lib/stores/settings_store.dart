import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:witch_army_knife/helpers/sizes.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/models/hemisphere.dart';
import 'package:witch_army_knife/services/notification_service.dart';

part 'settings_store.g.dart';

late SharedPreferences prefs;

class SettingsStore extends SettingsStoreBase with _$SettingsStore {
  SettingsStore() {
    SharedPreferences.getInstance().then((value) {
      prefs = value;
      showMoonPhase = prefs.getBool('showMoonPhase') ?? true;
      showNextSabbat = prefs.getBool('showNextSabbat') ?? true;
      showCardOfTheDay = prefs.getBool('showCardOfTheDay') ?? true;
      showNotifications = prefs.getBool('showNotifications') ?? true;
      hemisphere = Hemisphere.values[prefs.getInt('hemisphere') ?? 0];
      dataStore.loadSabbats(hemisphere);
    });
  }
}

abstract class SettingsStoreBase with Store {
  @observable
  Hemisphere hemisphere = Hemisphere.northern;

  @observable
  bool showMoonPhase = true;

  @observable
  bool showNextSabbat = true;

  @observable
  bool showCardOfTheDay = true;

  @observable
  bool showNotifications = true;

  @action
  void setShowMoonPhase(bool value, BuildContext context) {
    showMoonPhase = value;
    prefs.setBool('showMoonPhase', value);
    _showUpdatedNotification(context);
  }

  @action
  void setShowNextSabbat(bool value, BuildContext context) {
    showNextSabbat = value;
    prefs.setBool('showNextSabbat', value);
    _showUpdatedNotification(context);
  }

  @action
  void setShowCardOfTheDay(bool value, BuildContext context) {
    showCardOfTheDay = value;
    prefs.setBool('showCardOfTheDay', value);
    _showUpdatedNotification(context);
  }

  @action
  void setShowNotifications(bool value, BuildContext context) {
    showNotifications = value;
    prefs.setBool('showNotifications', value);

    if (!showNotifications) {
      NotificationService().cancelNotifications();
    } else {
      NotificationService().requestPermissions();
    }
    _showUpdatedNotification(context);
  }

  @action
  void setHemisphere(Hemisphere? value, BuildContext context) {
    if (value != null) {
      hemisphere = value;
      prefs.setInt('hemisphere', value.index);
      dataStore.loadSabbats(hemisphere);
      _showUpdatedNotification(context);
    }
  }

  void _showUpdatedNotification(BuildContext context) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'Settings updated!',
          style: TextStyle(fontSize: navigationSize),
        ),
        action: SnackBarAction(
          label: 'Close',
          textColor: Colors.red,
          onPressed: () {
            // Code to execute.
          },
        ),
      ),
    );
  }
}
