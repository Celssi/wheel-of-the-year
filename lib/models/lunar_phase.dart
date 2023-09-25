import 'package:witch_army_knife/models/lunar_phase_name.dart';

class LunarPhase {
  LunarPhase(this.phaseLabel, this.start, this.end, this.phaseName);

  final String phaseLabel;
  final double start;
  final double end;
  final LunarPhaseName phaseName;
}
