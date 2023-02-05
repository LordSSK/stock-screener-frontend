import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:stonks/helper/responsiveHelper.dart';
import 'package:stonks/screens/pages/chartPage.dart';
import 'package:stonks/screens/pages/summaryPage.dart';

class StockSummaryScreen extends StatelessWidget {
  StockSummaryScreen({super.key});
  static const route = '/summary';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 80,
          titleSpacing: 0,
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: ResponsiveHelper.width(10),
                height: ResponsiveHelper.width(10),
                child: Image.network(
                  'https://brandmark.io/logo-rank/random/pepsi.png',
                  width: ResponsiveHelper.width(10),
                  height: ResponsiveHelper.width(10),
                ),
              ),
              SizedBox(
                width: ResponsiveHelper.width(3),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Infosys Limited",
                    style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),
                  ),
                  Text(
                    "Information Technology",
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.info), text: 'Summary'),
              Tab(icon: Icon(Icons.candlestick_chart), text: 'Chart'),
              Tab(icon: Icon(Icons.newspaper), text: 'News'),
              Tab(icon: Icon(Icons.analytics), text: 'Analysist'),
            ],
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [
            SummaryPage(),
            ChartPage(),
            Icon(Icons.directions_car, size: 350),
            Icon(Icons.directions_car, size: 350),
          ],
        ),
      ),
    );
  }
}
