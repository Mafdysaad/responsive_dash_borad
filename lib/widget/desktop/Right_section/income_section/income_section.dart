import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/widget/custom_background.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/income_section/widget/Income_body.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/income_section/widget/income_chart.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/income_section/widget/income_listview.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/income_section/widget/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Custom_background(
      child: Column(
        children: [
          IncomeSectionHeader(),
          SizedBox(
            height: 16,
          ),
          Incomebody()
        ],
      ),
    );
  }
}
