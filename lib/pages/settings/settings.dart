import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/helper-widgets/background-container.dart';
import 'package:witch_army_knife/helper-widgets/content-container.dart';
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
                    style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                  const Divider(
                    height: 30,
                    thickness: 1,
                    color: Colors.black,
                  ),
                  const Text(
                    'Home page settings',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SwitchListTile(
                    contentPadding: EdgeInsets.zero,
                    value: settingsStore.showMoonPhase,
                    title: const Text(
                      'Show moon phase',
                      style: TextStyle(fontSize: 30),
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
                      style: TextStyle(fontSize: 30),
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
                      style: TextStyle(fontSize: 30),
                    ),
                    activeColor: Colors.red,
                    onChanged: (bool value) {
                      settingsStore.setShowCardOfTheDay(value, context);
                    },
                  ),
                  const Divider(
                    height: 30,
                    thickness: 1,
                    color: Colors.black,
                  ),
                  const Text(
                    'General settings',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text('Hemisphere', style: TextStyle(fontSize: 30)),
                      ListTile(
                        title: const Text(
                          'Northern',
                          style: TextStyle(fontSize: 30),
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
                          style: TextStyle(fontSize: 30),
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
