import 'package:flutter/material.dart';

class AdabtiveLayout extends StatelessWidget {
  const AdabtiveLayout(
      {super.key,
      required this.MobileLayout,
      required this.DesktopLayout,
      required this.TablietLayout});
  final WidgetBuilder MobileLayout, TablietLayout, DesktopLayout;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 800) {
        return MobileLayout(context);
      } else if (constraints.maxWidth < 1200) {
        return TablietLayout(context);
      } else {
        return DesktopLayout(context);
      }
    });
  }
}
