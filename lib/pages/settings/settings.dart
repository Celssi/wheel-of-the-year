import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/helper-widgets/background-container.dart';
import 'package:witch_army_knife/helper-widgets/content-container.dart';
import 'package:witch_army_knife/helpers/sizes.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/models/hemisphere.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => BackgroundContainer(
        backgroundImage: 'assets/images/${dataStore.closestSabbatName}.png',
        child: ContentContainer(
          child: ListView(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Settings',
                    style: TextStyle(fontSize: mainHeaderSize, fontWeight: FontWeight.bold),
                  ),
                  const Divider(
                    height: bigGap,
                    thickness: 1,
                    color: Colors.black,
                  ),
                  const Text(
                    'Home page settings',
                    style: TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: normalGap,
                  ),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    value: settingsStore.showMoonPhase,
                    title: const Text(
                      'Show moon phase',
                      style: TextStyle(fontSize: textSize),
                    ),
                    activeColor: Colors.red,
                    onChanged: (bool value) {
                      settingsStore.setShowMoonPhase(value, context);
                    },
                  ),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    value: settingsStore.showNextSabbat,
                    title: const Text(
                      'Show next sabbat',
                      style: TextStyle(fontSize: textSize),
                    ),
                    activeColor: Colors.red,
                    onChanged: (bool value) {
                      settingsStore.setShowNextSabbat(value, context);
                    },
                  ),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    value: settingsStore.showCardOfTheDay,
                    title: const Text(
                      'Show card of the day',
                      style: TextStyle(fontSize: textSize),
                    ),
                    activeColor: Colors.red,
                    onChanged: (bool value) {
                      settingsStore.setShowCardOfTheDay(value, context);
                    },
                  ),
                  const Divider(
                    height: bigGap,
                    thickness: 1,
                    color: Colors.black,
                  ),
                  const Text(
                    'General settings',
                    style: TextStyle(fontSize: textSize, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: normalGap,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text('Hemisphere', style: TextStyle(fontSize: textSize)),
                      ListTile(
                        title: const Text(
                          'Northern',
                          style: TextStyle(fontSize: textSize),
                        ),
                        contentPadding: EdgeInsets.zero,
                        leading: Radio<Hemisphere>(
                          value: Hemisphere.northern,
                          activeColor: Colors.red,
                          groupValue: settingsStore.hemisphere,
                          onChanged: (Hemisphere? value) {
                            settingsStore.setHemisphere(value, context);
                          },
                        ),
                      ),
                      ListTile(
                        title: const Text(
                          'Southern',
                          style: TextStyle(fontSize: textSize),
                        ),
                        contentPadding: EdgeInsets.zero,
                        leading: Radio<Hemisphere>(
                          value: Hemisphere.southern,
                          activeColor: Colors.red,
                          groupValue: settingsStore.hemisphere,
                          onChanged: (Hemisphere? value) {
                            settingsStore.setHemisphere(value, context);
                          },
                        ),
                      ),
                      SwitchListTile(
                        contentPadding: EdgeInsets.zero,
                        value: settingsStore.showNotifications,
                        title: const Text(
                          'Show notifications',
                          style: TextStyle(fontSize: textSize),
                        ),
                        activeColor: Colors.red,
                        onChanged: (bool showNotifications) {
                          settingsStore.setShowNotifications(showNotifications, true, context);
                        },
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
