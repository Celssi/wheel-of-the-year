// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lunar_phase.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LunarPhase _$$_LunarPhaseFromJson(Map<String, dynamic> json) =>
    _$_LunarPhase(
      phaseLabel: json['phaseLabel'] as String,
      start: (json['start'] as num).toDouble(),
      end: (json['end'] as num).toDouble(),
      phaseName: $enumDecode(_$LunarPhaseNameEnumMap, json['phaseName']),
    );

Map<String, dynamic> _$$_LunarPhaseToJson(_$_LunarPhase instance) =>
    <String, dynamic>{
      'phaseLabel': instance.phaseLabel,
      'start': instance.start,
      'end': instance.end,
      'phaseName': _$LunarPhaseNameEnumMap[instance.phaseName]!,
    };

const _$LunarPhaseNameEnumMap = {
  LunarPhaseName.newMoon: 'newMoon',
  LunarPhaseName.waxingCrescent: 'waxingCrescent',
  LunarPhaseName.firstQuarter: 'firstQuarter',
  LunarPhaseName.waxingGibbous: 'waxingGibbous',
  LunarPhaseName.full: 'full',
  LunarPhaseName.waningGibbous: 'waningGibbous',
  LunarPhaseName.lastQuarter: 'lastQuarter',
  LunarPhaseName.waningCrescent: 'waningCrescent',
};
