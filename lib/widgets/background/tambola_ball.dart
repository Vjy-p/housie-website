import 'package:flutter/material.dart';
import 'package:housie_tambola/utils/theme/app_colors.dart';

class TambolaBall extends StatelessWidget {
  const TambolaBall({super.key, required this.number, required this.size});

  final int number;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            AppColors.white.withValues(alpha: .18),
            AppColors.white.withValues(alpha: .05),
          ],
        ),
        border: Border.all(color: AppColors.white.withValues(alpha: .18)),
        boxShadow: [
          BoxShadow(
            color: AppColors.white.withValues(alpha: .05),
            blurRadius: 20,
          ),
        ],
      ),
      alignment: Alignment.center,
      child: Text(
        number.toString().padLeft(2, "0"),
        style: TextStyle(
          color: AppColors.white.withValues(alpha: .45),
          fontWeight: FontWeight.bold,
          fontSize: size * .28,
        ),
      ),
    );
  }
}
