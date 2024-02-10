import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PieChart(
      swapAnimationDuration: const Duration(milliseconds: 750),
      PieChartData(
        sections: [
          PieChartSectionData(
            showTitle: false,
            radius: 10,
            value: 200,
            color: Colors.purpleAccent,
          ),
          PieChartSectionData(
            showTitle: false,
            radius: 10,
            value: 30,
            color: Colors.orangeAccent,
          ),
        ],
        sectionsSpace: 0,
        centerSpaceRadius: 80,
        borderData: FlBorderData(
          show: false,
        ),
      ),
    );
  }
}
