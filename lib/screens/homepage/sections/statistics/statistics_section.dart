import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:housie_tambola/screens/homepage/sections/statistics/statistics_card.dart';
import 'package:housie_tambola/utils/responsive.dart';

class StatisticsSection extends StatelessWidget {
  const StatisticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final mobile = Responsive.isMobile(context);

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        vertical: mobile ? 16 : 40,
        horizontal: mobile ? 0 : 20,
      ),
      child: Center(
        child: Wrap(
          spacing: 50,
          runSpacing: 30,
          alignment: WrapAlignment.center,
          children: const [
            StatisticsCard("12K+", "Players"),
            StatisticsCard("1500+", "Games"),
            StatisticsCard("500+", "Rooms"),
            StatisticsCard("99.9%", "Uptime"),
          ],
        ),
      ),
    ).animate().fade().slideY();
  }
}
