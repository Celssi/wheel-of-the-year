import 'dart:math';

import 'package:flutter/material.dart';
import 'package:witch_army_knife/pages/home/moon_phase/moon_phase.dart';

class MoonPainter extends CustomPainter {
  MoonPainter({required this.moonWidget});

  MoonWidget moonWidget;
  final Paint paintDark = Paint();
  final Paint paintLight = Paint();
  final MoonPhase moon = MoonPhase();

  @override
  void paint(Canvas canvas, Size size) {
    double radius = moonWidget.resolution;

    int width = radius.toInt() * 2;
    int height = radius.toInt() * 2;
    double phaseAngle = moon.getPhaseAngle(moonWidget.date);

    double xCenter = 0;
    double yCenter = 0;

    try {
      paintLight.color = moonWidget.moonColor;
      canvas.drawCircle(const Offset(0, 1), radius, paintLight);
    } catch (e) {
      radius = min(width, height) * 0.4;
      paintLight.color = moonWidget.moonColor;
      Rect oval = Rect.fromLTRB(xCenter - radius, yCenter - radius,
          xCenter + radius, yCenter + radius);
      canvas.drawOval(oval, paintLight);
    }

    double positionAngle = pi - phaseAngle;
    if (positionAngle < 0.0) {
      positionAngle += 2.0 * pi;
    }

    paintDark.color = moonWidget.earthShineColor;

    double cosTerm = cos(positionAngle);

    double rSquared = radius * radius;
    double whichQuarter = ((positionAngle * 2.0 / pi) + 4) % 4;

    for (int j = 0; j < radius; ++j) {
      double rrf = sqrt(rSquared - j * j);
      double rr = rrf;
      double xx = rrf * cosTerm;
      double x1 = xCenter - (whichQuarter < 2 ? rr : xx);
      double w = rr + xx;
      canvas.drawRect(
          Rect.fromLTRB(x1, yCenter - j, w + x1, yCenter - j + 2), paintDark);
      canvas.drawRect(
          Rect.fromLTRB(x1, yCenter + j, w + x1, yCenter + j + 2), paintDark);
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
