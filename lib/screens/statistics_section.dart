import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../theme/app_colors.dart';
import '../widgets/responsive.dart';

class StatisticsSection extends StatelessWidget {
  const StatisticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final mobile = Responsive.isMobile(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: mobile ? 20 : 60,
        horizontal: mobile ? 16 : 20,
      ),
      child: Center(
        child: Wrap(
          spacing: 50,
          runSpacing: 30,
          alignment: WrapAlignment.center,
          children: const [
            StatCard("12K+", "Players"),
            StatCard("1500+", "Games"),
            StatCard("500+", "Rooms"),
            StatCard("99.9%", "Uptime"),
          ],
        ),
      ),
    ).animate().fade().slideY();
  }
}

class StatCard extends StatelessWidget {
  final String number;
  final String title;

  const StatCard(this.number, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
    );
  }
}
