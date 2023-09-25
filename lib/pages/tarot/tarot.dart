import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/helper-widgets/background-container.dart';
import 'package:witch_army_knife/helper-widgets/content-container.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/pages/tarot/suite_container.dart';

class Tarot extends StatelessWidget {
  const Tarot({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => BackgroundContainer(
            backgroundImage: 'assets/images/${dataStore.closestSabbatName}.png',
            child: ListView(children: [
              getHeaderBox(title: 'Major Arcana'),
              const SizedBox(height: 10),
              SuiteContainer(dataStore.tarotDeck.majorArcana),
              const Divider(
                height: 50,
                thickness: 5,
              ),
              getHeaderBox(title: 'Wands'),
              const SizedBox(height: 10),
              SuiteContainer(dataStore.tarotDeck.wands),
              const Divider(
                height: 50,
                thickness: 5,
              ),
              getHeaderBox(title: 'Cups'),
              const SizedBox(height: 10),
              SuiteContainer(dataStore.tarotDeck.cups),
              const Divider(
                height: 50,
                thickness: 5,
              ),
              getHeaderBox(title: 'Swords'),
              const SizedBox(height: 10),
              SuiteContainer(dataStore.tarotDeck.swords),
              const Divider(
                height: 50,
                thickness: 5,
              ),
              getHeaderBox(title: 'Pentacles'),
              const SizedBox(height: 10),
              SuiteContainer(dataStore.tarotDeck.pentacles),
            ])));
  }

  Widget getHeaderBox({required String title}) {
    return SizedBox(
      width: double.infinity,
      child: ContentContainer(
          child: Center(
        child: Text(
          title,
          style: const TextStyle(fontSize: 40),
        ),
      )),
    );
  }
}
