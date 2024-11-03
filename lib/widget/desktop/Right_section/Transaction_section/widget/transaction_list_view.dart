import 'package:flutter/cupertino.dart';
import 'package:responsive_dashboard/model/Transaction%20_Historym.dart';
import 'package:responsive_dashboard/widget/desktop/Right_section/Transaction_section/widget/transaction_item.dart';

class TransactionListView extends StatelessWidget {
  const TransactionListView({super.key});
  static List<Transaction_Model> item = [
    Transaction_Model(
        date: '13 April 2022',
        title: 'Cash Withdrawal',
        price: r'$20,129',
        iswithdrawal: true),
    Transaction_Model(
        date: '13 Apr, 2022 ',
        title: 'Landing Page project',
        price: r'$2,000',
        iswithdrawal: false),
    Transaction_Model(
        date: '13 Apr, 2022 at 3:30 PM',
        title: 'Juni Mobile App project',
        price: r'$20,129',
        iswithdrawal: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: item.length,
        itemBuilder: (context, index) => TransactionItem(
              item: item[index],
            ));
  }
}
