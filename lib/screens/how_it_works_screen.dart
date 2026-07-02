import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:housie_tambola/screens/game_mode_card.dart';
import 'package:housie_tambola/theme/app_colors.dart';
import 'package:housie_tambola/utils/constants.dart';
import 'package:housie_tambola/widgets/responsive.dart';

class HowItWorksSection extends StatelessWidget {
  const HowItWorksSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    return Container(
      key: Constants.howItWorks,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 40,
        vertical: isMobile ? 20 : 40,
      ),
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

            const SizedBox(height: 16),

            Text(
              "Choose your favorite way to play Housie.",
              textAlign: TextAlign.center,
              style: const TextStyle(color: AppColors.subtitle, fontSize: 16),
            ).animate(delay: 150.ms).fadeIn(duration: 500.ms),

            const SizedBox(height: 60),

            Wrap(
              spacing: 24,
              runSpacing: 24,
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
          ],
        ),
      ),
    );
  }
}
