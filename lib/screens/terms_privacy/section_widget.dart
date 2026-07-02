import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:housie_tambola/theme/app_colors.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({
    super.key,
    required this.index,
    required this.icon,
    required this.title,
    this.child,
    this.description,
  });
  final int index;
  final IconData icon;
  final String title;
  final Widget? child;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Container(
          margin: const EdgeInsets.only(bottom: 28),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: AppColors.card,
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(blurRadius: 20, color: Color(0x12000000)),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(icon, color: AppColors.primary)
                      .animate(delay: (index * 120 + 100).ms)
                      .scale(
                        begin: const Offset(.4, .4),
                        end: const Offset(1, 1),
                        duration: 500.ms,
                        curve: Curves.elasticOut,
                      ),
                  const SizedBox(width: 10),
                  Text(
                    title,
                    style: TextStyle(
                      color: AppColors.text,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 18),
              ?child,
              if (description != null && description?.isNotEmpty == true)
                Text(
                  description ?? "",
                  style: TextStyle(
                    color: AppColors.subtitle,
                    fontWeight: FontWeight.normal,
                    fontSize: 14,
                  ),
                ),
            ],
          ),
        )
        .animate(delay: (index * 120 + 100).ms)
        .fadeIn(duration: 500.ms)
        .slideY(begin: .15, end: 0, curve: Curves.easeOutCubic)
        .scale(
          begin: const Offset(.98, .98),
          end: const Offset(1, 1),
          curve: Curves.easeOut,
        );
  }
}
