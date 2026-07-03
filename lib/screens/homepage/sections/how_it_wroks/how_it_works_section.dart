import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:housie_tambola/screens/homepage/sections/how_it_wroks/game_mode_card.dart';
import 'package:housie_tambola/utils/constants.dart';
import 'package:housie_tambola/utils/responsive.dart';
import 'package:housie_tambola/utils/theme/app_colors.dart';

class HowItWorksSection extends StatelessWidget {
  const HowItWorksSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    return Container(
      key: Constants.howItWorks,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 40,
        vertical: isMobile ? 10 : 20,
      ),
      alignment: isMobile ? Alignment.topLeft : Alignment.topCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1200),
        child: Column(
          children: [
            Text(
              "How It Works",
              style: TextStyle(
                fontSize: isMobile ? 36 : 48,
                fontWeight: FontWeight.bold,
                color: AppColors.white,
              ),
            ).animate().fadeIn(duration: 600.ms).slideY(begin: .15),

            Text(
              "Choose your favorite way to play Housie.",
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColors.subtitle, fontSize: 16),
            ).animate(delay: 150.ms).fadeIn(duration: 500.ms),
            SizedBox(height: isMobile ? 20 : 30),
            Center(
              child: Wrap(
                spacing: 24,
                runSpacing: 24,
                alignment: WrapAlignment.center,
                runAlignment: WrapAlignment.center,
                crossAxisAlignment: WrapCrossAlignment.center,
                children: const [
                  GameModeCard(
                    icon: Icons.smart_toy_outlined,
                    title: "Play with Computer",
                    description:
                        "Start instantly against the computer. Receive your ticket, watch live number calling, claim winning patterns and enjoy a complete offline experience.",
                  ),
                  GameModeCard(
                    icon: Icons.wifi_tethering,
                    title: "Play with Friends (Offline)",
                    description:
                        "Create or join a nearby room using Wi-Fi, Bluetooth and Nearby Devices. Play together without an internet connection.",
                  ),
                  GameModeCard(
                    icon: Icons.public,
                    title: "Play with Friends (Online)",
                    description:
                        "Invite friends from anywhere. Create or join an online room and enjoy real-time multiplayer gameplay together.",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
