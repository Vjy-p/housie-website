import 'package:flutter/material.dart';
import 'package:housie_tambola/theme/app_colors.dart';

class NavItem extends StatefulWidget {
  const NavItem({super.key, required this.title, required this.onTap});

  final String title;
  final VoidCallback onTap;

  @override
  State<NavItem> createState() => _NavItemState();
}

class _NavItemState extends State<NavItem> {
  bool hover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() => hover = true);
      },
      onExit: (_) {
        setState(() => hover = false);
      },
      child: GestureDetector(
        onTap: widget.onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: hover
                ? AppColors.white.withValues(alpha: .08)
                : Colors.transparent,
          ),
          child: AnimatedDefaultTextStyle(
            duration: const Duration(milliseconds: 180),
            style: TextStyle(
              color: hover
                  ? AppColors.white
                  : AppColors.white.withValues(alpha: 0.7),
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
            child: Text(
              widget.title,
              // style: TextStyle(
              //   color: hover ? AppColors.white : AppColors.white70,
              //   fontWeight: FontWeight.bold,
              //   fontSize: 12,
              // ),
            ),
          ),
        ),
      ),
    );
  }
}
