import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/custom_background.dart';
import 'package:responsive_dashboard/widget/desktop/middle/all_expanses/widget/expanses_header.dart';
import 'package:responsive_dashboard/widget/desktop/middle/all_expanses/widget/expencess_cards.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const Custom_background(
      child: Column(
        children: [
          ExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          Expenses_Card(),
        ],
      ),
    );
  }
}
