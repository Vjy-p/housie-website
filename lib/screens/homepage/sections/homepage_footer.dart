import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:housie_tambola/screens/homepage/sections/app_bar/logo_widget.dart';
import 'package:housie_tambola/utils/common_functions.dart';
import 'package:housie_tambola/utils/constants.dart';
import 'package:housie_tambola/utils/responsive.dart';
import 'package:housie_tambola/utils/scroll_helper.dart';
import 'package:housie_tambola/utils/theme/app_colors.dart';

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
              const SizedBox(
                // width: 280,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LogoWidget(),
                    SizedBox(height: 16),
                    Text(
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
                  const Padding(
                    padding: EdgeInsets.only(left: 6, bottom: 6),
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
                  const Padding(
                    padding: EdgeInsets.only(left: 6, bottom: 10),
                    child: Text(
                      "Support",
                      style: TextStyle(color: AppColors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, bottom: 4),
                    child: const SelectableText(
                      "housieconnect@gmail.com",
                      style: TextStyle(
                        color: Colors.deepPurple,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  textButton("How It Works", () {
                    ScrollHelper.scrollTo(Constants.howItWorks);
                  }),
                  textButton("Screenshots", () {
                    ScrollHelper.scrollTo(Constants.screenshots);
                  }),
                ],
              ),
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
                  const SizedBox(height: 16),
                  IconButton(
                    style: ButtonStyle(
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      visualDensity: VisualDensity.compact,
                      padding: WidgetStatePropertyAll(EdgeInsets.zero),
                    ),
                    onPressed: () {
                      CommonFunctions().openPlayStore();
                    },
                    icon: SvgPicture.asset(
                      height: 42,
                      "assets/images/google_play_store.svg",
                    ),
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

          const Text(
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
