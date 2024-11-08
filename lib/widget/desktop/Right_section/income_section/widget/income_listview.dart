import 'package:flutter/material.dart';
import 'package:responsive_dashboard/model/income_model.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/income_section/widget/income_item.dart';

class IncomeListview extends StatelessWidget {
  const IncomeListview({super.key});
  static List<Income_Model> list = [
    Income_Model(
        title: 'Design service', color: const Color(0xFF208BC7), value: '40%'),
    Income_Model(
        title: 'Design product', color: const Color(0xFF4DB7F2), value: '25%'),
    Income_Model(
        title: 'Product royalti', color: const Color(0xFF064060), value: '20%'),
    Income_Model(title: 'Other', color: const Color(0xFFE2DECD), value: '22%'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (context, index) {
          return IncomeItem(incomemodel: list[index]);
        });
  }
}
