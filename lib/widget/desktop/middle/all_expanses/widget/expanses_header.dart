import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/fontstyle.dart';
import 'package:responsive_dashboard/widget/desktop/middle/all_expanses/widget/monthly_range.dart';

class ExpensesHeader extends StatelessWidget {
  const ExpensesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: Fontstyle.Montserrat_SemiBold20,
        ),
        const Expanded(child: SizedBox()),
        const MonthlyRange()
      ],
    );
  }
}
