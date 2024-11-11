import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/income_section/widget/income_chart.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/income_section/widget/income_listview.dart';

class Incomebody extends StatelessWidget {
  const Incomebody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizeConfig.width < 1350 && SizeConfig.width > 1200
        ? const SizedBox()
        : const Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(child: IncomeChart()),
              SizedBox(
                height: 24,
              ),
              Expanded(flex: 2, child: IncomeListview())
            ],
          );
  }
}
