import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:stonks/helper/responsiveHelper.dart';
import 'package:stonks/screens/summaryScreen.dart';

class StockItem extends StatelessWidget {
  StockItem({super.key});
  List<FlSpot> spots = [
    FlSpot(0, 3),
    FlSpot(1, 2),
    FlSpot(2, 1),
    FlSpot(3, 3),
    FlSpot(4, 4),
    FlSpot(5, 5),
    FlSpot(6, 2),
  ];
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, StockSummaryScreen.route),
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(color: Color.fromARGB(255, 228, 228, 228), blurRadius: 5.0, spreadRadius: 2),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(5), topRight: Radius.circular(5))),
              padding: EdgeInsets.only(left: ResponsiveHelper.width(2.5), right: ResponsiveHelper.width(2.5)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: ResponsiveHelper.height(1),
                      ),
                      Text(
                        'Infosys',
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      Text(
                        'Information Technology',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      SizedBox(
                        height: ResponsiveHelper.height(1),
                      ),
                    ],
                  ),
                  Icon(Icons.info)
                ],
              ),
            ),
            Row(
              children: [
                SizedBox(
                  width: ResponsiveHelper.width(2.5),
                ),
                SizedBox(
                  width: ResponsiveHelper.width(20),
                  height: ResponsiveHelper.width(20),
                  child: Image.network(
                    'https://brandmark.io/logo-rank/random/pepsi.png',
                    width: ResponsiveHelper.width(20),
                    height: ResponsiveHelper.width(20),
                  ),
                ),
                SizedBox(
                  width: ResponsiveHelper.width(8),
                ),
                SizedBox(
                  width: ResponsiveHelper.width(60),
                  height: ResponsiveHelper.width(30),
                  child: LineChart(
                    LineChartData(
                      lineTouchData: LineTouchData(
                        touchTooltipData: LineTouchTooltipData(
                          tooltipBgColor: Colors.blueGrey.withOpacity(0.8),
                        ),
                      ),
                      minX: 0,
                      maxX: 6,
                      minY: 0,
                      maxY: 6,
                      gridData: FlGridData(
                        show: false,
                      ),
                      titlesData: FlTitlesData(show: false),
                      borderData: FlBorderData(show: false),
                      lineBarsData: [
                        LineChartBarData(
                          spots: spots,
                          isCurved: true,
                          dotData: FlDotData(
                            show: false,
                          ),
                          belowBarData: BarAreaData(
                            show: false,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: ResponsiveHelper.width(2.5),
                ),
              ],
            ),
            SizedBox(
              height: ResponsiveHelper.height(1),
            ),
          ],
        ),
      ),
    );
  }
}
