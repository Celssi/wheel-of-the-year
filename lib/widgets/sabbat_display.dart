import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../main.dart';

class SabbatDisplay extends StatelessWidget {
  const SabbatDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => Container(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 32),
              constraints: const BoxConstraints.expand(),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        'assets/images/${sabbatStore.closestName}.jpg'),
                    fit: BoxFit.cover),
              ),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: const BorderRadius.all(Radius.circular(16)),
                    ),
                    child: Column(
                      children: <Widget>[
                        const Text(
                          'The next sabbat is:',
                          style: TextStyle(fontSize: 35),
                        ),
                        Text(
                          sabbatStore.sabbats.isNotEmpty
                              ? sabbatStore.closest.name
                              : '-',
                          style: const TextStyle(fontSize: 48),
                        ),
                        Text(
                          sabbatStore.sabbats.isNotEmpty
                              ? sabbatStore.daysUntilNext == 0
                                  ? 'Today!'
                                  : 'Which is in ${sabbatStore.daysUntilNext} days'
                              : '-',
                          style: const TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ));
  }
}
