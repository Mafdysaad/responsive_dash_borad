import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/expances_datiles.dart';
import 'package:responsive_dashboard/utils/fontstyle.dart';
import 'package:responsive_dashboard/widget/desktop/middle/all_expanses/widget/expencess_item_header.dart';

class ActiveExpencesdatiles extends StatelessWidget {
  const ActiveExpencesdatiles({super.key, required this.Expances});
  final ExpancesDatiles Expances;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpencesItemheader(
          Expances: Expances,
        ),
        const SizedBox(
          height: 34,
        ),
        Text(
          Expances.title,
          style: Fontstyle.Active_Montserrat_semiBold16,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          Expances.subtitle,
          style: Fontstyle.Active_Montserrat_regular14,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          Expances.price,
          style: Fontstyle.Active_Montserrat_SemiBold24,
        ),
      ],
    );
  }
}
