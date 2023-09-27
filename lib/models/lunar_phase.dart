import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:witch_army_knife/models/lunar_phase_name.dart';

part 'lunar_phase.freezed.dart';
part 'lunar_phase.g.dart';

@freezed
class LunarPhase with _$LunarPhase {
  const factory LunarPhase({
    required String phaseLabel,
    required double start,
    required double end,
    required LunarPhaseName phaseName,
  }) = _LunarPhase;

  factory LunarPhase.fromJson(Map<String, Object?> json) => _$LunarPhaseFromJson(json);
}
