import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/helper-widgets/background_container.dart';
import 'package:witch_army_knife/helpers/sizes.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/pages/home/moon_card.dart';
import 'package:witch_army_knife/pages/home/sabbat_card.dart';
import 'package:witch_army_knife/pages/home/tarot_card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => BackgroundContainer(
        backgroundImage: 'assets/images/${dataStore.closestSabbatName}.png',
        child: ListView(
          padding: const EdgeInsets.only(left: 16, right: 16, top: 32, bottom: 32),
          children: [
            if (settingsStore.showNextSabbat) ...[
              const SabbatCard(),
              const SizedBox(
                height: normalGap,
              ),
            ],
            if (settingsStore.showMoonPhase) ...[
              const MoonCard(),
              const SizedBox(
                height: normalGap,
              ),
            ],
            if (settingsStore.showCardOfTheDay) const TarotCard(),
          ],
        ),
      ),
    );
  }
}
