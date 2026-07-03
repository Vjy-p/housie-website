import 'dart:math';

import 'package:flutter/material.dart';
import 'package:housie_tambola/models/ball_model.dart';
import 'package:housie_tambola/widgets/background/tambola_ball.dart';

class FloatingBallLayer extends StatefulWidget {
  const FloatingBallLayer({super.key});

  @override
  State<FloatingBallLayer> createState() => _FloatingBallLayerState();
}

class _FloatingBallLayerState extends State<FloatingBallLayer>
    with SingleTickerProviderStateMixin {
  late final AnimationController controller;

  late final List<BallModel> balls;

  @override
  void initState() {
    super.initState();

    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 30),
    )..repeat();

    final random = Random();

    balls = List.generate(30, (_) => BallModel.random(random));

    // final width = MediaQuery.sizeOf(context).width;

    // final count = width >= 1200
    //     ? 18
    //     : width >= 768
    //     ? 12
    //     : 8;
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return AnimatedBuilder(
      animation: controller,
      builder: (_, _) {
        return Stack(
          children: balls.map((ball) {
            final wave = sin(controller.value * pi * 2 * ball.speed);

            return Positioned(
              left: ball.position.dx * size.width,
              top: ball.position.dy * size.height + wave * 20,
              child: Transform.rotate(
                angle: controller.value + ball.rotation,
                child: Opacity(
                  opacity: .18,
                  child: TambolaBall(number: ball.number, size: ball.size),
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}
