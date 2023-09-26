import 'dart:async';
import 'dart:math';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:mobx/mobx.dart';
import 'package:witch_army_knife/helpers/sabbat_helpers.dart';
import 'package:witch_army_knife/main.dart';
import 'package:witch_army_knife/models/hemisphere.dart';
import 'package:witch_army_knife/models/sabbat.dart';
import 'package:witch_army_knife/models/sabbat_text.dart';
import 'package:witch_army_knife/models/tarot_card.dart';
import 'package:witch_army_knife/models/tarot_deck.dart';
import 'package:witch_army_knife/models/tarot_text.dart';

part 'data_store.g.dart';

class DataStore = DataStoreBase with _$DataStore;

abstract class DataStoreBase with Store {
  DataStoreBase() {
    Connectivity().checkConnectivity().then(
          (connectivityResult) => {
            hasInternet = connectivityResult == ConnectivityResult.mobile ||
                connectivityResult == ConnectivityResult.wifi ||
                connectivityResult == ConnectivityResult.ethernet,
          },
        );

    _subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult connectivityResult) {
      hasInternet = connectivityResult == ConnectivityResult.mobile ||
          connectivityResult == ConnectivityResult.wifi ||
          connectivityResult == ConnectivityResult.ethernet;

      if (hasInternet && selectedSabbat != null) {
        getSabbatText(selectedSabbat!.name);
      } else if (hasInternet && selectedTarotCard != null) {
        getTarotText(selectedTarotCard!.name);
      }

      if (hasInternet) {
        textApi
            .getTarotText(_selectCardOfTheDay().name)
            .then((value) => cardOfTheDayText = value);
      }
    });
  }

  @observable
  ObservableList<Sabbat> sabbats = ObservableList<Sabbat>.of(getSabbats());

  @observable
  SabbatText sabbatText = const SabbatText(name: '', text: '');

  @observable
  TarotText tarotText = const TarotText(name: '', text: '', keywords: '');

  @observable
  TarotText cardOfTheDayText =
      const TarotText(name: '', text: '', keywords: '');

  @observable
  bool isLoading = false;

  @observable
  int selectedTab = 0;

  @observable
  Sabbat? selectedSabbat;

  @observable
  TarotCard? selectedTarotCard;

  @observable
  bool hasInternet = false;

  @observable
  TarotDeck tarotDeck = TarotDeck();

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
  void setSelectedTarotCard(TarotCard tarotCard) {
    selectedTarotCard = tarotCard;

    if (hasInternet) {
      getTarotText(tarotCard.name);
    }
  }

  @action
  Future getSabbatText(String name) async {
    isLoading = true;
    sabbatText = await textApi.getSabbatText(name);
    isLoading = false;
  }

  @action
  Future getTarotText(String name) async {
    isLoading = true;
    tarotText = await textApi.getTarotText(name);
    isLoading = false;
  }

  @action
  void loadSabbats(Hemisphere hemisphere) {
    sabbats = ObservableList<Sabbat>.of(getSabbats(hemisphere: hemisphere));
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
    return (closestSabbat.date.difference(now).inHours / 24).ceil();
  }

  @computed
  String get closestSabbatName {
    return closestSabbat.name;
  }

  @computed
  TarotCard get cardOfTheDay {
    TarotCard selectedCardOfTheDay = _selectCardOfTheDay();

    if (hasInternet && selectedCardOfTheDay.name != cardOfTheDayText.name) {
      textApi
          .getTarotText(selectedCardOfTheDay.name)
          .then((value) => cardOfTheDayText = value);
    }

    return selectedCardOfTheDay;
  }

  TarotCard _selectCardOfTheDay() {
    List<TarotCard> cards = tarotDeck.getAllCards();
    Random random = Random(42);
    cards.shuffle(random);

    DateTime date = DateTime.now();
    int dayOfYear = date.difference(DateTime(date.year)).inDays + 1;

    TarotCard selectedCardOfTheDay =
        cards[dayOfYear % tarotDeck.getAllCards().length];
    return selectedCardOfTheDay;
  }
}
