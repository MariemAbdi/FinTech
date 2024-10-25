import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget? tablet;
  final Widget desktop;
  final Widget? smallMobile;

  const Responsive({
    super.key,
    required this.mobile,
    this.tablet,
    required this.desktop,
    this.smallMobile
  });

  // This size work fine on my design, maybe you need some customization depends on your design
  // This isMobile, isTablet, isDesktop help us later
  static double screenWidth(context) => MediaQuery.sizeOf(context).width;
  static bool isMobile(BuildContext context) => screenWidth(context) < 768;

  static bool isTablet(BuildContext context) => screenWidth(context) < 1200 && screenWidth(context) >= 768;

  static bool isDesktop(BuildContext context) => screenWidth(context) >= 1200;

  static double labelSize(context) => isDesktop(context) ? 70 : isTablet(context) ? 50 : 30;

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    // If our width is more than 1200 then we consider it a desktop
    if (size.width >= 1200) {
      return desktop;
    }
    // If width it less then 1200 and more then 768 we consider it as tablet
    else if (size.width >= 768 && tablet != null) {
      return tablet!;
    }
    // Or less then that we called it mobile
    else if (size.width >= 376 && size.width <= 768) {
      return mobile;
    } else {
      return smallMobile!;
    }
  }
}