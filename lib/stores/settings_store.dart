import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:witch_army_knife/models/hemisphere.dart';

part 'settings_store.g.dart';

late SharedPreferences prefs;

class SettingsStore extends SettingsStoreBase with _$SettingsStore {
  SettingsStore() {
    SharedPreferences.getInstance().then((value) {
      prefs = value;
      showMoonPhase = prefs.getBool('moonPhase') ?? true;
      showNextSabbat = prefs.getBool('nextSabbat') ?? true;
      hemisphere = Hemisphere.values[prefs.getInt('hemisphere') ?? 0];
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

  @action
  void setShowMoonPhase(bool value, BuildContext context) {
    showMoonPhase = value;
    prefs.setBool('moonPhase', value);
    _showUpdatedNotification(context);
  }

  @action
  void setShowNextSabbat(bool value, BuildContext context) {
    showNextSabbat = value;
    prefs.setBool('nextSabbath', value);
    _showUpdatedNotification(context);
  }

  @action
  void setHemisphere(Hemisphere? value, BuildContext context) {
    if (value != null) {
      hemisphere = value;
      prefs.setInt('hemisphere', value.index);
      _showUpdatedNotification(context);
    }
  }

  void _showUpdatedNotification(BuildContext context) {
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: const Text(
          'Settings updated!',
          style: TextStyle(fontSize: 20),
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
