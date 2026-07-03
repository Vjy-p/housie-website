import 'package:flutter/material.dart';
import 'package:housie_tambola/models/feature_model.dart';
import 'package:housie_tambola/utils/constants.dart';
import 'package:housie_tambola/utils/responsive.dart';
import 'package:housie_tambola/utils/theme/app_colors.dart';

import 'feature_card.dart';

class FeaturesSection extends StatelessWidget {
  const FeaturesSection({super.key});

  final List<FeatureModel> features = const [
    FeatureModel(
      icon: Icons.groups,
      title: "Multiplayer",
      subtitle: "Play with friends in real time.",
    ),
    FeatureModel(
      icon: Icons.bolt,
      title: "Realtime",
      subtitle: "Fast synchronization.",
    ),
    FeatureModel(
      icon: Icons.emoji_events,
      title: "Winner Detection",
      subtitle: "Automatic claim validation.",
    ),

    FeatureModel(
      icon: Icons.notifications,
      title: "Notifications",
      subtitle: "Never miss your turn.",
    ),

    FeatureModel(
      icon: Icons.security,
      title: "Secure Login",
      subtitle: "Protected with Firebase.",
    ),

    FeatureModel(
      icon: Icons.confirmation_number,
      title: "Smart Tickets",
      subtitle: "Beautiful auto-generated tickets.",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);
    final isTab = Responsive.isTablet(context);
    // double width = MediaQuery.of(context).size.width;

    return Container(
      key: Constants.features,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 40,
        vertical: isMobile ? 0 : 20,
      ),
      alignment: Alignment.topLeft,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Everything You Need",
            style: TextStyle(
              color: AppColors.white,
              fontWeight: FontWeight.bold,
              fontSize: 42,
            ),
          ),
          SizedBox(height: isMobile ? 10 : 30),
          isMobile
              ? GridView.builder(
                  shrinkWrap: true,
                  itemCount: features.length,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: isMobile ? 10 : 24,
                    mainAxisSpacing: isMobile ? 10 : 24,
                    // childAspectRatio: 0.8,
                  ),
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return FeatureCard(
                      icon: features[index].icon,
                      title: features[index].title,
                      subtitle: features[index].subtitle,
                    );
                  },
                )
              : Wrap(
                  alignment: WrapAlignment.start,
                  runAlignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  spacing: isMobile ? 10 : 24,
                  runSpacing: isMobile ? 10 : 24,
                  children: List.generate(features.length, (index) {
                    return FeatureCard(
                      icon: features[index].icon,
                      title: features[index].title,
                      subtitle: features[index].subtitle,
                    );
                  }),
                ),
        ],
      ),
    );
    // .animate()
    // .fadeIn(duration: 600.ms, curve: Curves.easeOut)
    // .slideY(
    //   begin: .08,
    //   end: 0,
    //   duration: 600.ms,
    //   curve: Curves.easeOutCubic,
    // );
  }
}
