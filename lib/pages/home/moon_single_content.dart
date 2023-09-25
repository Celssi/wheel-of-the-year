import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:witch_army_knife/helpers/moon_phase_calculator.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/models/lunar_phase_name.dart';
import 'package:witch_army_knife/pages/home/moon_phase/moon_widget.dart';

class MoonSingleContent extends StatelessWidget {
  const MoonSingleContent({super.key});

  List<Widget> _getNextDatesTexts() {
    List<Text> widgets = List.of([]);
    DateTime now = DateTime.now();

    Map<String, DateTime> unsortedDates = {};

    for (final phaseName in LunarPhaseName.values) {
      int daysUntil = daysUntilPhase(wantedPhase: phaseName);
      DateTime nextDate = now.add(Duration(days: daysUntil));

      unsortedDates[getLunarPhaseLabel(phaseName)] = nextDate;
    }

    List<MapEntry<String, DateTime>> sortedList =
        unsortedDates.entries.toList();
    sortedList.sort((a, b) => a.value.compareTo(b.value));
    Map<String, DateTime> sortedDates = Map.fromEntries(sortedList);

    sortedDates.forEach((key, value) {
      widgets.add(Text('Next $key: ${value.day}.${value.month}.${value.year}',
          style: const TextStyle(fontSize: 28)));
    });

    return widgets;
  }

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
            getCurrentLunarPhase(),
            style: const TextStyle(fontSize: 28),
          ),
          Text(
            'Next full moon is in ${daysUntilPhase()} day(s)',
            style: const TextStyle(fontSize: 24),
          ),
          Center(
            child: MoonWidget(
              resolution: 200,
              size: 250,
              earthShineColor: Colors.blueGrey.shade900,
              hemisphere: settingsStore.hemisphere,
              date: DateTime(now.year, now.month, now.day),
            ),
          ),
          ..._getNextDatesTexts()
        ],
      ),
    );
  }
}
