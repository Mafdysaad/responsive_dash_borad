import 'package:flutter/material.dart';
import 'package:responsive_dashboard/pages/homepage.dart';

void main() {
  runApp(const Dash_bord());
}

class Dash_bord extends StatelessWidget {
  const Dash_bord({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}
