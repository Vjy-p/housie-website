import 'package:flutter/material.dart';
import 'package:housie_tambola/widgets/app_bar/aurora_background.dart';
import 'package:housie_tambola/widgets/app_bar/navbar.dart';
import 'package:housie_tambola/widgets/app_bar/side_menu.dart';
import 'package:housie_tambola/widgets/background/floating_ball_layer.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.child,
    this.canShowAppBar = false,
  });

  final Widget child;
  final bool canShowAppBar;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final mobile = width < 900;

    return Scaffold(
      endDrawer: canShowAppBar && mobile ? SideMenu() : null,
      body: Stack(
        children: [
          const Positioned.fill(child: AuroraBackground()),
          const Positioned.fill(
            child: IgnorePointer(child: FloatingBallLayer()),
          ),
          Positioned.fill(
            left: 0,
            right: 0,
            top: 0,
            child: Column(
              children: [
                if (canShowAppBar) AppNavbar(),
                Expanded(child: child),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
