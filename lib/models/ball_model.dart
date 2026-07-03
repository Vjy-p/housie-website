import 'dart:math';

import 'package:flutter/material.dart';

class BallModel {
  BallModel({
    required this.number,
    required this.position,
    required this.size,
    required this.speed,
    required this.rotation,
  });

  final int number;
  final Offset position;
  final double size;
  final double speed;
  final double rotation;

  factory BallModel.random(Random random) {
    return BallModel(
      number: random.nextInt(90) + 1,
      position: Offset(random.nextDouble(), random.nextDouble()),
      size: random.nextDouble() * 28 + 36,
      speed: random.nextDouble() * .8 + .4,
      rotation: random.nextDouble() * pi,
    );
  }
}
