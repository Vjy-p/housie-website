import 'package:flutter/material.dart';
import 'package:housie_tambola/screens/homepage/sections/app_bar/side_menu.dart';
import 'package:housie_tambola/widgets/background/aurora_background.dart';
import 'package:housie_tambola/widgets/background/floating_ball_layer.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({super.key, this.appBar, required this.child});

  final Widget child;
  final AppBar? appBar;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.sizeOf(context).width;
    final mobile = width < 900;

    return Material(
      child: Stack(
        children: [
          const Positioned.fill(child: AuroraBackground()),
          const Positioned.fill(
            child: IgnorePointer(child: FloatingBallLayer()),
          ),
          Positioned.fill(
            left: 0,
            right: 0,
            top: 0,
            child: Scaffold(
              appBar: appBar,
              backgroundColor: Colors.transparent,
              endDrawer: appBar != null && mobile ? SideMenu() : null,
              body: Column(children: [Expanded(child: child)]),
            ),
          ),
        ],
      ),
    );
  }
}
