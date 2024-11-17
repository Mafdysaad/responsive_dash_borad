import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/fontstyle.dart';

class IncomeSectionHeader extends StatelessWidget {
  const IncomeSectionHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Income',
          style: Fontstyle.Montserrat_SemiBold20(context),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Row(
            children: [
              Text('Monthly', style: Fontstyle.Montserrat_medium16(context)),
              const SizedBox(
                width: 16,
              ),
              Transform.rotate(
                angle: -pi / 2,
                child: const Icon(Icons.arrow_back_ios_new_outlined),
              )
            ],
          ),
        )
      ],
    );
  }
}
