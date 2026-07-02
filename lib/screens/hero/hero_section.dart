import 'package:flutter/material.dart';
import 'package:housie_tambola/screens/hero/desktop_hero.dart';
import 'package:housie_tambola/screens/hero/mobile_hero.dart';
import 'package:housie_tambola/utils/constants.dart';

import '../../widgets/responsive.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    return Container(
      key: Constants.hero,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 0),
      // decoration: const BoxDecoration(
      //   gradient: LinearGradient(
      //     colors: [Color(0xffEEF2FF), Colors.white],
      //     begin: Alignment.topLeft,
      //     end: Alignment.bottomRight,
      //   ),
      // ),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 1300),
        child: isMobile ? const MobileHero() : const DesktopHero(),
      ),
    );
  }
}
