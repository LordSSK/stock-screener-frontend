import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stonks/screens/homeScreen.dart';
import 'package:sizer/sizer.dart';
import 'package:stonks/screens/summaryScreen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Sizer',
          theme: FlexThemeData.light(
            textTheme: GoogleFonts.interTextTheme(),
            appBarBackground: Colors.white,
            scheme: FlexScheme.blue,
          ),
          // darkTheme: FlexThemeData.dark(textTheme: GoogleFonts.interTextTheme(), scheme: FlexScheme.mandyRed),
          initialRoute: HomeScreen.route,
          onGenerateRoute: (settings) {
            switch (settings.name) {
              case HomeScreen.route:
                return MaterialPageRoute(
                  builder: (context) => HomeScreen(),
                );
              case StockSummaryScreen.route:
                return MaterialPageRoute(
                  builder: (context) => StockSummaryScreen(),
                );
            }
          },
        );
      },
    );
  }
}
