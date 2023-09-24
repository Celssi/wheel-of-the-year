import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/helpers/moon_phase_calculator.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/pages/home/moon_phase/moon_widget.dart';

class MoonSingleContent extends StatelessWidget {
  const MoonSingleContent({super.key});

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();

    return Observer(
      builder: (_) => ListView(
        children: <Widget>[
          const Text(
            'Moon phase now',
            style: TextStyle(fontSize: 48),
          ),
          const SizedBox(height: 10),
          Text(
            getLunarPhase(),
            style: const TextStyle(fontSize: 28),
          ),
          Text(
            'Next full moon is in ${daysUntilFullMoon()} day(s)',
            style: const TextStyle(fontSize: 24),
          ),
          Center(
            child: MoonWidget(
              resolution: 200,
              size: 300,
              earthShineColor: Colors.blueGrey.shade900,
              hemisphere: settingsStore.hemisphere,
              date: DateTime(now.year, now.month, now.day),
            ),
          ),
        ],
      ),
    );
  }
}
