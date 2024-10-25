import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/expances_datiles.dart';
import 'package:responsive_dashboard/widget/desktop/middle/all_expanses/widget/inActive_ExpencesDatiles.dart';

class InActive_card extends StatelessWidget {
  const InActive_card({
    super.key,
    required this.Expences,
  });

  final ExpancesDatiles Expences;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: InActive_ExpencesDatiles(Expances: Expences),
    );
  }
}
