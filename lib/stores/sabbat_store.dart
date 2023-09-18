import 'package:mobx/mobx.dart';
import 'package:wheel_of_the_year/models/sabbat.dart';

part 'sabbat_store.g.dart';

class SabbatStore = SabbatStoreBase with _$SabbatStore;

List<Sabbat> getSabbats() {
  DateTime now = DateTime.now();

  var sabbats = [
    Sabbat(DateTime.parse('${now.year}-02-01'), 'Imbolc'),
    Sabbat(DateTime.parse('${now.year}-04-19'), 'Ostara'),
    Sabbat(DateTime.parse('${now.year}-05-01'), 'Beltane'),
    Sabbat(DateTime.parse('${now.year}-06-19'), 'Litha'),
    Sabbat(DateTime.parse('${now.year}-08-01'), 'Lughnasa'),
    Sabbat(DateTime.parse('${now.year}-09-21'), 'Mabon'),
    Sabbat(DateTime.parse('${now.year}-11-01'), 'Samhain'),
    Sabbat(DateTime.parse('${now.year}-12-20'), 'Yule')
  ];

  for (var sabbat in sabbats) {
    if (sabbat.date.isBefore(now)) {
      sabbat.date = sabbat.date.copyWith(year: now.year + 1);
    }
  }

  sabbats.sort((a, b) => a.date.compareTo(b.date));

  return sabbats;
}

abstract class SabbatStoreBase with Store {
  @observable
  ObservableList<Sabbat> sabbats = ObservableList<Sabbat>.of(getSabbats());

  @computed
  Sabbat get closest {
    DateTime now = DateTime.now();
    Sabbat closestSabbat = sabbats.first;
    int daysUntil = 999;

    for (var sabbat in sabbats) {
      int currentDaysUntil = sabbat.date.difference(now).inDays;

      if (currentDaysUntil >= 0 && currentDaysUntil < daysUntil) {
        daysUntil = currentDaysUntil;
        closestSabbat = sabbat;
      }
    }

    return closestSabbat;
  }

  @computed
  int get daysUntilNext {
    DateTime now = DateTime.now();
    return closest.date.difference(now).inDays;
  }

  @computed
  String get closestName {
    return closest.name;
  }
}
