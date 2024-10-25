import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widget/desktop/custom_drawor/custom_drawer.dart';
import 'package:responsive_dashboard/widget/desktop/middle/middle.dart';

class DesctopLayout extends StatefulWidget {
  const DesctopLayout({super.key});

  @override
  State<DesctopLayout> createState() => _DesctopLayoutState();
}

class _DesctopLayoutState extends State<DesctopLayout> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 1, child: CustomDrawer()),
        const SizedBox(
          width: 32,
        ),
        const Expanded(flex: 3, child: Middle()),
        Expanded(flex: 2, child: Container()),
      ],
    );
  }
}
