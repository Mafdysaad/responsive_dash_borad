import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/fontstyle.dart';

class Quickinvoice_header extends StatelessWidget {
  const Quickinvoice_header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick invoice',
          style: Fontstyle.Montserrat_SemiBold20(context),
        ),
        const Spacer(),
        Container(
          width: 48,
          height: 48,
          decoration: const ShapeDecoration(
            color: Color(0xFFFAFAFA),
            shape: OvalBorder(),
          ),
          child: const Icon(
            Icons.add,
            color: Color(0xff4EB7F2),
          ),
        )
      ],
    );
  }
}
