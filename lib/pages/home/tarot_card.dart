import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/helper-widgets/content_container.dart';
import 'package:witch_army_knife/helpers/sizes.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/pages/tarot/tarot_single.dart';

class TarotCard extends StatelessWidget {
  const TarotCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => InkWell(
        splashColor: Colors.red,
        onTap: () {
          dataStore.setSelectedTarotCard(dataStore.cardOfTheDay);
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const TarotSingle(),
            ),
          );
        },
        child: ContentContainer(
          child: Column(
            children: <Widget>[
              const Text(
                'Tarot card of the day is',
                style: TextStyle(fontSize: subHeaderSize),
              ),
              Text(
                dataStore.cardOfTheDay.name,
                style: const TextStyle(fontSize: mainHeaderSize),
              ),
              SizedBox.fromSize(size: const Size.fromHeight(10)),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                // Adjust the radius as needed
                child: Image.asset(
                  dataStore.cardOfTheDay.imagePath,
                  height: 300,
                ),
              ),
              if (dataStore.cardOfTheDayText.keywords.isNotEmpty) ...[
                const SizedBox(height: normalGap),
                Wrap(
                  spacing: 5,
                  runSpacing: 5,
                  children: [
                    ...dataStore.cardOfTheDayText.keywords.split(', ').map((keyword) {
                      return Chip(
                        visualDensity: VisualDensity.compact,
                        label: Text(keyword),
                      );
                    }),
                  ],
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
