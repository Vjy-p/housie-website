import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:housie_tambola/utils/responsive.dart';
import 'package:housie_tambola/utils/theme/app_colors.dart';
import 'package:housie_tambola/widgets/background/custom_background.dart';
import 'package:housie_tambola/widgets/bullet_widget.dart';
import 'package:housie_tambola/widgets/card_widget.dart';

class PrivacyPolicyScreen extends StatefulWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  State<PrivacyPolicyScreen> createState() => _PrivacyPolicyScreenState();
}

class _PrivacyPolicyScreenState extends State<PrivacyPolicyScreen> {
  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    return CustomBackground(
      child: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: isMobile ? 16 : 24,
          vertical: isMobile ? 20 : 60,
        ),
        physics: BouncingScrollPhysics(),
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _header(),
                const SizedBox(height: 50),
                CardWidget(
                  index: 0,
                  icon: Icons.info_outline,
                  title: "Information We Collect",
                  child: const Column(
                    children: [
                      Bullet(
                        0,
                        "Anonymous user ID created through Firebase Anonymous Authentication.",
                      ),
                      Bullet(1, "Display name entered in the app."),
                      Bullet(2, "Optional profile picture."),
                      Bullet(
                        3,
                        "Gameplay information including rooms, scores, wins and leaderboards.",
                      ),
                      Bullet(4, "Crash reports and diagnostics."),
                      Bullet(5, "Analytics information."),
                      Bullet(
                        6,
                        "Advertising identifiers used by Google AdMob.",
                      ),
                    ],
                  ),
                ),
                CardWidget(
                  index: 1,
                  icon: Icons.lock_outline,
                  title: "Anonymous Authentication",
                  description:
                      "Our app uses Firebase Anonymous Authentication to securely create an anonymous account. No email address, password or phone number is required.",
                ),

                CardWidget(
                  index: 2,
                  icon: Icons.person_outline,
                  title: "Profile Information",
                  description:
                      "You may choose a display name and optionally upload a profile picture. These may be visible to other players.",
                ),

                CardWidget(
                  index: 3,
                  icon: Icons.sports_esports,
                  title: "How We Use Your Information",
                  child: const Column(
                    children: [
                      Bullet(0, "Provide online multiplayer gameplay."),
                      Bullet(1, "Save your game progress."),
                      Bullet(2, "Display leaderboards."),
                      Bullet(3, "Prevent abuse and cheating."),
                      Bullet(4, "Improve app performance."),
                      Bullet(5, "Display Google AdMob advertisements."),
                    ],
                  ),
                ),

                CardWidget(
                  index: 4,
                  icon: Icons.campaign_outlined,
                  title: "Advertising",
                  description:
                      "Google AdMob may collect device identifiers to provide personalized or non-personalized advertisements.",
                ),

                CardWidget(
                  index: 5,
                  icon: Icons.analytics_outlined,
                  title: "Analytics",
                  description:
                      "Firebase Analytics and Crashlytics help us improve stability and user experience.",
                ),

                CardWidget(
                  index: 6,
                  icon: Icons.notifications_active_outlined,
                  title: "Notifications",
                  description:
                      "Firebase Cloud Messaging (FCM) may be used for gameplay notifications and announcements.",
                ),

                CardWidget(
                  index: 7,
                  icon: Icons.storage_outlined,
                  title: "Data Storage",
                  description:
                      "Data is securely stored using Firebase and Supabase.",
                ),

                CardWidget(
                  index: 8,
                  icon: Icons.share_outlined,
                  title: "Data Sharing",
                  child: const Column(
                    children: [
                      Bullet(0, "Google Firebase"),
                      Bullet(1, "Google AdMob"),
                      Bullet(2, "Supabase"),
                    ],
                  ),
                ),

                CardWidget(
                  index: 9,
                  icon: Icons.child_care_outlined,
                  title: "Children's Privacy",
                  description:
                      "Children should use the app under parental supervision. We do not knowingly collect unnecessary personal information.",
                ),

                CardWidget(
                  index: 10,
                  icon: Icons.security,
                  title: "Data Security",
                  description:
                      "We use industry-standard security measures and encrypted connections.",
                ),

                CardWidget(
                  index: 11,
                  icon: Icons.delete_outline,
                  title: "Your Rights",
                  description:
                      "You may delete your account and associated game data from the app or contact us by email.",
                ),

                CardWidget(
                  index: 12,
                  icon: Icons.update,
                  title: "Changes",
                  description:
                      "We may update this Privacy Policy periodically.",
                ),

                CardWidget(
                  index: 13,
                  icon: Icons.email_outlined,
                  title: "Contact",
                  child: const SelectableText(
                    "housieconnect@gmail.com",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.deepPurple,
                    ),
                  ),
                ),

                const SizedBox(height: 60),

                const Center(
                      child: Text(
                        "© 2026 Housie Game. All Rights Reserved.",
                        style: TextStyle(color: AppColors.grey),
                      ),
                    )
                    .animate(delay: 1800.ms)
                    .fadeIn(duration: 800.ms)
                    .slideY(begin: .2),
              ],
            ),
          ),
        ),
      ).animate().fadeIn(duration: 600.ms).slideY(begin: .08),
    );
  }

  Widget _header() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
              "Privacy Policy",
              style: TextStyle(
                fontSize: 48,
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
            )
            .animate()
            .fadeIn(duration: 700.ms, curve: Curves.easeOut)
            .slideY(
              begin: .25,
              end: 0,
              duration: 700.ms,
              curve: Curves.easeOutCubic,
            ),

        const SizedBox(height: 10),

        Text(
              "Last Updated • June 30, 2026",
              style: TextStyle(
                fontSize: 12,
                color: AppColors.grey,
                fontWeight: FontWeight.normal,
              ),
            )
            .animate(delay: 250.ms)
            .fadeIn(duration: 600.ms)
            .slideY(begin: .15, end: 0),
      ],
    );
  }
}
