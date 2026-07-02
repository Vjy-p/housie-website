import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:housie_tambola/theme/app_colors.dart';

class GameModeCard extends StatefulWidget {
  final IconData icon;
  final String title;
  final String description;

  const GameModeCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
  });

  @override
  State<GameModeCard> createState() => GameModeCardState();
}

class GameModeCardState extends State<GameModeCard> {
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
                width: 340,
                padding: const EdgeInsets.all(28),
                transform: Matrix4.identity()
                  ..translate(0.0, hover ? -8.0 : 0.0),
                decoration: BoxDecoration(
                  color: AppColors.card,
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(color: AppColors.white.withOpacity(.08)),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: hover ? 30 : 18,
                      color: AppColors.shadow.withOpacity(.15),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 28,
                      backgroundColor: AppColors.primary.withOpacity(.15),
                      child: Icon(
                        widget.icon,
                        color: AppColors.primary,
                        size: 30,
                      ),
                    ),

                    const SizedBox(height: 24),

                    Text(
                      widget.title,
                      style: const TextStyle(
                        color: AppColors.text,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 14),

                    Text(
                      widget.description,
                      style: const TextStyle(
                        color: AppColors.subtitle,
                        height: 1.7,
                      ),
                    ),
                  ],
                ),
              )
              .animate()
              .fadeIn(duration: 600.ms)
              .slideY(begin: .10)
              .scale(
                begin: const Offset(.96, .96),
                end: const Offset(1, 1),
                curve: Curves.easeOut,
              ),
    );
  }
}
