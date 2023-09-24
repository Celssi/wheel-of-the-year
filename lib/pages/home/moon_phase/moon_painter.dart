import 'dart:math';

import 'package:flutter/material.dart';
import 'package:witch_army_knife/models/hemisphere.dart';
import 'package:witch_army_knife/pages/home/moon_phase/moon_phase.dart';

class MoonPainter extends CustomPainter {
  MoonPainter({required this.moonWidget});

  final MoonWidget moonWidget;
  final Paint paintDark = Paint();
  final Paint paintLight = Paint();
  final MoonPhase moon = MoonPhase();

  @override
  void paint(Canvas canvas, Size size) {
    double moonRadius = moonWidget.resolution;
    double widgetSize = moonWidget.size;

    // Ensure that the moon radius is within the bounds of the widget
    if (moonRadius > widgetSize / 2) {
      moonRadius = widgetSize / 2;
    }

    double xCenter = size.width / 2;
    double yCenter = size.height / 2;
    double phaseAngle = moon.getPhaseAngle(moonWidget.date);

    try {
      paintLight.color = moonWidget.moonColor;
      canvas.drawCircle(Offset(xCenter, yCenter), moonRadius, paintLight);
    } catch (e) {
      moonRadius = min(size.width, size.height) * 0.4;
      paintLight.color = moonWidget.moonColor;
      Rect oval = Rect.fromLTRB(xCenter - moonRadius, yCenter - moonRadius,
          xCenter + moonRadius, yCenter + moonRadius);
      canvas.drawOval(oval, paintLight);
    }

    double positionAngle = pi - phaseAngle;
    if (positionAngle < 0.0) {
      positionAngle += 2.0 * pi;
    }

    paintDark.color = moonWidget.earthShineColor;

    double cosTerm = cos(positionAngle);

    double rSquared = moonRadius * moonRadius;
    double whichQuarter = (moonWidget.hemisphere == Hemisphere.southern)
        ? -((positionAngle * 2.0 / pi) + 4) % 4
        : ((positionAngle * 2.0 / pi) + 4) % 4;

    for (int j = 0; j < moonRadius; ++j) {
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
