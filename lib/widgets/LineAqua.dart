import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../data/data1.dart';
import 'CustomCard.dart';

class LineAqua extends StatelessWidget {
  const LineAqua({super.key});

  @override
  Widget build(BuildContext context) {
    final data = data1();
    return CustomCard(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Cost(1000)", style: TextStyle(fontSize: 14),
        ),
        SizedBox(height: 20,),
        AspectRatio(aspectRatio: 16/6,
          child: LineChart(
            LineChartData(
                minY: 180,
                maxY: 820,
                lineTouchData: LineTouchData(
                  handleBuiltInTouches: true,
                ),
                titlesData: FlTitlesData(
                  rightTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: false,
                    ),
                  ),
                  topTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: false,
                    ),
                  ),
                  bottomTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 5,
                      reservedSize: 32,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        return data.bottomTitle[value.toInt()] != null
                            ? SideTitleWidget(
                          axisSide: meta.axisSide,
                          child: Text(
                            data.bottomTitle[value.toInt()].toString(),
                            style: const TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        )
                            : const SizedBox();
                      },
                    ),
                  ),
                  leftTitles: AxisTitles(
                    sideTitles: SideTitles(
                      showTitles: true,
                      interval: 200,
                      reservedSize: 52,
                      getTitlesWidget: (double value, TitleMeta meta) {
                        return data.leftTitle[value.toInt()] != null
                            ? Text(
                          data.leftTitle[value.toInt()].toString(),
                          style: const TextStyle(
                            fontSize: 12,
                          ),
                        )
                            : const SizedBox();
                      },

                    ),
                  ),
                ),
                borderData: FlBorderData(show: false),
                lineBarsData: [
                  //second line
                  LineChartBarData(
                    color: Color(0xFF007DBA),
                    barWidth: 2.5,
                    belowBarData: BarAreaData(
                      show: true,
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0xFF007DBA).withOpacity(0.8),
                          Color(0xFF97C7E8).withOpacity(0.2),
                        ],
                      ),

                    ),
                    dotData: FlDotData(show: true,),
                    spots: data.spots11,
                  ),
                ]
            ),
          ),
        ),

      ],
    ),);
  }
}
