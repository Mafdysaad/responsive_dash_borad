import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/pages/homepage.dart';

void main() {
  runApp(DevicePreview(
      enabled: true,
      isToolbarVisible: true,
      builder: (context) => const Dash_bord()));
}

class Dash_bord extends StatelessWidget {
  const Dash_bord({super.key});

  @override
  Widget build(BuildContext context) {
    useInheritedMediaQuery:
    true;
    locale:
    DevicePreview.locale(context);
    return const MaterialApp(
      home: Home(),
    );
  }
}
