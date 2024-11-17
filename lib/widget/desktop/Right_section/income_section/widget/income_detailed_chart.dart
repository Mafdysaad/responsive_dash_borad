import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/fontstyle.dart';

class IncomeDetailedChart extends StatefulWidget {
  const IncomeDetailedChart({super.key});

  @override
  State<IncomeDetailedChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeDetailedChart> {
  int currntIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(aspectRatio: 1, child: PieChart(getData()));
  }

  PieChartData getData() {
    return PieChartData(
        pieTouchData: PieTouchData(
          enabled: true,
          touchCallback: (pietouchevent, pietouchResponse) {
            currntIndex = pietouchResponse!.touchedSection!.touchedSectionIndex;
            setState(() {});
          },
        ),
        sectionsSpace: 0,
        sections: [
          PieChartSectionData(
            radius: currntIndex == 0 ? 60 : 50,
            title: currntIndex == 0 ? 'Design service' : '40%',
            titleStyle: currntIndex == 0
                ? Fontstyle.Montserrat_Bold16(context)
                    .copyWith(color: Colors.black)
                : Fontstyle.Montserrat_Bold16(context)
                    .copyWith(color: Colors.white),
            value: 40,
            titlePositionPercentageOffset: currntIndex == 0 ? 1.5 : null,
            color: const Color(0xFF208BC7),
          ),
          PieChartSectionData(
            radius: currntIndex == 1 ? 60 : 50,
            title: currntIndex == 1 ? 'Design product' : '25%',
            titlePositionPercentageOffset: currntIndex == 1 ? 1.2 : null,
            titleStyle: currntIndex == 1
                ? Fontstyle.Montserrat_Bold16(context)
                    .copyWith(color: Colors.black)
                : Fontstyle.Montserrat_Bold16(context)
                    .copyWith(color: Colors.white),
            value: 25,
            color: const Color(0xFF4DB7F2),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: currntIndex == 2 ? 1.4 : null,
            radius: currntIndex == 2 ? 60 : 50,
            title: currntIndex == 2 ? 'Product royalti' : '20%',
            titleStyle: currntIndex == 2
                ? Fontstyle.Montserrat_Bold16(context)
                    .copyWith(color: Colors.black)
                : Fontstyle.Montserrat_Bold16(context)
                    .copyWith(color: Colors.white),
            value: 20,
            color: const Color(0xFF064060),
          ),
          PieChartSectionData(
            titlePositionPercentageOffset: currntIndex == 3 ? 0.8 : null,
            radius: currntIndex == 3 ? 60 : 50,
            title: currntIndex == 3 ? 'Other' : '22%',
            titleStyle: currntIndex == 3
                ? Fontstyle.Montserrat_Bold16(context)
                    .copyWith(color: Colors.black)
                : Fontstyle.Montserrat_Bold16(context)
                    .copyWith(color: Colors.white),
            value: 22,
            color: const Color(0xFFE2DECD),
          ),
        ]);
  }
}
