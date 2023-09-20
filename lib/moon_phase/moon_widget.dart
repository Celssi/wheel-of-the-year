import 'package:flutter/material.dart';
import 'package:witch_army_blade/moon_phase/moon_painter.dart';

class MoonWidget extends StatelessWidget {
  const MoonWidget({
    required this.date,
    super.key,
    this.size = 36,
    this.resolution = 96,
    this.moonColor = Colors.amber,
    this.earthShineColor = Colors.black87,
  });

  final DateTime date;
  final double size;
  final double resolution;
  final Color moonColor;
  final Color earthShineColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Transform.scale(
        scale: size / (resolution * 2),
        child: CustomPaint(
          painter: MoonPainter(moonWidget: this),
        ),
      ),
    );
  }
}
