import 'package:flutter/material.dart';
import 'package:housie_tambola/screens/homepage/sections/hero/hero_content.dart';
import 'package:housie_tambola/screens/homepage/sections/hero/phone_preview.dart';

class DesktopHero extends StatelessWidget {
  const DesktopHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(child: HeroContent()),
        SizedBox(width: 60),
        Expanded(child: PhonePreview()),
      ],
    );
  }
}
