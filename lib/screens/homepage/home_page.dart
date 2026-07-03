import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:housie_tambola/screens/homepage/sections/app_bar/logo_widget.dart';
import 'package:housie_tambola/screens/homepage/sections/app_bar/nav_item.dart';
import 'package:housie_tambola/screens/homepage/sections/faq_section.dart';
import 'package:housie_tambola/screens/homepage/sections/features/features_section.dart';
import 'package:housie_tambola/screens/homepage/sections/hero/hero_section.dart';
import 'package:housie_tambola/screens/homepage/sections/homepage_footer.dart';
import 'package:housie_tambola/screens/homepage/sections/how_it_wroks/how_it_works_section.dart';
import 'package:housie_tambola/screens/homepage/sections/screen_shots/screen_shots_section.dart';
import 'package:housie_tambola/utils/constants.dart';
import 'package:housie_tambola/utils/responsive.dart';
import 'package:housie_tambola/utils/scroll_helper.dart';
import 'package:housie_tambola/utils/theme/app_colors.dart';
import 'package:housie_tambola/widgets/background/custom_background.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final mobile = Responsive.isMobile(context);

    return CustomBackground(
      appBar: customAppBar(context: context, mobile: mobile),
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.zero,
        child: Column(
          spacing: 20,
          children: [
            HeroSection(),
            FeaturesSection(),
            HowItWorksSection(),
            ScreenshotsSection(),
            FaqSection(),
            // StatisticsSection(),
            HomepageFooter(),
          ],
        ),
      ),
      // .animate().fadeIn(duration: 600.ms).slideY(begin: .08),
    );
  }

  AppBar customAppBar({required BuildContext context, required bool mobile}) {
    return AppBar(
      automaticallyImplyLeading: false,
      automaticallyImplyActions: false,

      title:
          Container(
                // height: 72,
                padding: const EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 10,
                ),
                decoration: BoxDecoration(
                  color: AppColors.white.withValues(alpha: .06),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(
                    color: AppColors.white.withValues(alpha: .10),
                  ),
                ),
                child: Row(
                  spacing: 16,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const LogoWidget(),
                    const Spacer(),
                    if (mobile)
                      Builder(
                        builder: (scaffoldContext) {
                          return EndDrawerButton(
                            onPressed: () {
                              Scaffold.of(scaffoldContext).openEndDrawer();
                              // Constants.scaffoldKey.currentState?.openEndDrawer();
                            },
                          );
                        },
                      )
                    else ...[
                      NavItem(
                        title: "Features",
                        onTap: () {
                          ScrollHelper.scrollTo(Constants.features);
                          // context.go("/features");
                        },
                      ),
                      NavItem(
                        title: "Privacy",
                        onTap: () {
                          context.go("/privacy");
                        },
                      ),
                      NavItem(
                        title: "Terms",
                        onTap: () {
                          context.go("/terms");
                        },
                      ),
                      NavItem(
                        title: "Delete",
                        onTap: () {
                          context.go("/delete");
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: FilledButton(
                          onPressed: () {},
                          child: Text(
                            "Download",
                            style: TextStyle(
                              color: AppColors.text,
                              fontWeight: FontWeight.w600,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ],
                ),
              )
              .animate()
              .fadeIn(duration: 700.ms)
              .slideY(begin: -.4, end: 0, curve: Curves.easeOutExpo),
    );
  }
}
