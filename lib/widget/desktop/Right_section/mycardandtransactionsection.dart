import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/widget/custom_background.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/Transaction_section/transaction_section.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/mycard_section/mycard_section.dart';

class Mycardandtransactionsection extends StatelessWidget {
  const Mycardandtransactionsection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Custom_background(
      padding: 24,
      child: Column(
        children: [MycardSection(), TransactionSection()],
      ),
    );
  }
}
