import 'package:flutter/material.dart';
import 'package:housie_tambola/utils/theme/app_colors.dart';
import 'package:housie_tambola/widgets/glass_container.dart';

class StatisticsCard extends StatelessWidget {
  final String number;
  final String title;

  const StatisticsCard(this.number, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return GlassContainer(
      bgcolor: AppColors.primary,
      child: SizedBox(
        width: 170,
        child: Column(
          children: [
            Text(
              number,
              style: const TextStyle(
                fontSize: 42,
                fontWeight: FontWeight.bold,
                color: AppColors.primary,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              title,
              style: const TextStyle(color: AppColors.subtitle, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
