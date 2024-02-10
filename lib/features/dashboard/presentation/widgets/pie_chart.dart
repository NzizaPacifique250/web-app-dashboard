import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class PieChartSample1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: [
          PieChartSectionData(
            value: 20,
            color: Colors.blue,
            title: 'Jan',
          ),
          PieChartSectionData(
            value: 30,
            color: Colors.green,
            title: 'Feb',
          ),
          PieChartSectionData(
            value: 25,
            color: Colors.orange,
            title: 'Mar',
          ),
          PieChartSectionData(
            value: 15,
            color: Colors.red,
            title: 'Apr',
          ),
          PieChartSectionData(
            value: 10,
            color: Colors.purple,
            title: 'May',
          ),
        ],
        sectionsSpace: 0,
        centerSpaceRadius: 50,
        borderData: FlBorderData(
          show: false,
        ),
      ),
    );
  }
}
