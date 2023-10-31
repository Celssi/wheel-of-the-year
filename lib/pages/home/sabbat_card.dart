import 'package:flutter/material.dart';
import 'package:witch_army_knife/helper-widgets/content_container.dart';
import 'package:witch_army_knife/helpers/sizes.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/pages/sabbats/sabbat_single.dart';

class SabbatCard extends StatelessWidget {
  const SabbatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.red,
      onTap: () {
        dataStore.setSelectedSabbat(dataStore.closestSabbat);
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const SabbatSingle(),
          ),
        );
      },
      child: ContentContainer(
        child: Column(
          children: <Widget>[
            const Text(
              'The next sabbat is',
              style: TextStyle(fontSize: subHeaderSize),
            ),
            Text(
              dataStore.sabbats.isNotEmpty ? dataStore.closestSabbat.name : '-',
              style: const TextStyle(fontSize: mainHeaderSize),
            ),
            Text(
              dataStore.sabbats.isNotEmpty
                  ? dataStore.daysUntilNextSabbat == 0
                      ? 'Which is today! 🥳'
                      : 'Which is in ${dataStore.daysUntilNextSabbat} day(s)'
                  : '-',
              style: const TextStyle(fontSize: smallTextSize),
            ),
          ],
        ),
      ),
    );
  }
}
