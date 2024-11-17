import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/utils/fontstyle.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/Transaction_section/widget/transaction_header.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/Transaction_section/widget/transaction_list_view.dart';

class TransactionSection extends StatelessWidget {
  const TransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHeader(),
        const SizedBox(
          height: 20,
        ),
        Text('13 April 2022',
            style: Fontstyle.Montserrat_medium16(context).copyWith(
              color: const Color(0xFFAAAAAA),
            )),
        const SizedBox(
          height: 16,
        ),
        const TransactionListView(),
      ],
    );
  }
}
