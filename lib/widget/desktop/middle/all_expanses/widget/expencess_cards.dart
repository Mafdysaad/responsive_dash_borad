import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:responsive_dashboard/model/expences_datiles.dart';

import 'package:responsive_dashboard/utils/app_images.dart';

import 'package:responsive_dashboard/widget/desktop/middle/all_expanses/widget/Active_card.dart';
import 'package:responsive_dashboard/widget/desktop/middle/all_expanses/widget/InActive_card.dart';

class Expenses_Card extends StatefulWidget {
  const Expenses_Card({super.key});

  @override
  State<Expenses_Card> createState() => _ExpensescardState();
}

class _ExpensescardState extends State<Expenses_Card> {
  List<ExpancesDatiles> expences = [
    ExpancesDatiles(
        image: Assets.imagesMoneys,
        price: '\$20,129',
        subtitle: 'April 2022',
        title: 'Balance'),
    ExpancesDatiles(
        image: Assets.imagesCardReceive,
        price: '\$20,129',
        subtitle: 'April 2022',
        title: 'Income'),
    ExpancesDatiles(
        image: Assets.imagesCardSend,
        price: '\$20,129',
        subtitle: 'April 2022',
        title: 'Expenses'),
  ];
  int selectindex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: AnimatedCrossFade(
            firstChild: GestureDetector(
                onTap: () {
                  setState(() {
                    selectindex = 0;
                  });
                },
                child: Active_card(Expences: expences[0])),
            secondChild: GestureDetector(
                onTap: () {
                  setState(() {
                    selectindex = 0;
                  });
                },
                child: InActive_card(Expences: expences[0])),
            crossFadeState: selectindex == 0
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 100)),
      ),
      const SizedBox(
        width: 10,
      ),
      Expanded(
        child: AnimatedCrossFade(
            firstChild: GestureDetector(
                onTap: () {
                  setState(() {
                    selectindex = 1;
                  });
                },
                child: Active_card(Expences: expences[1])),
            secondChild: GestureDetector(
                onTap: () {
                  setState(() {
                    selectindex = 1;
                  });
                },
                child: InActive_card(Expences: expences[1])),
            crossFadeState: selectindex == 1
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 100)),
      ),
      const SizedBox(
        width: 10,
      ),
      Expanded(
        child: AnimatedCrossFade(
            firstChild: GestureDetector(
                onTap: () {
                  setState(() {
                    selectindex = 2;
                  });
                },
                child: Active_card(Expences: expences[2])),
            secondChild: GestureDetector(
                onTap: () {
                  setState(() {
                    selectindex = 2;
                  });
                },
                child: InActive_card(Expences: expences[2])),
            crossFadeState: selectindex == 2
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: const Duration(milliseconds: 100)),
      )
    ]);
  }
}
