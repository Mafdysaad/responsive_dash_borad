import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/income_section/widget/income_chart.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/income_section/widget/income_detailed_chart.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/income_section/widget/income_listview.dart';

class Incomebody extends StatelessWidget {
  const Incomebody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return width < 1350 && width > 1300
        ? const Row(
            children: [
              Expanded(child: DetailedIncomeChart()),
            ],
          )
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              Expanded(flex: 2, child: IncomeListview())
            ],
          );
  }
}
