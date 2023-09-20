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

  late final _$getSabbatTextAsyncAction =
      AsyncAction('DataStoreBase.getSabbatText', context: context);

  @override
  Future<dynamic> getSabbatText(String name) {
    return _$getSabbatTextAsyncAction.run(() => super.getSabbatText(name));
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
  String toString() {
    return '''
sabbats: ${sabbats},
sabbatText: ${sabbatText},
isLoading: ${isLoading},
selectedTab: ${selectedTab},
selectedSabbat: ${selectedSabbat},
hasInternet: ${hasInternet},
closestSabbat: ${closestSabbat},
daysUntilNextSabbat: ${daysUntilNextSabbat},
closestSabbatName: ${closestSabbatName}
    ''';
  }
}
