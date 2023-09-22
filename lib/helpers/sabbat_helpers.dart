import 'package:witch_army_knife/models/sabbat.dart';
import 'package:witch_army_knife/models/season_event.dart';

Map<String, SeasonEvent> seasonEventMap = {
  'Imbolc': SeasonEvent.imbolc,
  'Ostara': SeasonEvent.ostara,
  'Beltane': SeasonEvent.beltane,
  'Litha': SeasonEvent.litha,
  'Lughnasa': SeasonEvent.lughnasa,
  'Mabon': SeasonEvent.mabon,
  'Samhain': SeasonEvent.samhain,
  'Yule': SeasonEvent.yule,
};

DateTime calculateSeasonEvent(int year, SeasonEvent event) {
  switch (event) {
    case SeasonEvent.imbolc:
      return DateTime.parse('$year-02-01');
    case SeasonEvent.ostara:
      return DateTime(year, 3,
          20 + (0.2422 * (year - 1980)).floor() - ((year - 1980) / 4).floor());
    case SeasonEvent.beltane:
      return DateTime.parse('$year-05-01');
    case SeasonEvent.litha:
      return DateTime(year, 6,
          21 + (0.2422 * (year - 1980)).floor() - ((year - 1980) / 4).floor());
    case SeasonEvent.lughnasa:
      return DateTime.parse('$year-08-01');
    case SeasonEvent.mabon:
      return DateTime(year, 9,
          23 + (0.2422 * (year - 1980)).floor() - ((year - 1980) / 4).floor());
    case SeasonEvent.samhain:
      return DateTime.parse('$year-11-01');
    case SeasonEvent.yule:
      return DateTime(year, 12,
          22 + (0.2422 * (year - 1980)).floor() - ((year - 1980) / 4).floor());
    default:
      throw ArgumentError("Invalid SeasonEvent value");
  }
}

List<Sabbat> getSabbats() {
  DateTime now = DateTime.now();
  var sabbats = [
    Sabbat(calculateSeasonEvent(now.year, SeasonEvent.imbolc), 'Imbolc'),
    Sabbat(calculateSeasonEvent(now.year, SeasonEvent.ostara), 'Ostara'),
    Sabbat(calculateSeasonEvent(now.year, SeasonEvent.beltane), 'Beltane'),
    Sabbat(calculateSeasonEvent(now.year, SeasonEvent.litha), 'Litha'),
    Sabbat(calculateSeasonEvent(now.year, SeasonEvent.lughnasa), 'Lughnasa'),
    Sabbat(calculateSeasonEvent(now.year, SeasonEvent.mabon), 'Mabon'),
    Sabbat(calculateSeasonEvent(now.year, SeasonEvent.samhain), 'Samhain'),
    Sabbat(calculateSeasonEvent(now.year, SeasonEvent.yule), 'Yule')
  ];

  for (var i = 0; i < sabbats.length; i++) {
    if (sabbats[i].date.isBefore(now)) {
      sabbats[i].date =
          calculateSeasonEvent(now.year + 1, seasonEventMap[sabbats[i].name]!);
    }
  }

  sabbats.sort((a, b) => a.date.compareTo(b.date));

  return sabbats;
}
