import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:responsive_dashboard/model/expances_datiles.dart';

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
    return Row(
      children: expences.asMap().entries.map((e) {
        int index = e.key;
        var value = e.value;

        return Expanded(
          child: Padding(
            padding: index == 1
                ? const EdgeInsets.symmetric(horizontal: 12)
                : const EdgeInsets.symmetric(horizontal: 0),
            child: GestureDetector(
                onTap: () {
                  setState(() {
                    selectindex = index;
                  });
                },
                child: AnimatedCrossFade(
                    firstChild: Active_card(Expences: value),
                    secondChild: InActive_card(Expences: value),
                    crossFadeState: selectindex == index
                        ? CrossFadeState.showFirst
                        : CrossFadeState.showSecond,
                    duration: const Duration(milliseconds: 100))),
          ),
        );
      }).toList(),
    );
  }
}
