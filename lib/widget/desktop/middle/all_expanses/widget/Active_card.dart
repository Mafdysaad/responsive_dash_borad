import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/expences_datiles.dart';
import 'package:responsive_dashboard/utils/fontstyle.dart';
import 'package:responsive_dashboard/widget/desktop/middle/all_expanses/widget/Active_ExpencesDatiles.dart';

import 'package:responsive_dashboard/widget/desktop/middle/all_expanses/widget/expencess_item_header.dart';

class Active_card extends StatelessWidget {
  const Active_card({
    super.key,
    required this.Expences,
  });

  final ExpancesDatiles Expences;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFF4DB7F2)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: ActiveExpencesdatiles(
        Expances: Expences,
      ),
    );
  }
}
