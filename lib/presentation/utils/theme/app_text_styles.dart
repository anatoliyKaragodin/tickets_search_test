import 'package:flutter/material.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_adaptive_size.dart';

class AppTextStyles {
  static const String _fontFamily1 = 'SF-Pro-Display';

  static const FontWeight _fontWeightRegular = FontWeight.w400;
  static const FontWeight _fontWeightMedium = FontWeight.w500;
  static const FontWeight _fontWeightSemibold = FontWeight.w600;

  static const double _size22 = 22;
  static const double _size20 = 20;
  static const double _size16 = 16;
  static const double _size14 = 14;
  static const double _size10 = 10;

  static double _fontSize(BuildContext context, double figmaFontSize) =>
      AppAdaptiveSize(context).widthInPixels(22);


  // Text styles
  static TextStyle title1(BuildContext context) => TextStyle(
        fontFamily: _fontFamily1,
        fontWeight: _fontWeightSemibold,
        fontSize: _fontSize(context, _size22),
      );

  static TextStyle title2(BuildContext context) => TextStyle(
        fontFamily: _fontFamily1,
        fontWeight: _fontWeightSemibold,
        fontSize: _fontSize(context, _size20),
      );

  static TextStyle title3(BuildContext context) => TextStyle(
        fontFamily: _fontFamily1,
        fontWeight: _fontWeightMedium,
        fontSize: _fontSize(context, _size16),
      );

  static TextStyle title4(BuildContext context) => TextStyle(
        fontFamily: _fontFamily1,
        fontWeight: _fontWeightRegular,
        fontSize: _fontSize(context, _size14),
      );

  static TextStyle text1(BuildContext context) => TextStyle(
        fontFamily: _fontFamily1,
        fontWeight: _fontWeightRegular,
        fontSize: _fontSize(context, _size16),
      );

  static TextStyle text2(BuildContext context) => TextStyle(
        fontFamily: _fontFamily1,
        fontWeight: _fontWeightSemibold,
        fontSize: _fontSize(context, _size14),
      );

  static TextStyle buttonText1(BuildContext context) => TextStyle(
        fontFamily: _fontFamily1,
        fontWeight: _fontWeightRegular,
        fontSize: _fontSize(context, _size16),
      );

  static TextStyle tabText(BuildContext context) => TextStyle(
        fontFamily: _fontFamily1,
        fontWeight: _fontWeightRegular,
        fontSize: _fontSize(context, _size10),
      );
}
