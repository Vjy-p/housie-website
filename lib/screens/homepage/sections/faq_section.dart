import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:housie_tambola/utils/constants.dart';
import 'package:housie_tambola/utils/responsive.dart';
import 'package:housie_tambola/utils/theme/app_colors.dart';

class FaqSection extends StatelessWidget {
  const FaqSection({super.key, this.isFromSection = false});
  final bool isFromSection;

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    return Container(
          key: Constants.faq,
          padding: EdgeInsets.symmetric(
            horizontal: isMobile ? 16 : 40,
            vertical: isMobile ? 10 : 20,
          ),
          alignment: isMobile ? Alignment.topLeft : Alignment.topCenter,
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 900),
            child:
                Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                              "Frequently Asked Questions",
                              style: TextStyle(
                                fontSize: 42,
                                fontWeight: FontWeight.bold,
                                color: AppColors.white,
                              ),
                            )
                            .animate()
                            .fadeIn(duration: 600.ms)
                            .slideY(
                              begin: .15,
                              end: 0,
                              curve: Curves.easeOutCubic,
                            ),
                        Text(
                              "Everything you need to know about Housie Game.",
                              style: TextStyle(color: AppColors.subtitle),
                            )
                            .animate(delay: 150.ms)
                            .fadeIn(duration: 500.ms)
                            .slideY(begin: .08),
                        SizedBox(height: isMobile ? 10 : 30),
                        _faq(
                          "How do I create a room?",
                          "Tap Create Room, choose your settings, and share the room code with friends.",
                        ),
                        _faq(
                          "Can I play with friends?",
                          "Yes. Create a private room and invite anyone using the room code.",
                        ),

                        _faq(
                          "Is Housie Game free?",
                          "Yes, the app is free to play. Ads help support development.",
                        ),

                        _faq(
                          "How do I delete my account?",
                          "Open Profile → Delete Account and confirm the deletion.",
                        ),

                        _faq(
                          "Do I need to create an account?",
                          "No. We use Firebase Anonymous Authentication so you can start playing instantly.",
                        ),

                        _faq(
                          "Can I change my display name?",
                          "Yes. You can update your display name from your profile.",
                        ),
                      ],
                    )
                    .animate()
                    .fadeIn(duration: 600.ms, curve: Curves.easeOut)
                    .slideY(
                      begin: .08,
                      end: 0,
                      duration: 600.ms,
                      curve: Curves.easeOutCubic,
                    ),
          ),
        )
        .animate()
        .fadeIn(duration: 600.ms, curve: Curves.easeOut)
        .slideY(
          begin: .08,
          end: 0,
          duration: 600.ms,
          curve: Curves.easeOutCubic,
        );
  }

  Widget _faq(String title, String answer) {
    return Container(
          margin: const EdgeInsets.only(bottom: 18),
          decoration: BoxDecoration(
            color: AppColors.card,
            borderRadius: BorderRadius.circular(18),
          ),
          child: ExpansionTile(
            iconColor: AppColors.primary,
            collapsedIconColor: AppColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(18),
              side: BorderSide(color: AppColors.card),
            ),
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(18),
              side: BorderSide(color: AppColors.card),
            ),
            title: Text(
              title,
              style: const TextStyle(
                color: AppColors.text,
                fontWeight: FontWeight.w600,
              ),
            ),
            childrenPadding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
            children: [
              Text(
                answer,
                style: const TextStyle(color: AppColors.subtitle, height: 1.6),
              ),
            ],
          ),
        )
        .animate()
        .fadeIn(duration: 450.ms)
        .slideY(begin: .08, end: 0, curve: Curves.easeOutCubic);
  }
}
