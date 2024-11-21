import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

import 'package:responsive_dashboard/widget/desktop/middle/Quick_invoice/Quick_Invoice.dart';
import 'package:responsive_dashboard/widget/desktop/middle/all_expanses/all_expenses.dart';

class Quickandallexpenses extends StatelessWidget {
  const Quickandallexpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            height:
                MediaQuery.sizeOf(context).width < SizeConfig.tablet ? 23 : 40),
        const AllExpenses(),
        const SizedBox(height: 24),
        const Quickinvoice(),
        const SizedBox(
          height: 32,
        ),
      ],
    );
  }
}
