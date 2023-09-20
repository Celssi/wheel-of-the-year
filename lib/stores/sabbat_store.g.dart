// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sabbat_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SabbatStore on SabbatStoreBase, Store {
  Computed<Sabbat>? _$closestComputed;

  @override
  Sabbat get closest =>
      (_$closestComputed ??= Computed<Sabbat>(() => super.closest,
              name: 'SabbatStoreBase.closest'))
          .value;
  Computed<int>? _$daysUntilNextComputed;

  @override
  int get daysUntilNext =>
      (_$daysUntilNextComputed ??= Computed<int>(() => super.daysUntilNext,
              name: 'SabbatStoreBase.daysUntilNext'))
          .value;
  Computed<String>? _$closestNameComputed;

  @override
  String get closestName =>
      (_$closestNameComputed ??= Computed<String>(() => super.closestName,
              name: 'SabbatStoreBase.closestName'))
          .value;

  late final _$sabbatsAtom =
      Atom(name: 'SabbatStoreBase.sabbats', context: context);

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
      Atom(name: 'SabbatStoreBase.sabbatText', context: context);

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
      Atom(name: 'SabbatStoreBase.isLoading', context: context);

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

  late final _$getSabbatTextAsyncAction =
      AsyncAction('SabbatStoreBase.getSabbatText', context: context);

  @override
  Future<dynamic> getSabbatText(String name) {
    return _$getSabbatTextAsyncAction.run(() => super.getSabbatText(name));
  }

  @override
  String toString() {
    return '''
sabbats: ${sabbats},
sabbatText: ${sabbatText},
isLoading: ${isLoading},
closest: ${closest},
daysUntilNext: ${daysUntilNext},
closestName: ${closestName}
    ''';
  }
}
