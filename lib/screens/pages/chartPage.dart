import 'package:flutter/material.dart';
import 'package:interactive_chart/interactive_chart.dart';
import 'package:sizer/sizer.dart';
import 'package:stonks/helper/responsiveHelper.dart';
import 'package:stonks/mock/stock.dart';

class ChartPage extends StatelessWidget {
  const ChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    double heightWithoutappBarNavBar = (kBottomNavigationBarHeight + kToolbarHeight);
    var height = ResponsiveHelper.height(100);
    var totalHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          width: ResponsiveHelper.width(100),
          height: 100.h - (ResponsiveHelper.height(kToolbarHeight + kBottomNavigationBarHeight)),
          color: Colors.amber,
        ),
      ],
    );
  }
}
