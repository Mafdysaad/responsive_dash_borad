import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/utils/fontstyle.dart';

class TransactionHeader extends StatelessWidget {
  const TransactionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Transaction History', style: Fontstyle.Montserrat_SemiBold20),
        Text('See all',
            style: Fontstyle.Montserrat_medium16.copyWith(
                color: const Color(0xFF4EB7F2)))
      ],
    );
  }
}
