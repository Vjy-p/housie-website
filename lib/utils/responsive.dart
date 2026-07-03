import 'package:flutter/material.dart';

class Responsive {
  static bool isMobile(BuildContext context) {
    return MediaQuery.sizeOf(context).width < 768;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.sizeOf(context).width >= 768 &&
        MediaQuery.sizeOf(context).width < 1200;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.sizeOf(context).width >= 1200;
  }
}
