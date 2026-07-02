import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:go_router/go_router.dart';
import 'package:housie_tambola/theme/app_colors.dart';
import 'package:housie_tambola/utils/constants.dart';
import 'package:housie_tambola/utils/scroll_helper.dart';
import 'package:housie_tambola/widgets/app_bar/logo_widget.dart';
import 'package:housie_tambola/widgets/app_bar/nav_item.dart';

class AppNavbar extends StatelessWidget {
  const AppNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;

    final mobile = width < 900;

    return SafeArea(
      bottom: false,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 20),
        child:
            Container(
                  // height: 72,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 28,
                    vertical: 10,
                  ),
                  decoration: BoxDecoration(
                    color: AppColors.white.withValues(alpha: .06),
                    borderRadius: BorderRadius.circular(18),
                    border: Border.all(
                      color: AppColors.white.withValues(alpha: .10),
                    ),
                  ),
                  child: Row(
                    spacing: 16,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const LogoWidget(),
                      const Spacer(),
                      if (mobile)
                        EndDrawerButton(
                          onPressed: () {
                            Scaffold.of(context).openEndDrawer();
                            // Constants.scaffoldKey.currentState?.openEndDrawer();
                          },
                        )
                      else ...[
                        NavItem(
                          title: "Features",
                          onTap: () {
                            ScrollHelper.scrollTo(Constants.features);
                            // context.go("/features");
                          },
                        ),
                        NavItem(
                          title: "Privacy",
                          onTap: () {
                            context.go("/privacy");
                          },
                        ),
                        NavItem(
                          title: "Terms",
                          onTap: () {
                            context.go("/terms");
                          },
                        ),
                        NavItem(
                          title: "Delete",
                          onTap: () {
                            context.go("/delete");
                          },
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: FilledButton(
                            onPressed: () {},
                            child: Text(
                              "Download",
                              style: TextStyle(
                                color: AppColors.text,
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ],
                  ),
                )
                .animate()
                .fadeIn(duration: 700.ms)
                .slideY(begin: -.4, end: 0, curve: Curves.easeOutExpo),
      ),
    );
  }
}
