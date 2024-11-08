import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/Right_section.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/mycardandtransactionsection.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/income_section/income_section.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/mycard_section/mycard_section.dart';
import 'package:responsive_dashboard/widget/desktop/custom_drawar/custom_drawer.dart';
import 'package:responsive_dashboard/widget/desktop/middle/middle.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/mycard_section/widget/mycard.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/mycard_section/widget/pageview.dart';

class DesctopLayout extends StatefulWidget {
  const DesctopLayout({super.key});

  @override
  State<DesctopLayout> createState() => _DesctopLayoutState();
}

class _DesctopLayoutState extends State<DesctopLayout> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(flex: 3, child: Middle()),
        SizedBox(
          width: 24,
        ),
        Expanded(flex: 2, child: RightSection()),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
