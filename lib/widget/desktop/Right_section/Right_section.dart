import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/income_section/income_section.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/mycardandtransactionsection.dart';

class RightSection extends StatelessWidget {
  const RightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Mycardandtransactionsection(),
        SizedBox(
          height: 24,
        ),
        IncomeSection(),
        SizedBox(
          height: 40,
        ),
      ],
    );
  }
}
