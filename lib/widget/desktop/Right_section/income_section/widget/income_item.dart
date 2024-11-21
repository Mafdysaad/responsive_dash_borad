import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/income_model.dart';
import 'package:responsive_dashboard/utils/fontstyle.dart';

class IncomeItem extends StatelessWidget {
  final Income_Model incomemodel;
  const IncomeItem({super.key, required this.incomemodel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Container(
          width: 12,
          height: 12,
          decoration: ShapeDecoration(
            color: incomemodel.color,
            shape: const OvalBorder(),
          ),
        ),
        title: Text(
          incomemodel.title,
          style: Fontstyle.Montserrat_regular16(context),
        ),
        trailing: Text(incomemodel.value,
            overflow: TextOverflow.ellipsis,
            style: Fontstyle.Montserrat_medium16(context).copyWith(
              color: const Color(0xFF208CC8),
            )),
      ),
    );
  }
}
