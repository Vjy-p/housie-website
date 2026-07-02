import 'package:flutter/material.dart';
import 'package:housie_tambola/screens/faq_screen.dart';
import 'package:housie_tambola/screens/features/features_section.dart';
import 'package:housie_tambola/screens/hero/hero_section.dart';
import 'package:housie_tambola/screens/homepage_footer.dart';
import 'package:housie_tambola/screens/how_it_works_screen.dart';
import 'package:housie_tambola/screens/screen_shots_section.dart';
import 'package:housie_tambola/widgets/app_bar/app_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      canShowAppBar: true,
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          spacing: 20,
          children: [
            HeroSection(),
            FeaturesSection(),
            HowItWorksSection(),
            ScreenshotsSection(),
            FaqScreen(),
            //  StatisticsSection(),
            // ScreenshotsSection(),

            // DownloadSection(),
            // FooterSection(),
            HomepageFooter(),
          ],
        ),
      ),
      // .animate().fadeIn(duration: 600.ms).slideY(begin: .08),
    );
  }
}
