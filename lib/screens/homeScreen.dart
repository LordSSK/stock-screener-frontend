import 'package:carousel_slider/carousel_slider.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:interactive_chart/interactive_chart.dart';
import 'package:stonks/helper/responsiveHelper.dart';
import 'package:stonks/mock/stock.dart';
import 'package:stonks/widgets/stockItem.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  static const route = '/';
  List<FlSpot> spots = [
    FlSpot(0, 3),
    FlSpot(1, 2),
    FlSpot(2, 1),
    FlSpot(3, 3),
    FlSpot(4, 4),
    FlSpot(5, 5),
    FlSpot(6, 2),
  ];
  List<CandleData> _data = MockDataTesla.candles;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STONKS"),
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            height: ResponsiveHelper.height(45),
            child: Column(mainAxisSize: MainAxisSize.max, crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
                child: Text('Hello, Surhud!',
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(color: Colors.white)),
              ),
              Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16, 0, 0, 12),
                  child: Text('You will find your quote options below.',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white))),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: ResponsiveHelper.height(30),
                      child: CarouselSlider(
                        options: CarouselOptions(
                            height: ResponsiveHelper.height(30),
                            enlargeCenterPage: true,
                            autoPlay: true,
                            enlargeStrategy: CenterPageEnlargeStrategy.zoom),
                        items: [1, 2, 3, 4, 5].map((i) {
                          return Builder(
                            builder: (BuildContext context) {
                              return Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 4,
                                      color: Color(0x2B202529),
                                      offset: Offset(0, 2),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                width: MediaQuery.of(context).size.width,
                                margin: EdgeInsets.symmetric(horizontal: 5),
                                child: Padding(
                                  padding: EdgeInsets.only(
                                      left: ResponsiveHelper.width(5), right: ResponsiveHelper.width(5)),
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
                                      titlesData: FlTitlesData(
                                        topTitles: AxisTitles(axisNameWidget: Text('Nifty')),
                                        bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                        leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                        rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                                      ),
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
                              );
                            },
                          );
                        }).toList(),
                      ))
                ],
              ),
            ]),
          ),
          SizedBox(
            height: ResponsiveHelper.height(1),
          ),
          Align(
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16, 12, 0, 0),
                child:
                    Text('Watchlist', style: Theme.of(context).textTheme.headlineSmall!.copyWith(color: Colors.grey)),
              ),
              alignment: Alignment.centerLeft),
          SizedBox(
            height: ResponsiveHelper.height(1),
          ),
          Expanded(
              child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  left: ResponsiveHelper.width(2.5),
                  right: ResponsiveHelper.width(2.5),
                  top: ResponsiveHelper.height(1),
                  bottom: ResponsiveHelper.height(1),
                ),
                child: StockItem(),
              );
            },
            itemCount: 100,
          ))
        ],
      ),
    );
  }
}
