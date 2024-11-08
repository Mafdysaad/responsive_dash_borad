import 'package:flutter/material.dart';

import 'package:responsive_dashboard/widget/desktop/middle/Quick_invoice/Quick_Invoice.dart';
import 'package:responsive_dashboard/widget/desktop/middle/all_expanses/all_expenses.dart';

class Middle extends StatelessWidget {
  const Middle({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 23,
          ),
          AllExpenses(),
          SizedBox(height: 24),
          Quickinvoice(),
          SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
