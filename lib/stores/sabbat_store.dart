import 'package:mobx/mobx.dart';
import 'package:wheel_of_the_year/helpers/sabbat_helpers.dart';
import 'package:wheel_of_the_year/main.dart';
import 'package:wheel_of_the_year/models/sabbat.dart';
import 'package:wheel_of_the_year/models/sabbat_text.dart';

part 'sabbat_store.g.dart';

class SabbatStore = SabbatStoreBase with _$SabbatStore;

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

abstract class SabbatStoreBase with Store {
  @observable
  ObservableList<Sabbat> sabbats = ObservableList<Sabbat>.of(getSabbats());

  @observable
  SabbatText sabbatText = const SabbatText(name: '', paragraphs: []);

  @observable
  bool isLoading = false;

  @computed
  Sabbat get closest {
    DateTime now = DateTime.now();
    Sabbat closestSabbat = sabbats.first;
    int daysUntil = 999;

    for (final sabbat in sabbats) {
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

  @action
  Future getSabbatText(String name) async {
    isLoading = true;
    sabbatText = await textApi.getText(name);
    isLoading = false;
  }
}
