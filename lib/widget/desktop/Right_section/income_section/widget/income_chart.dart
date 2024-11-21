import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({super.key});

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
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
            radius: currntIndex == 0 ? 40 : 30,
            showTitle: false,
            value: 40,
            color: const Color(0xFF208BC7),
          ),
          PieChartSectionData(
            radius: currntIndex == 1 ? 40 : 30,
            showTitle: false,
            value: 25,
            color: const Color(0xFF4DB7F2),
          ),
          PieChartSectionData(
            radius: currntIndex == 2 ? 40 : 30,
            showTitle: false,
            value: 20,
            color: const Color(0xFF064060),
          ),
          PieChartSectionData(
            radius: currntIndex == 3 ? 40 : 30,
            showTitle: false,
            value: 22,
            color: const Color(0xFFE2DECD),
          ),
        ]);
  }
}
