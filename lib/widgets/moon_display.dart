import 'package:flutter/material.dart';
import 'package:wheel_of_the_year/helpers/moon_phase_calculator.dart';
import 'package:wheel_of_the_year/moon_phase/moon_widget.dart';

class MoonDisplay extends StatelessWidget {
  const MoonDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        borderRadius: const BorderRadius.all(Radius.circular(16)),
      ),
      child: Center(
        child: Column(
          children: [
            const Text(
              'Current moon phase',
              style: TextStyle(fontSize: 35),
            ),
            const SizedBox(
              height: 20,
            ),
            MoonWidget(
              date: DateTime(2023, 9, 19),
              resolution: 64,
              size: 48,
              earthShineColor: Colors.blueGrey.shade900,
            ),
            Text(
              getLunarPhase(),
              style: const TextStyle(fontSize: 28),
            ),
            Text(
              'Next full moon is in ${daysUntilFullMoon()} days',
              style: const TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}
