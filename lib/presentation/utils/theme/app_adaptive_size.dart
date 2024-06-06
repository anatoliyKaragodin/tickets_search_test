import 'package:flutter/material.dart';

class AppSize {
  AppSize._();
  static const figmaHeight = 800;
  static const figmaWidth = 360;

  static double height(BuildContext context, double value) {
    double height = MediaQuery.of(context).size.longestSide;
    return value * (height / figmaHeight);
  }

  static double width(BuildContext context, double value) {
    double width = MediaQuery.of(context).size.shortestSide;
    return value * (width / figmaWidth);
  }
}
