import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:housie_tambola/theme/app_colors.dart';
import 'package:housie_tambola/utils/constants.dart';
import 'package:housie_tambola/utils/scroll_helper.dart';
import 'package:housie_tambola/widgets/app_bar/logo_widget.dart';
import 'package:housie_tambola/widgets/responsive.dart';

class HomepageFooter extends StatelessWidget {
  const HomepageFooter({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    return Container(
      key: Constants.footer,
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 40,
        vertical: isMobile ? 20 : 30,
      ),
      decoration: BoxDecoration(
        color: AppColors.card.withValues(alpha: .5),
        border: Border(
          top: BorderSide(color: AppColors.white.withValues(alpha: .08)),
        ),
      ),
      child: Column(
        children: [
          Wrap(
            spacing: 60,
            runSpacing: 40,
            alignment: WrapAlignment.spaceBetween,
            children: [
              SizedBox(
                // width: 280,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const LogoWidget(),
                    const SizedBox(height: 16),
                    const Text(
                      "Play Housie with friends anytime, anywhere.",
                      style: TextStyle(color: AppColors.subtitle, height: 1.6),
                    ),
                  ],
                ),
              ),

              Column(
                // spacing: 6,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 6, bottom: 6),
                    child: Text(
                      "Quick Links",
                      style: TextStyle(color: AppColors.white),
                    ),
                  ),
                  textButton("Features", () {
                    ScrollHelper.scrollTo(Constants.features);
                  }),
                  textButton("FAQ", () {
                    ScrollHelper.scrollTo(Constants.faq);
                  }),
                  textButton("Privacy Policy", () {
                    context.go("/privacy");
                  }),
                  textButton("Terms", () {
                    context.go("/terms");
                  }),

                  textButton("Delete Account", () {
                    context.go("/delete");
                  }),
                ],
              ),
              Column(
                // spacing: 6,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 6, bottom: 6),
                    child: Text(
                      "Support",
                      style: TextStyle(color: AppColors.white),
                    ),
                  ),
                  textButton("housieconnect@gmail.com", () {}),
                  textButton("How It Works", () {
                    ScrollHelper.scrollTo(Constants.howItWorks);
                  }),
                  textButton("Screenshots", () {
                    ScrollHelper.scrollTo(Constants.screenshots);
                  }),
                ],
              ),

              // _links("Support", ["housieconnect@gmail.com"]),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Download",
                    style: TextStyle(
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  FilledButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.android),
                    label: const Text("Google Play"),
                  ),
                ],
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.only(
              top: isMobile ? 24 : 50,
              bottom: isMobile ? 2 : 24,
            ),
            child: Divider(color: AppColors.white.withValues(alpha: .08)),
          ),

          Text(
            "© 2026 Housie Game. All Rights Reserved.",
            style: TextStyle(color: AppColors.grey),
          ),
        ],
      ).animate().fadeIn(duration: 700.ms).slideY(begin: .08),
    );
  }

  Widget textButton(String text, VoidCallback onTap) {
    return TextButton(
      style: ButtonStyle(
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
        padding: WidgetStatePropertyAll(
          EdgeInsets.symmetric(horizontal: 10, vertical: 2),
        ),
      ),
      onPressed: onTap,
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(color: AppColors.subtitle),
      ),
    );
  }
}
