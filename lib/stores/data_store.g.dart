// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$DataStore on DataStoreBase, Store {
  Computed<Sabbat>? _$closestSabbatComputed;

  @override
  Sabbat get closestSabbat =>
      (_$closestSabbatComputed ??= Computed<Sabbat>(() => super.closestSabbat,
              name: 'DataStoreBase.closestSabbat'))
          .value;
  Computed<int>? _$daysUntilNextSabbatComputed;

  @override
  int get daysUntilNextSabbat => (_$daysUntilNextSabbatComputed ??=
          Computed<int>(() => super.daysUntilNextSabbat,
              name: 'DataStoreBase.daysUntilNextSabbat'))
      .value;
  Computed<String>? _$closestSabbatNameComputed;

  @override
  String get closestSabbatName => (_$closestSabbatNameComputed ??=
          Computed<String>(() => super.closestSabbatName,
              name: 'DataStoreBase.closestSabbatName'))
      .value;

  late final _$sabbatsAtom =
      Atom(name: 'DataStoreBase.sabbats', context: context);

  @override
  ObservableList<Sabbat> get sabbats {
    _$sabbatsAtom.reportRead();
    return super.sabbats;
  }

  @override
  set sabbats(ObservableList<Sabbat> value) {
    _$sabbatsAtom.reportWrite(value, super.sabbats, () {
      super.sabbats = value;
    });
  }

  late final _$sabbatTextAtom =
      Atom(name: 'DataStoreBase.sabbatText', context: context);

  @override
  SabbatText get sabbatText {
    _$sabbatTextAtom.reportRead();
    return super.sabbatText;
  }

  @override
  set sabbatText(SabbatText value) {
    _$sabbatTextAtom.reportWrite(value, super.sabbatText, () {
      super.sabbatText = value;
    });
  }

  late final _$tarotTextAtom =
      Atom(name: 'DataStoreBase.tarotText', context: context);

  @override
  TarotText get tarotText {
    _$tarotTextAtom.reportRead();
    return super.tarotText;
  }

  @override
  set tarotText(TarotText value) {
    _$tarotTextAtom.reportWrite(value, super.tarotText, () {
      super.tarotText = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: 'DataStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$selectedTabAtom =
      Atom(name: 'DataStoreBase.selectedTab', context: context);

  @override
  int get selectedTab {
    _$selectedTabAtom.reportRead();
    return super.selectedTab;
  }

  @override
  set selectedTab(int value) {
    _$selectedTabAtom.reportWrite(value, super.selectedTab, () {
      super.selectedTab = value;
    });
  }

  late final _$selectedSabbatAtom =
      Atom(name: 'DataStoreBase.selectedSabbat', context: context);

  @override
  Sabbat? get selectedSabbat {
    _$selectedSabbatAtom.reportRead();
    return super.selectedSabbat;
  }

  @override
  set selectedSabbat(Sabbat? value) {
    _$selectedSabbatAtom.reportWrite(value, super.selectedSabbat, () {
      super.selectedSabbat = value;
    });
  }

  late final _$selectedTarotCardAtom =
      Atom(name: 'DataStoreBase.selectedTarotCard', context: context);

  @override
  TarotCard? get selectedTarotCard {
    _$selectedTarotCardAtom.reportRead();
    return super.selectedTarotCard;
  }

  @override
  set selectedTarotCard(TarotCard? value) {
    _$selectedTarotCardAtom.reportWrite(value, super.selectedTarotCard, () {
      super.selectedTarotCard = value;
    });
  }

  late final _$hasInternetAtom =
      Atom(name: 'DataStoreBase.hasInternet', context: context);

  @override
  bool get hasInternet {
    _$hasInternetAtom.reportRead();
    return super.hasInternet;
  }

  @override
  set hasInternet(bool value) {
    _$hasInternetAtom.reportWrite(value, super.hasInternet, () {
      super.hasInternet = value;
    });
  }

  late final _$majorArcanaAtom =
      Atom(name: 'DataStoreBase.majorArcana', context: context);

  @override
  List<TarotCard> get majorArcana {
    _$majorArcanaAtom.reportRead();
    return super.majorArcana;
  }

  @override
  set majorArcana(List<TarotCard> value) {
    _$majorArcanaAtom.reportWrite(value, super.majorArcana, () {
      super.majorArcana = value;
    });
  }

  late final _$wandsAtom = Atom(name: 'DataStoreBase.wands', context: context);

  @override
  List<TarotCard> get wands {
    _$wandsAtom.reportRead();
    return super.wands;
  }

  @override
  set wands(List<TarotCard> value) {
    _$wandsAtom.reportWrite(value, super.wands, () {
      super.wands = value;
    });
  }

  late final _$swordsAtom =
      Atom(name: 'DataStoreBase.swords', context: context);

  @override
  List<TarotCard> get swords {
    _$swordsAtom.reportRead();
    return super.swords;
  }

  @override
  set swords(List<TarotCard> value) {
    _$swordsAtom.reportWrite(value, super.swords, () {
      super.swords = value;
    });
  }

  late final _$pentaclesAtom =
      Atom(name: 'DataStoreBase.pentacles', context: context);

  @override
  List<TarotCard> get pentacles {
    _$pentaclesAtom.reportRead();
    return super.pentacles;
  }

  @override
  set pentacles(List<TarotCard> value) {
    _$pentaclesAtom.reportWrite(value, super.pentacles, () {
      super.pentacles = value;
    });
  }

  late final _$cupsAtom = Atom(name: 'DataStoreBase.cups', context: context);

  @override
  List<TarotCard> get cups {
    _$cupsAtom.reportRead();
    return super.cups;
  }

  @override
  set cups(List<TarotCard> value) {
    _$cupsAtom.reportWrite(value, super.cups, () {
      super.cups = value;
    });
  }

  late final _$getSabbatTextAsyncAction =
      AsyncAction('DataStoreBase.getSabbatText', context: context);

  @override
  Future<dynamic> getSabbatText(String name) {
    return _$getSabbatTextAsyncAction.run(() => super.getSabbatText(name));
  }

  late final _$getTarotTextAsyncAction =
      AsyncAction('DataStoreBase.getTarotText', context: context);

  @override
  Future<dynamic> getTarotText(String name) {
    return _$getTarotTextAsyncAction.run(() => super.getTarotText(name));
  }

  late final _$DataStoreBaseActionController =
      ActionController(name: 'DataStoreBase', context: context);

  @override
  void setSelectedTab(int index) {
    final _$actionInfo = _$DataStoreBaseActionController.startAction(
        name: 'DataStoreBase.setSelectedTab');
    try {
      return super.setSelectedTab(index);
    } finally {
      _$DataStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedSabbat(Sabbat sabbat) {
    final _$actionInfo = _$DataStoreBaseActionController.startAction(
        name: 'DataStoreBase.setSelectedSabbat');
    try {
      return super.setSelectedSabbat(sabbat);
    } finally {
      _$DataStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSelectedTarotCard(TarotCard tarotCard) {
    final _$actionInfo = _$DataStoreBaseActionController.startAction(
        name: 'DataStoreBase.setSelectedTarotCard');
    try {
      return super.setSelectedTarotCard(tarotCard);
    } finally {
      _$DataStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void loadSabbats(Hemisphere hemisphere) {
    final _$actionInfo = _$DataStoreBaseActionController.startAction(
        name: 'DataStoreBase.loadSabbats');
    try {
      return super.loadSabbats(hemisphere);
    } finally {
      _$DataStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
sabbats: ${sabbats},
sabbatText: ${sabbatText},
tarotText: ${tarotText},
isLoading: ${isLoading},
selectedTab: ${selectedTab},
selectedSabbat: ${selectedSabbat},
selectedTarotCard: ${selectedTarotCard},
hasInternet: ${hasInternet},
majorArcana: ${majorArcana},
wands: ${wands},
swords: ${swords},
pentacles: ${pentacles},
cups: ${cups},
closestSabbat: ${closestSabbat},
daysUntilNextSabbat: ${daysUntilNextSabbat},
closestSabbatName: ${closestSabbatName}
    ''';
  }
}
