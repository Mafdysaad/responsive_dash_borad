import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/Right_section.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/income_section/income_section.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/mycardandtransactionsection.dart';
import 'package:responsive_dashboard/widget/desktop/middle/middle.dart';

class Mobile_layout extends StatelessWidget {
  const Mobile_layout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 18),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Middle(),
            Mycardandtransactionsection(),
            SizedBox(
              height: 23,
            ),
            IncomeSection(),
            SizedBox(
              height: 23,
            ),
          ],
        ),
      ),
    );
  }
}
