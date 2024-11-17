import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/Transaction%20_Historym.dart';
import 'package:responsive_dashboard/utils/fontstyle.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.item});
  final Transaction_Model item;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: const Color(0xFFFAFAFA),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        title:
            Text(item.title, style: Fontstyle.Montserrat_semiBold16(context)),
        subtitle: Text(item.date,
            style: Fontstyle.Montserrat_regular16(context).copyWith(
              color: const Color(0xFFAAAAAA),
            )),
        trailing: Text(item.price,
            style: Fontstyle.Montserrat_SemiBold20(context).copyWith(
              color: item.iswithdrawal
                  ? const Color(0xFFF3735E)
                  : const Color(0xFF7CD87A),
            )),
      ),
    );
  }
}
