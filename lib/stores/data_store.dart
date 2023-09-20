import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:mobx/mobx.dart';
import 'package:witch_army_knife/helpers/sabbat_helpers.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/models/sabbat.dart';
import 'package:witch_army_knife/models/sabbat_text.dart';

part 'data_store.g.dart';

class DataStore = DataStoreBase with _$DataStore;

abstract class DataStoreBase with Store {
  DataStoreBase() {
    Connectivity().checkConnectivity().then((connectivityResult) => {
          hasInternet = connectivityResult == ConnectivityResult.mobile ||
              connectivityResult == ConnectivityResult.wifi ||
              connectivityResult == ConnectivityResult.ethernet
        });

    _subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult connectivityResult) {
      hasInternet = connectivityResult == ConnectivityResult.mobile ||
          connectivityResult == ConnectivityResult.wifi ||
          connectivityResult == ConnectivityResult.ethernet;

      if (hasInternet && selectedSabbat != null) {
        getSabbatText(selectedSabbat!.name);
      }
    });
  }

  @observable
  ObservableList<Sabbat> sabbats = ObservableList<Sabbat>.of(getSabbats());

  @observable
  SabbatText sabbatText = const SabbatText(name: '', text: '');

  @observable
  bool isLoading = false;

  @observable
  int selectedTab = 0;

  @observable
  Sabbat? selectedSabbat;

  @observable
  bool hasInternet = false;

  late StreamSubscription<ConnectivityResult> _subscription;

  @action
  void setSelectedTab(int index) {
    selectedTab = index;
  }

  @action
  void setSelectedSabbat(Sabbat sabbat) {
    selectedSabbat = sabbat;

    if (hasInternet) {
      getSabbatText(sabbat.name);
    }
  }

  @action
  Future getSabbatText(String name) async {
    isLoading = true;
    sabbatText = await textApi.getText(name);
    isLoading = false;
  }

  @computed
  Sabbat get closestSabbat {
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
  int get daysUntilNextSabbat {
    DateTime now = DateTime.now();
    return closestSabbat.date.difference(now).inDays;
  }

  @computed
  String get closestSabbatName {
    return closestSabbat.name;
  }
}
