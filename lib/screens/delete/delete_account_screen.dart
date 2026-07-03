import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:housie_tambola/utils/responsive.dart';
import 'package:housie_tambola/utils/theme/app_colors.dart';
import 'package:housie_tambola/widgets/background/custom_background.dart';
import 'package:housie_tambola/widgets/bullet_widget.dart';
import 'package:housie_tambola/widgets/card_widget.dart';

class DeleteAccountScreen extends StatelessWidget {
  const DeleteAccountScreen({super.key});

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
                  title: "Delete Your Account",
                  description:
                      "Housie Game allows you to permanently delete your account and associated data at any time. You can complete this process directly within the app without contacting support.",
                ),

                CardWidget(
                  index: 1,
                  icon: Icons.warning_amber_rounded,
                  title: "Important",
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: AppColors.orange.withValues(alpha: .12),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: AppColors.orange.withValues(alpha: .3),
                      ),
                    ),
                    child: const Text(
                      "Deleting your account is permanent and cannot be undone.",
                      style: TextStyle(
                        color: AppColors.orange,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                CardWidget(
                  index: 2,
                  icon: Icons.list_alt,
                  title: "How to Delete Your Account",
                  child: const Column(
                    children: [
                      Bullet(0, "Open the Housie Game app."),
                      Bullet(1, "Go to your Profile."),
                      Bullet(2, "Tap Delete Account."),
                      Bullet(3, "Read the confirmation message."),
                      Bullet(
                        4,
                        "Tap Delete to permanently remove your account.",
                      ),
                    ],
                  ),
                ),

                CardWidget(
                  index: 3,
                  icon: Icons.delete_forever_outlined,
                  title: "Data That Will Be Deleted",
                  child: const Column(
                    children: [
                      Bullet(0, "Your anonymous account."),
                      Bullet(1, "Your display name."),
                      Bullet(2, "Your profile picture."),
                      Bullet(3, "Your game profile."),
                      Bullet(4, "Your leaderboard information."),
                      Bullet(5, "Your gameplay statistics."),
                      Bullet(6, "Your game history stored in our database."),
                    ],
                  ),
                ),

                CardWidget(
                  index: 4,
                  icon: Icons.storage_outlined,
                  title: "Data That May Be Retained",
                  description:
                      "Certain anonymous information may be retained for a limited period where required for:",
                  child: const Column(
                    children: [
                      Bullet(0, "Fraud prevention."),
                      Bullet(1, "Security investigations."),
                      Bullet(2, "Legal obligations."),
                      Bullet(3, "Anonymous analytics."),
                      Bullet(4, "Crash reporting."),
                    ],
                  ),
                ),

                CardWidget(
                  index: 5,
                  icon: Icons.verified_user_outlined,
                  title: "Privacy",
                  description:
                      "Any retained records do not personally identify you.",
                ),

                CardWidget(
                  index: 6,
                  icon: Icons.help_outline,
                  title: "Need Help?",
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "If you cannot access the app and need assistance deleting your account, please contact us.",
                        style: TextStyle(
                          color: AppColors.subtitle,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 16),
                      SelectableText(
                        "housieconnect@gmail.com",
                        style: TextStyle(
                          color: Colors.deepPurple,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 16),
                      Text(
                        "Please include your in-game display name (if known) to help us locate your account.",
                        style: TextStyle(
                          color: AppColors.subtitle,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),

                CardWidget(
                  index: 7,
                  icon: Icons.schedule_outlined,
                  title: "Processing Time",
                  description:
                      "If a manual deletion request is required, we aim to process it within 30 days.",
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
              "Delete Account",
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
              style: TextStyle(fontSize: 12, color: AppColors.grey),
            )
            .animate(delay: 250.ms)
            .fadeIn(duration: 600.ms)
            .slideY(begin: .15, end: 0),
      ],
    );
  }
}
