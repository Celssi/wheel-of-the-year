// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SettingsStore on SettingsStoreBase, Store {
  late final _$hemisphereAtom =
      Atom(name: 'SettingsStoreBase.hemisphere', context: context);

  @override
  Hemisphere get hemisphere {
    _$hemisphereAtom.reportRead();
    return super.hemisphere;
  }

  @override
  set hemisphere(Hemisphere value) {
    _$hemisphereAtom.reportWrite(value, super.hemisphere, () {
      super.hemisphere = value;
    });
  }

  late final _$showMoonPhaseAtom =
      Atom(name: 'SettingsStoreBase.showMoonPhase', context: context);

  @override
  bool get showMoonPhase {
    _$showMoonPhaseAtom.reportRead();
    return super.showMoonPhase;
  }

  @override
  set showMoonPhase(bool value) {
    _$showMoonPhaseAtom.reportWrite(value, super.showMoonPhase, () {
      super.showMoonPhase = value;
    });
  }

  late final _$showNextSabbatAtom =
      Atom(name: 'SettingsStoreBase.showNextSabbat', context: context);

  @override
  bool get showNextSabbat {
    _$showNextSabbatAtom.reportRead();
    return super.showNextSabbat;
  }

  @override
  set showNextSabbat(bool value) {
    _$showNextSabbatAtom.reportWrite(value, super.showNextSabbat, () {
      super.showNextSabbat = value;
    });
  }

  late final _$SettingsStoreBaseActionController =
      ActionController(name: 'SettingsStoreBase', context: context);

  @override
  void setShowMoonPhase(bool value, BuildContext context) {
    final _$actionInfo = _$SettingsStoreBaseActionController.startAction(
        name: 'SettingsStoreBase.setShowMoonPhase');
    try {
      return super.setShowMoonPhase(value, context);
    } finally {
      _$SettingsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setShowNextSabbat(bool value, BuildContext context) {
    final _$actionInfo = _$SettingsStoreBaseActionController.startAction(
        name: 'SettingsStoreBase.setShowNextSabbat');
    try {
      return super.setShowNextSabbat(value, context);
    } finally {
      _$SettingsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setHemisphere(Hemisphere? value, BuildContext context) {
    final _$actionInfo = _$SettingsStoreBaseActionController.startAction(
        name: 'SettingsStoreBase.setHemisphere');
    try {
      return super.setHemisphere(value, context);
    } finally {
      _$SettingsStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
hemisphere: ${hemisphere},
showMoonPhase: ${showMoonPhase},
showNextSabbat: ${showNextSabbat}
    ''';
  }
}
