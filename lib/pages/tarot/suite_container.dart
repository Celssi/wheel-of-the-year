import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/helper-widgets/background-container.dart';
import 'package:witch_army_knife/helper-widgets/content-container.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/models/tarot_card.dart';
import 'package:witch_army_knife/pages/tarot/tarot_single.dart';

class SuiteContainer extends StatelessWidget {
  const SuiteContainer(this.cards, {super.key});

  final List<TarotCard> cards;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => BackgroundContainer(
        backgroundImage: 'assets/images/${dataStore.closestSabbatName}.png',
        child: GridView.builder(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: cards.length,
          itemBuilder: (context, index) {
            final tarotCard = cards[index];

            return InkWell(
              splashColor: Colors.red,
              onTap: () {
                dataStore.setSelectedTarotCard(tarotCard);
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const TarotSingle(),
                  ),
                );
              },
              child: Container(
                padding: const EdgeInsets.all(5),
                child: ContentContainer(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        // Adjust the radius as needed
                        child: Image.asset(
                          tarotCard.imagePath,
                          height: 110,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        tarotCard.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
