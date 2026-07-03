import 'package:flutter/material.dart';
import 'package:housie_tambola/screens/homepage/sections/hero/hero_content.dart';
import 'package:housie_tambola/screens/homepage/sections/hero/phone_preview.dart';

class MobileHero extends StatelessWidget {
  const MobileHero({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(spacing: 20, children: [PhonePreview(), HeroContent()]);
  }
}
