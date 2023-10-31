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
  Computed<TarotCard>? _$cardOfTheDayComputed;

  @override
  TarotCard get cardOfTheDay =>
      (_$cardOfTheDayComputed ??= Computed<TarotCard>(() => super.cardOfTheDay,
              name: 'DataStoreBase.cardOfTheDay'))
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

  late final _$libraryCategoriesAtom =
      Atom(name: 'DataStoreBase.libraryCategories', context: context);

  @override
  ObservableList<LibraryCategory> get libraryCategories {
    _$libraryCategoriesAtom.reportRead();
    return super.libraryCategories;
  }

  @override
  set libraryCategories(ObservableList<LibraryCategory> value) {
    _$libraryCategoriesAtom.reportWrite(value, super.libraryCategories, () {
      super.libraryCategories = value;
    });
  }

  late final _$libraryTextsAtom =
      Atom(name: 'DataStoreBase.libraryTexts', context: context);

  @override
  ObservableList<LibraryText> get libraryTexts {
    _$libraryTextsAtom.reportRead();
    return super.libraryTexts;
  }

  @override
  set libraryTexts(ObservableList<LibraryText> value) {
    _$libraryTextsAtom.reportWrite(value, super.libraryTexts, () {
      super.libraryTexts = value;
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

  late final _$cardOfTheDayTextAtom =
      Atom(name: 'DataStoreBase.cardOfTheDayText', context: context);

  @override
  TarotText get cardOfTheDayText {
    _$cardOfTheDayTextAtom.reportRead();
    return super.cardOfTheDayText;
  }

  @override
  set cardOfTheDayText(TarotText value) {
    _$cardOfTheDayTextAtom.reportWrite(value, super.cardOfTheDayText, () {
      super.cardOfTheDayText = value;
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

  late final _$selectedCategoryAtom =
      Atom(name: 'DataStoreBase.selectedCategory', context: context);

  @override
  LibraryCategory? get selectedCategory {
    _$selectedCategoryAtom.reportRead();
    return super.selectedCategory;
  }

  @override
  set selectedCategory(LibraryCategory? value) {
    _$selectedCategoryAtom.reportWrite(value, super.selectedCategory, () {
      super.selectedCategory = value;
    });
  }

  late final _$selectedLibraryTextAtom =
      Atom(name: 'DataStoreBase.selectedLibraryText', context: context);

  @override
  LibraryText? get selectedLibraryText {
    _$selectedLibraryTextAtom.reportRead();
    return super.selectedLibraryText;
  }

  @override
  set selectedLibraryText(LibraryText? value) {
    _$selectedLibraryTextAtom.reportWrite(value, super.selectedLibraryText, () {
      super.selectedLibraryText = value;
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

  late final _$tarotDeckAtom =
      Atom(name: 'DataStoreBase.tarotDeck', context: context);

  @override
  TarotDeck get tarotDeck {
    _$tarotDeckAtom.reportRead();
    return super.tarotDeck;
  }

  @override
  set tarotDeck(TarotDeck value) {
    _$tarotDeckAtom.reportWrite(value, super.tarotDeck, () {
      super.tarotDeck = value;
    });
  }

  late final _$getSabbatTextAsyncAction =
      AsyncAction('DataStoreBase.getSabbatText', context: context);

  @override
  Future<dynamic> getSabbatText(String name) {
    return _$getSabbatTextAsyncAction.run(() => super.getSabbatText(name));
  }

  late final _$getCategoryItemsAsyncAction =
      AsyncAction('DataStoreBase.getCategoryItems', context: context);

  @override
  Future<dynamic> getCategoryItems(String name) {
    return _$getCategoryItemsAsyncAction
        .run(() => super.getCategoryItems(name));
  }

  late final _$getTarotTextAsyncAction =
      AsyncAction('DataStoreBase.getTarotText', context: context);

  @override
  Future<dynamic> getTarotText(String name) {
    return _$getTarotTextAsyncAction.run(() => super.getTarotText(name));
  }

  late final _$getLibraryTextAsyncAction =
      AsyncAction('DataStoreBase.getLibraryText', context: context);

  @override
  Future<dynamic> getLibraryText(String name) {
    return _$getLibraryTextAsyncAction.run(() => super.getLibraryText(name));
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
  void setSelectedLibraryCategory(LibraryCategory category) {
    final _$actionInfo = _$DataStoreBaseActionController.startAction(
        name: 'DataStoreBase.setSelectedLibraryCategory');
    try {
      return super.setSelectedLibraryCategory(category);
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
  void setSelectedLibraryText(LibraryText text) {
    final _$actionInfo = _$DataStoreBaseActionController.startAction(
        name: 'DataStoreBase.setSelectedLibraryText');
    try {
      return super.setSelectedLibraryText(text);
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
libraryCategories: ${libraryCategories},
libraryTexts: ${libraryTexts},
sabbatText: ${sabbatText},
tarotText: ${tarotText},
cardOfTheDayText: ${cardOfTheDayText},
isLoading: ${isLoading},
selectedTab: ${selectedTab},
selectedSabbat: ${selectedSabbat},
selectedCategory: ${selectedCategory},
selectedLibraryText: ${selectedLibraryText},
selectedTarotCard: ${selectedTarotCard},
hasInternet: ${hasInternet},
tarotDeck: ${tarotDeck},
closestSabbat: ${closestSabbat},
daysUntilNextSabbat: ${daysUntilNextSabbat},
closestSabbatName: ${closestSabbatName},
cardOfTheDay: ${cardOfTheDay}
    ''';
  }
}
