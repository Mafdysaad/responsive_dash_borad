import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/Right_section.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/income_section/income_section.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/mycardandtransactionsection.dart';
import 'package:responsive_dashboard/widget/desktop/middle/middle.dart';

class Mobile_layout extends StatelessWidget {
  const Mobile_layout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width < 800 ? 18 : 0),
      child: const CustomScrollView(
        slivers: [
          Middle(),
          SliverToBoxAdapter(child: Mycardandtransactionsection()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 23,
            ),
          ),
          SliverToBoxAdapter(child: IncomeSection()),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 23,
            ),
          ),
        ],
      ),
    );
  }
}
