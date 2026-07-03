import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:housie_tambola/screens/homepage/sections/app_bar/nav_item.dart';
import 'package:housie_tambola/utils/constants.dart';
import 'package:housie_tambola/utils/scroll_helper.dart';
import 'package:housie_tambola/utils/theme/app_colors.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: 16, vertical: 60),
        child: Column(
          spacing: 16,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NavItem(
              title: "Features",
              onTap: () {
                context.pop();
                ScrollHelper.scrollTo(Constants.features);
              },
            ),
            NavItem(
              title: "How It Works",
              onTap: () {
                context.pop();
                ScrollHelper.scrollTo(Constants.howItWorks);
              },
            ),
            NavItem(
              title: "Screen Shots",
              onTap: () {
                context.pop();
                ScrollHelper.scrollTo(Constants.screenshots);
              },
            ),
            NavItem(
              title: "FAQ",
              onTap: () {
                context.pop();
                ScrollHelper.scrollTo(Constants.faq);
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

            FilledButton(
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
          ],
        ),
      ),
    );
  }
}
