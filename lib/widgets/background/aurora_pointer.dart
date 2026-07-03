import 'dart:math';

import 'package:flutter/material.dart';
import 'package:housie_tambola/utils/theme/app_colors.dart';

class AuroraPainter extends CustomPainter {
  final double progress;

  AuroraPainter({required this.progress});

  @override
  void paint(Canvas canvas, Size size) {
    final background = Paint()..color = const Color(0xff070B16);

    canvas.drawRect(Offset.zero & size, background);

    _drawBlob(
      canvas,
      size,
      color: AppColors.primary,
      radius: 300,
      x: size.width * (.15 + .08 * sin(progress * pi * 2)),
      y: size.height * (.25 + .04 * cos(progress * pi * 2)),
    );

    _drawBlob(
      canvas,
      size,
      color: AppColors.accent,
      radius: 260,
      x: size.width * (.75 + .06 * cos(progress * pi * 2)),
      y: size.height * (.35 + .08 * sin(progress * pi * 2)),
    );

    _drawBlob(
      canvas,
      size,
      color: AppColors.secondary,
      radius: 280,
      x: size.width * (.45 + .05 * sin(progress * pi * 4)),
      y: size.height * (.80 + .03 * cos(progress * pi * 4)),
    );
  }

  void _drawBlob(
    Canvas canvas,
    Size size, {
    required Color color,
    required double radius,
    required double x,
    required double y,
  }) {
    final paint = Paint()
      ..shader = RadialGradient(
        colors: [
          color.withValues(alpha: .35),
          color.withValues(alpha: .15),
          Colors.transparent,
        ],
      ).createShader(Rect.fromCircle(center: Offset(x, y), radius: radius));

    canvas.drawCircle(Offset(x, y), radius, paint);
  }

  @override
  bool shouldRepaint(covariant AuroraPainter oldDelegate) {
    return oldDelegate.progress != progress;
  }
}
