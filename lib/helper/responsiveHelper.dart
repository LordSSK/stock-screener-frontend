import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class ResponsiveHelper {
  static double width(double width) {
    return width.w;
  }

  static double height(double height) {
    return height.h;
  }

  static double fontSize(double size) {
    return size.sp;
  }
}
