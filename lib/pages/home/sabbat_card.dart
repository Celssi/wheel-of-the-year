import 'package:flutter/material.dart';
import 'package:witch_army_knife/helper-widgets/content-container.dart';
import 'package:witch_army_knife/main.dart';

class SabbatCard extends StatelessWidget {
  const SabbatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ContentContainer(
      child: Column(
        children: <Widget>[
          const Text(
            'The next sabbat is',
            style: TextStyle(fontSize: 35),
          ),
          Text(
            dataStore.sabbats.isNotEmpty ? dataStore.closestSabbat.name : '-',
            style: const TextStyle(fontSize: 48),
          ),
          Text(
            dataStore.sabbats.isNotEmpty
                ? dataStore.daysUntilNextSabbat == 0
                    ? 'Which is today! 🥳'
                    : 'Which is in ${dataStore.daysUntilNextSabbat} day(s)'
                : '-',
            style: const TextStyle(fontSize: 24),
          ),
        ],
      ),
    );
  }
}
