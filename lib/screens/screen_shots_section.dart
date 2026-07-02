import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:housie_tambola/theme/app_colors.dart';
import 'package:housie_tambola/utils/constants.dart';
import 'package:housie_tambola/widgets/responsive.dart';

class ScreenshotsSection extends StatelessWidget {
  const ScreenshotsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    final screenshots = [
      ("Home", "assets/images/ss1.png"),
      ("Computer", "assets/images/ss5.png"),
      ("Lobby", "assets/images/ss2.png"),
      ("Offline Game", "assets/images/ss4.png"),
      ("Online Game", "assets/images/ss3.png"),
      ("Winners", "assets/images/ss6.png"),
    ];

    return Container(
      key: Constants.screenshots,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 24,
        vertical: isMobile ? 20 : 40,
      ),
      child: Column(
        children: [
          Text(
            "App Screenshots",
            style: TextStyle(
              fontSize: isMobile ? 36 : 48,
              fontWeight: FontWeight.bold,
              color: AppColors.white,
            ),
          ).animate().fadeIn(duration: 600.ms).slideY(begin: .15),

          const SizedBox(height: 16),

          const Text(
            "A quick look at the Housie Game experience.",
            textAlign: TextAlign.center,
            style: TextStyle(color: AppColors.subtitle, fontSize: 16),
          ).animate(delay: 150.ms).fadeIn(duration: 500.ms),

          const SizedBox(height: 50),

          SizedBox(
            height: 520,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: screenshots.length,
              separatorBuilder: (_, _) => const SizedBox(width: 28),
              itemBuilder: (_, index) {
                return ScreenshotCard(
                  title: screenshots[index].$1,
                  image: screenshots[index].$2,
                  delay: index * 120,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ScreenshotCard extends StatefulWidget {
  final String title;
  final String image;
  final int delay;

  const ScreenshotCard({
    super.key,
    required this.title,
    required this.image,
    required this.delay,
  });

  @override
  State<ScreenshotCard> createState() => _ScreenshotCardState();
}

class _ScreenshotCardState extends State<ScreenshotCard> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => hover = true),
      onExit: (_) => setState(() => hover = false),
      child:
          AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                curve: Curves.easeOut,
                width: 250,
                transform: Matrix4.identity()
                  ..translate(0.0, hover ? -8 : 0)
                  ..scale(hover ? 1.03 : 1.0),
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColors.card,
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: AppColors.white.withValues(alpha: .08),
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: hover ? 30 : 18,
                              color: AppColors.shadow.withValues(alpha: .18),
                            ),
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(24),
                          child: Image.asset(
                            widget.image,
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),
                        ),
                      ),
                    ),

                    const SizedBox(height: 18),

                    Text(
                      widget.title,
                      style: const TextStyle(
                        color: AppColors.text,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              )
              .animate(delay: widget.delay.ms)
              .fadeIn(duration: 600.ms)
              .slideY(begin: .12)
              .scale(begin: const Offset(.96, .96), end: const Offset(1, 1)),
    );
  }
}
