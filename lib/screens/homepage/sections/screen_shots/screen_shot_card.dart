import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:housie_tambola/utils/theme/app_colors.dart';

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
                  ..translateByDouble(0.0, hover ? -8.0 : 0.0, 0.0, 1.0)
                  ..scaleByDouble(
                    hover ? 1.03 : 1.0,
                    hover ? 1.03 : 1.0,
                    1.0,
                    1.0,
                  ),
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
