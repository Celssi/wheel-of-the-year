enum SeasonEvent {
  imbolc,
  ostara,
  beltane,
  litha,
  lughnasa,
  mabon,
  samhain,
  yule
}

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
