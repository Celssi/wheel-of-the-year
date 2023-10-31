import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/helper-widgets/background_container.dart';
import 'package:witch_army_knife/helper-widgets/header_box.dart';
import 'package:witch_army_knife/helpers/sizes.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/pages/tarot/suite_container.dart';

class Tarot extends StatelessWidget {
  const Tarot({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => BackgroundContainer(
        backgroundImage: 'assets/images/${dataStore.closestSabbatName}.png',
        child: ListView(
          children: [
            const HeaderBox(title: 'Major Arcana'),
            const SizedBox(height: smallGap),
            SuiteContainer(dataStore.tarotDeck.majorArcana),
            const Divider(
              height: 50,
              thickness: 5,
            ),
            const HeaderBox(title: 'Wands'),
            const SizedBox(height: smallGap),
            SuiteContainer(dataStore.tarotDeck.wands),
            const Divider(
              height: 50,
              thickness: 5,
            ),
            const HeaderBox(title: 'Cups'),
            const SizedBox(height: smallGap),
            SuiteContainer(dataStore.tarotDeck.cups),
            const Divider(
              height: 50,
              thickness: 5,
            ),
            const HeaderBox(title: 'Swords'),
            const SizedBox(height: smallGap),
            SuiteContainer(dataStore.tarotDeck.swords),
            const Divider(
              height: 50,
              thickness: 5,
            ),
            const HeaderBox(title: 'Pentacles'),
            const SizedBox(height: smallGap),
            SuiteContainer(dataStore.tarotDeck.pentacles),
          ],
        ),
      ),
    );
  }
}
