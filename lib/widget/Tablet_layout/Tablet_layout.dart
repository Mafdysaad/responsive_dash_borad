import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/Right_section.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/income_section/income_section.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/mycardandtransactionsection.dart';
import 'package:responsive_dashboard/widget/desktop/custom_drawar/custom_drawer.dart';
import 'package:responsive_dashboard/widget/desktop/middle/Quickandallexpenses.dart';
import 'package:responsive_dashboard/widget/mobile_layout/mobile_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(flex: 2, child: Mobile_layout()),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
