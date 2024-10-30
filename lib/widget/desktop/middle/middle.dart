import 'package:flutter/material.dart';

import 'package:responsive_dashboard/widget/desktop/middle/Quick_invoice/Quick_Invoice.dart';
import 'package:responsive_dashboard/widget/desktop/middle/all_expanses/all_expenses.dart';

class Middle extends StatelessWidget {
  const Middle({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 40,
          ),
        ),
        SliverToBoxAdapter(child: AllExpenses()),
        SliverToBoxAdapter(child: SizedBox(height: 24)),
        SliverToBoxAdapter(child: Quickinvoice()),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 32,
          ),
        ),
      ],
    );
  }
}
