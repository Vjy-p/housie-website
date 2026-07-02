import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:housie_tambola/theme/app_colors.dart';

class GlassCard extends StatelessWidget {
  final Widget child;

  const GlassCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
        child: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.white.withValues(alpha: .65),
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: AppColors.white.withValues(alpha: .4)),
          ),
          child: child,
        ),
      ),
    );
  }
}
