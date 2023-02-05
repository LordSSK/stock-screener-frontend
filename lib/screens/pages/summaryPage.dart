import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:stonks/helper/responsiveHelper.dart';
import 'package:stonks/widgets/summaryLabel.dart';

class SummaryPage extends StatelessWidget {
  SummaryPage({super.key});
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
    return Padding(
      padding: EdgeInsets.all(ResponsiveHelper.width(2.5)),
      child: SingleChildScrollView(
        child: Column(children: [
          Text(
            "Infosys Limited, together with its subsidiaries, provides consulting, technology, outsourcing, and next-generation digital services in North America, Europe, India, and internationally. It provides application development and management, independent validation, product engineering and management, infrastructure ma...",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            height: ResponsiveHelper.height(1),
          ),
          Text("1 Year Trend"),
          Container(
            width: ResponsiveHelper.width(100),
            height: ResponsiveHelper.height(30),
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
                  show: true,
                ),
                titlesData: FlTitlesData(
                  topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                  leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
                  rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: true)),
                ),
                borderData: FlBorderData(show: true),
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
            height: ResponsiveHelper.height(2.5),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SummaryLabelWidget(
                label: "Country",
                value: "India",
              ),
              SummaryLabelWidget(
                label: "City",
                value: "Bengluru",
              ),
              SummaryLabelWidget(
                label: "Total Employees",
                value: "19999999",
              ),
            ],
          ),
          SizedBox(
            height: ResponsiveHelper.height(2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SummaryLabelWidget(
                label: "PE",
                value: "2.5%",
              ),
              SummaryLabelWidget(
                label: "PB",
                value: "2.5%",
              ),
              SummaryLabelWidget(
                label: "PS",
                value: "2.5%",
              )
            ],
          ),
          SizedBox(
            height: ResponsiveHelper.height(2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SummaryLabelWidget(
                label: "52 Week High",
                value: "1190",
              ),
              SummaryLabelWidget(
                label: "52 Week Low",
                value: "700",
              ),
              SummaryLabelWidget(
                label: "Dividend Yield",
                value: "700%",
              )
            ],
          ),
          SizedBox(
            height: ResponsiveHelper.height(2),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SummaryLabelWidget(
                label: "Beta",
                value: "1190",
              ),
              SummaryLabelWidget(
                label: "Market Cap",
                value: "100000000M",
              )
            ],
          ),
        ]),
      ),
    );
  }
}
