import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:housie_tambola/utils/responsive.dart';
import 'package:housie_tambola/utils/theme/app_colors.dart';
import 'package:housie_tambola/widgets/background/custom_background.dart';
import 'package:housie_tambola/widgets/bullet_widget.dart';
import 'package:housie_tambola/widgets/card_widget.dart';

class TermsScreen extends StatelessWidget {
  const TermsScreen({super.key});

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
                  icon: Icons.description_outlined,
                  title: "Welcome",
                  description:
                      "Welcome to Housie Game. By downloading, installing, or using our application, you agree to these Terms & Conditions. If you do not agree with these terms, please discontinue using the application.",
                ),
                CardWidget(
                  index: 1,
                  icon: Icons.apps,
                  title: "Use of the Application",
                  description:
                      "Housie Game is provided for entertainment purposes only. You agree to use the application in accordance with all applicable laws and these Terms & Conditions.",
                ),
                CardWidget(
                  index: 2,
                  icon: Icons.rule,
                  title: "User Responsibilities",
                  child: const Column(
                    children: [
                      Bullet(
                        0,
                        "Do not attempt to cheat, exploit, or manipulate gameplay.",
                      ),
                      Bullet(
                        1,
                        "Do not use offensive or inappropriate display names.",
                      ),
                      Bullet(
                        2,
                        "Do not upload offensive, illegal, or copyrighted profile pictures.",
                      ),
                      Bullet(
                        3,
                        "Do not interfere with the app's servers or services.",
                      ),
                      Bullet(
                        4,
                        "Do not reverse engineer or modify the application.",
                      ),
                      Bullet(
                        5,
                        "Do not use bots, scripts, or automated tools.",
                      ),
                    ],
                  ),
                ),
                CardWidget(
                  index: 3,
                  icon: Icons.people_outline,
                  title: "Multiplayer Gameplay",
                  description:
                      "Housie Game provides online multiplayer gameplay. Players are expected to behave respectfully while participating in public or private game rooms.",
                ),
                CardWidget(
                  index: 4,
                  icon: Icons.account_circle_outlined,
                  title: "User Content",
                  description:
                      "Users may optionally upload a profile picture and choose a display name. You are responsible for ensuring that your profile information does not violate the rights of others or contain inappropriate content. We reserve the right to remove inappropriate content or suspend accounts that violate these Terms.",
                ),

                CardWidget(
                  index: 5,
                  icon: Icons.campaign_outlined,
                  title: "Advertisements",
                  description:
                      "The application may display advertisements through Google AdMob. These advertisements help support the continued development and maintenance of the application.",
                ),

                CardWidget(
                  index: 6,
                  icon: Icons.delete_outline,
                  title: "Account Deletion",
                  description:
                      "You may permanently delete your account and associated data at any time through the Delete Account option available within the application.",
                ),

                CardWidget(
                  index: 7,
                  icon: Icons.copyright_outlined,
                  title: "Intellectual Property",
                  description:
                      "All application content, including the app design, graphics, logos, source code, and trademarks, are the property of the developer unless otherwise stated. You may not copy, reproduce, distribute, or modify any part of the application without prior written permission.",
                ),

                CardWidget(
                  index: 8,
                  icon: Icons.warning_amber_rounded,
                  title: "Disclaimer",
                  description:
                      "The application is provided 'AS IS' without warranties of any kind, either express or implied. We do not guarantee uninterrupted or error-free operation of the service.",
                ),

                CardWidget(
                  index: 9,
                  icon: Icons.gavel_outlined,
                  title: "Limitation of Liability",
                  description:
                      "To the fullest extent permitted by law, the developer shall not be liable for any indirect, incidental, special, or consequential damages arising from the use or inability to use the application.",
                ),

                CardWidget(
                  index: 10,
                  icon: Icons.update,
                  title: "Changes to These Terms",
                  description:
                      "We may update these Terms & Conditions from time to time. Continued use of the application after changes become effective constitutes your acceptance of the revised Terms.",
                ),

                CardWidget(
                  index: 11,
                  icon: Icons.email_outlined,
                  title: "Contact Us",
                  child: const SelectableText(
                    "housieconnect@gmail.com",
                    style: TextStyle(
                      color: Colors.deepPurple,
                      fontWeight: FontWeight.bold,
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
              "Terms & Conditions",
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
