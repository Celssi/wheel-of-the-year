const _moonCycleLengthInDays = 29.530587981;

double _getMoonAge() {
  DateTime now = DateTime.now();
  double moonCycleLengthInSeconds = _moonCycleLengthInDays * 24 * 60 * 60;
  DateTime date =
      DateTime(now.year, now.month, now.day, now.hour, now.minute, now.second);

  // DateTime of a known new moon
  DateTime newMoon = DateTime(1970, 1, 7, 20, 35);

  double phase =
      ((date.millisecondsSinceEpoch - newMoon.millisecondsSinceEpoch) / 1000) %
          moonCycleLengthInSeconds;
  double moonAge = phase / (24 * 3600);
  return moonAge;
}

String getLunarPhase() {
  double moonAge = _getMoonAge();

  final List<Map<String, dynamic>> lunarPhases = [
    {'Phase': 'New', 'Start': 0.0, 'End': 1.0},
    {'Phase': 'Waxing Crescent', 'Start': 1.0, 'End': 6.38264692644001},
    {'Phase': 'First Quarter', 'Start': 6.38264692644001, 'End': 8.38264692644},
    {'Phase': 'Waxing Gibbous', 'Start': 8.38264692644, 'End': 13.76529385288},
    {'Phase': 'Full', 'Start': 13.76529385288, 'End': 15.76529385288},
    {'Phase': 'Waning Gibbous', 'Start': 15.76529385288, 'End': 21.14794077932},
    {'Phase': 'Last Quarter', 'Start': 21.14794077932, 'End': 23.14794077932},
    {
      'Phase': 'Waning Crescent',
      'Start': 23.14794077932,
      'End': 28.53058770576
    },
    {'Phase': 'New', 'Start': 28.53058770576, 'End': 29.53058770576},
  ];

  for (final phase in lunarPhases) {
    if (moonAge >= phase['Start'] && moonAge < phase['End']) {
      return phase['Phase'];
    }
  }
  return 'Invalid';
}

int daysUntilFullMoon() {
  double moonAge = _getMoonAge();

  if (moonAge < 15.76529385288) {
    int daysUntil = (13.76529385288 - moonAge).floor();
    return daysUntil > 0 ? daysUntil : 0;
  }

  return (_moonCycleLengthInDays - (moonAge - 15.76529385288)).floor();
}
