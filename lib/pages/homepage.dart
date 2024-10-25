import 'package:flutter/material.dart';
import 'package:responsive_dashboard/adaptive_layout/adaptive_layout.dart';
import 'package:responsive_dashboard/widget/desctop_layout.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFAAAAAA),
      body: AdabtiveLayout(
          MobileLayout: (context) => const SizedBox(),
          TablietLayout: (context) => const SizedBox(),
          DesktopLayout: (context) => const DesctopLayout()),
    );
  }
}
