import 'package:flutter/material.dart';
import 'package:witch_army_knife/main.dart';

class SabbatCard extends StatelessWidget {
  const SabbatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Column(
        children: <Widget>[
          const Text(
            'The next sabbat is',
            style: TextStyle(fontSize: 35),
          ),
          Text(
            sabbatStore.sabbats.isNotEmpty ? sabbatStore.closest.name : '-',
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
    );
  }
}
