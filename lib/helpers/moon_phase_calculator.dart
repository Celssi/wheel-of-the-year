import 'package:witch_army_knife/models/lunar_phase.dart';
import 'package:witch_army_knife/models/lunar_phase_name.dart';

const _moonCycleLengthInDays = 29.53058867956790123457;

// Harvest moon https://www.rmg.co.uk/stories/topics/full-moon-calendar

final List<LunarPhase> lunarPhases = [
  LunarPhase('New Moon', 0.0, 1.0, LunarPhaseName.newMoon),
  LunarPhase(
      'Waxing Crescent', 1.0, 6.38264692644001, LunarPhaseName.waxingCrescent),
  LunarPhase('First Quarter', 6.38264692644001, 8.38264692644,
      LunarPhaseName.firstQuarter),
  LunarPhase('Waxing Gibbous', 8.38264692644, 13.76529385288,
      LunarPhaseName.waxingGibbous),
  LunarPhase('Full Moon', 13.76529385288, 15.76529385288, LunarPhaseName.full),
  LunarPhase('Waning Gibbous', 15.76529385288, 21.14794077932,
      LunarPhaseName.waningGibbous),
  LunarPhase('Last Quarter', 21.14794077932, 23.14794077932,
      LunarPhaseName.lastQuarter),
  LunarPhase('Waning Crescent', 23.14794077932, 28.53058770576,
      LunarPhaseName.waningCrescent),
  LunarPhase(
      'New Moon', 28.53058770576, 29.53058770576, LunarPhaseName.newMoon),
];

double _getMoonAge() {
  DateTime now = DateTime.now();
  double moonCycleLengthInSeconds = _moonCycleLengthInDays * 24 * 60 * 60;
  DateTime date =
      DateTime(now.year, now.month, now.day, now.hour, now.minute, now.second);

  // DateTime of a known new moon
  DateTime newMoon = DateTime(2023, 1, 21, 22, 53);

  double phase =
      ((date.millisecondsSinceEpoch - newMoon.millisecondsSinceEpoch) / 1000) %
          moonCycleLengthInSeconds;
  double moonAge = phase / (24 * 3600);
  return moonAge;
}

String getCurrentLunarPhase() {
  double moonAge = _getMoonAge();

  for (final phase in lunarPhases) {
    if (moonAge >= phase.start && moonAge < phase.end) {
      return phase.phaseLabel;
    }
  }
  return 'Invalid';
}

int daysUntilPhase({LunarPhaseName wantedPhase = LunarPhaseName.full}) {
  double moonAge = _getMoonAge();
  LunarPhase lunarPhase =
      lunarPhases.firstWhere((element) => element.phaseName == wantedPhase);

  double daysUntil = 0;
  if (moonAge < lunarPhase.end) {
    daysUntil = (lunarPhase.start - moonAge);
    daysUntil = daysUntil > 0 ? daysUntil : 0;
  } else {
    daysUntil = _moonCycleLengthInDays - (moonAge - lunarPhase.end);
  }

  DateTime now = DateTime.now();
  DateTime dateOfTheWantedPhase = now
      .add(Duration(milliseconds: (daysUntil * 24 * 60 * 60 * 1000).round()));

  return _daysBetween(now, dateOfTheWantedPhase);
}

String getLunarPhaseLabel(LunarPhaseName phaseName) {
  return lunarPhases
          .firstWhere((phase) => phase.phaseName == phaseName)
          .phaseLabel ??
      '';
}

int _daysBetween(DateTime from, DateTime to) {
  from = DateTime(from.year, from.month, from.day);
  to = DateTime(to.year, to.month, to.day);
  return (to.difference(from).inHours / 24).round();
}
