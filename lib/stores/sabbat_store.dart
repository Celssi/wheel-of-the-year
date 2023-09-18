import 'package:mobx/mobx.dart';
import 'package:wheel_of_the_year/models/sabbat.dart';

part 'sabbat_store.g.dart';

class SabbatStore = SabbatStoreBase with _$SabbatStore;

abstract class SabbatStoreBase with Store {
  @observable
  ObservableList<Sabbat> sabbats = ObservableList<Sabbat>.of([
    Sabbat(DateTime.parse('2023-02-01'), 'Imbolc'),
    Sabbat(DateTime.parse('2023-04-19'), 'Ostara'),
    Sabbat(DateTime.parse('2023-05-01'), 'Beltane'),
    Sabbat(DateTime.parse('2023-06-19'), 'Litha'),
    Sabbat(DateTime.parse('2023-08-01'), 'Lughnasa'),
    Sabbat(DateTime.parse('2023-09-21'), 'Mabon'),
    Sabbat(DateTime.parse('2023-11-01'), 'Samhain'),
    Sabbat(DateTime.parse('2023-12-20'), 'Yule')
  ]);

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
