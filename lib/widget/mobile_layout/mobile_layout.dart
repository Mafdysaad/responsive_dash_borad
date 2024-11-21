import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/Right_section.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/income_section/income_section.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/mycardandtransactionsection.dart';
import 'package:responsive_dashboard/widget/desktop/middle/Quickandallexpenses.dart';

class Mobile_layout extends StatelessWidget {
  const Mobile_layout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width < 800 ? 18 : 0),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            Quickandallexpenses(),
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
