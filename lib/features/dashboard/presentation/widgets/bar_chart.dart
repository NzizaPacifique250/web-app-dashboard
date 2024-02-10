import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class BarChartSample extends StatelessWidget {
  const BarChartSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: BarChart(
        BarChartData(
          gridData: const FlGridData(show: false),
          borderData: FlBorderData(show: false),
          titlesData: const FlTitlesData(
              show: true,
              topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
              rightTitles:
                  AxisTitles(sideTitles: SideTitles(showTitles: false))),
          maxY: 70,
          minY: 0,
          barGroups: [
            BarChartGroupData(barRods: [
              BarChartRodData(
                  color: Colors.blue[800],
                  width: 15,
                  backDrawRodData: BackgroundBarChartRodData(
                    color: Colors.blue[200],
                    toY: 70,
                    show: true,
                  ),
                  toY: 10)
            ], x: 1),
            BarChartGroupData(barRods: [
              BarChartRodData(
                  color: Colors.blue[800],
                  width: 15,
                  backDrawRodData: BackgroundBarChartRodData(
                    color: Colors.blue[200],
                    toY: 70,
                    show: true,
                  ),
                  toY: 20)
            ], x: 2),
            BarChartGroupData(barRods: [
              BarChartRodData(
                  color: Colors.blue[800],
                  width: 15,
                  backDrawRodData: BackgroundBarChartRodData(
                    color: Colors.blue[200],
                    toY: 70,
                    show: true,
                  ),
                  toY: 30)
            ], x: 3),
            BarChartGroupData(barRods: [
              BarChartRodData(
                  color: Colors.blue[800],
                  width: 15,
                  backDrawRodData: BackgroundBarChartRodData(
                    color: Colors.blue[200],
                    toY: 70,
                    show: true,
                  ),
                  toY: 40)
            ], x: 4),
            BarChartGroupData(barRods: [
              BarChartRodData(
                  color: Colors.blue[800],
                  width: 15,
                  backDrawRodData: BackgroundBarChartRodData(
                    color: Colors.blue[200],
                    toY: 70,
                    show: true,
                  ),
                  toY: 50)
            ], x: 5),
            BarChartGroupData(barRods: [
              BarChartRodData(
                  color: Colors.blue[800],
                  width: 15,
                  backDrawRodData: BackgroundBarChartRodData(
                    color: Colors.blue[200],
                    toY: 70,
                    show: true,
                  ),
                  toY: 60)
            ], x: 6),
            BarChartGroupData(barRods: [
              BarChartRodData(
                  color: Colors.blue[800],
                  width: 15,
                  backDrawRodData: BackgroundBarChartRodData(
                    color: Colors.blue[200],
                    toY: 70,
                    show: true,
                  ),
                  toY: 40)
            ], x: 7),
            BarChartGroupData(barRods: [
              BarChartRodData(
                  color: Colors.blue[800],
                  width: 15,
                  backDrawRodData: BackgroundBarChartRodData(
                    color: Colors.blue[200],
                    toY: 70,
                    show: true,
                  ),
                  toY: 30)
            ], x: 8),
            BarChartGroupData(barRods: [
              BarChartRodData(
                  color: Colors.blue[800],
                  width: 15,
                  backDrawRodData: BackgroundBarChartRodData(
                    color: Colors.blue[200],
                    toY: 70,
                    show: true,
                  ),
                  toY: 20)
            ], x: 9),
            BarChartGroupData(barRods: [
              BarChartRodData(
                  color: Colors.blue[800],
                  width: 15,
                  backDrawRodData: BackgroundBarChartRodData(
                    color: Colors.blue[200],
                    toY: 70,
                    show: true,
                  ),
                  toY: 10)
            ], x: 10),
          ],
        ),
      ),
    );
  }
}
