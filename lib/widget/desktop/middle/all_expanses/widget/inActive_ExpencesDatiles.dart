import 'package:flutter/material.dart';

import 'package:responsive_dashboard/model/expences_datiles.dart';

import 'package:responsive_dashboard/utils/fontstyle.dart';
import 'package:responsive_dashboard/widget/desktop/middle/all_expanses/widget/expencess_item_header.dart';

class InActive_ExpencesDatiles extends StatelessWidget {
  const InActive_ExpencesDatiles({
    super.key,
    required this.Expances,
  });

  final ExpancesDatiles Expances;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExpencesItemheader(
          Expances: Expances,
          Image_color: Colors.blue,
          Imagebackground_color: const Color(0xFFFAFAFA),
          Arrow_color: const Color(0xff064061),
        ),
        const SizedBox(
          height: 34,
        ),
        FittedBox(
          child: Text(
            Expances.title,
            style: Fontstyle.Montserrat_semiBold16,
          ),
        ),
        FittedBox(
          child: Text(
            Expances.subtitle,
            style: Fontstyle.Montserrat_regular14,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        FittedBox(
          child: Text(
            Expances.price,
            style: Fontstyle.Montserrat_SemiBold24,
          ),
        ),
      ],
    );
  }
}
