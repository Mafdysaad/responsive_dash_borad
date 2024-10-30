import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/fontstyle.dart';
import 'package:responsive_dashboard/widget/desktop/middle/Quick_invoice/widget/latestTransactionList.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: Fontstyle.Montserrat_medium16,
        ),
        const SizedBox(
          height: 12,
        ),
        const Latesttransactionlist(),
      ],
    );
  }
}
