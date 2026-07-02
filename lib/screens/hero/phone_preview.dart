import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:housie_tambola/widgets/responsive.dart';

class PhonePreview extends StatelessWidget {
  const PhonePreview({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = Responsive.isMobile(context);

    return isMobile
        ? Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child:
                    ClipRRect(
                          borderRadius: BorderRadiusGeometry.circular(12),
                          clipBehavior: Clip.antiAlias,
                          child: Image.asset(
                            "assets/images/banner.png",
                            fit: BoxFit.cover,
                          ),
                        )
                        .animate(
                          onPlay: (controller) =>
                              controller.repeat(reverse: true),
                        )
                        .moveY(begin: 0, end: -20, duration: 2.seconds),
              ),
            ),
          )
        : SizedBox(
            height: 300,
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child:
                  ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(12),
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset(
                          "assets/images/banner.png",
                          fit: BoxFit.cover,
                        ),
                      )
                      .animate(
                        onPlay: (controller) =>
                            controller.repeat(reverse: true),
                      )
                      .moveY(begin: 0, end: -20, duration: 2.seconds),
            ),
          );
  }
}
