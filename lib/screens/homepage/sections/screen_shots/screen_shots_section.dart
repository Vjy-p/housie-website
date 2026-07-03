import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:housie_tambola/screens/homepage/sections/screen_shots/screen_shot_card.dart';
import 'package:housie_tambola/utils/constants.dart';
import 'package:housie_tambola/utils/responsive.dart';
import 'package:housie_tambola/utils/theme/app_colors.dart';

class ScreenshotsSection extends StatelessWidget {
  const ScreenshotsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    final screenshots = [
      ("Home", "assets/images/ss1.png"),
      ("Computer", "assets/images/ss5.png"),
      ("Lobby", "assets/images/ss2.png"),
      ("Offline Game", "assets/images/ss4.png"),
      ("Online Game", "assets/images/ss3.png"),
      ("Winners", "assets/images/ss6.png"),
    ];

    return Container(
      key: Constants.screenshots,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 40,
        vertical: isMobile ? 0 : 20,
      ),
      alignment: isMobile ? Alignment.topLeft : Alignment.topCenter,
      child: Column(
        children: [
          Text(
            "App Screenshots",
            style: TextStyle(
              fontSize: isMobile ? 36 : 48,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ).animate().fadeIn(duration: 600.ms).slideY(begin: .15),
          const Text(
            "A quick look at the Housie Game experience.",
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.subtitle, fontSize: 16),
          ).animate(delay: 150.ms).fadeIn(duration: 500.ms),
          SizedBox(height: isMobile ? 10 : 30),
          SizedBox(
            height: 520,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: screenshots.length,
              separatorBuilder: (_, _) => const SizedBox(width: 28),
              padding: EdgeInsets.zero,
              itemBuilder: (_, index) {
                return ScreenshotCard(
                  title: screenshots[index].$1,
                  image: screenshots[index].$2,
                  delay: index * 120,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
