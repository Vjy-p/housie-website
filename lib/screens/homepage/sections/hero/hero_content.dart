import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:housie_tambola/utils/theme/app_colors.dart';

class HeroContent extends StatelessWidget {
  const HeroContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: AppColors.card,
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(
            "🎉 Real-Time Multiplayer",
            style: TextStyle(
              color: AppColors.text,
              fontWeight: FontWeight.bold,
              fontSize: 12,
            ),
          ),
        ).animate().fade().slideX(),

        const SizedBox(height: 25),

        Text(
          "Play Tambola\nwith Friends",
          style: TextStyle(
            color: AppColors.text,
            fontWeight: FontWeight.bold,
            fontSize: 58,
            height: 1.1,
          ),
        ).animate().fade(delay: 300.ms).slideY(),

        const SizedBox(height: 24),

        Text(
          "Create rooms, invite friends, and enjoy seamless real-time Tambola games anytime, anywhere.",
          style: TextStyle(
            color: AppColors.subtitle,
            fontWeight: FontWeight.bold,
            fontSize: 18,
            height: 1.6,
          ),
        ).animate().fade(delay: 500.ms),

        const SizedBox(height: 40),

        Row(
          children: [
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.download, color: AppColors.white),
              label: Text(
                "Download App",
                style: TextStyle(
                  color: AppColors.text,
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                ),
              ),
            ),

            const SizedBox(width: 16),

            OutlinedButton(
              onPressed: () {},
              child: Text(
                "Learn More",
                style: TextStyle(
                  color: AppColors.text,
                  fontWeight: FontWeight.normal,
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ).animate().fade(delay: 700.ms),

        const SizedBox(height: 40),

        Row(
          children: [
            Icon(Icons.star, color: Colors.amber),

            SizedBox(width: 8),

            Text(
              "10K+ Happy Players",
              style: TextStyle(
                color: AppColors.text,
                fontWeight: FontWeight.bold,
                fontSize: 12,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
