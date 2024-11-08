import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/income_section/income_section.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/mycardandtransactionsection.dart';

class RightSection extends StatelessWidget {
  const RightSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
            child: SizedBox(
          height: 40,
        )),
        SliverToBoxAdapter(child: Mycardandtransactionsection()),
        SliverToBoxAdapter(
            child: SizedBox(
          height: 24,
        )),
        SliverToBoxAdapter(child: IncomeSection()),
        SliverToBoxAdapter(
            child: SizedBox(
          height: 40,
        )),
      ],
    );
  }
}
