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

  @override
  String toString() {
    return '''
sabbats: ${sabbats},
closest: ${closest},
daysUntilNext: ${daysUntilNext},
closestName: ${closestName}
    ''';
  }
}
