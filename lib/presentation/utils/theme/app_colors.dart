import 'package:flutter/material.dart';

class AppColors {
  static Basic get basic => Basic();
  static Special get special => Special();
}

class Basic {
  Color black = const Color(0xFF0C0C0C);
  Color grey1 = const Color(0xFF3E3F43);
  Color grey2 = const Color(0xFF2F3035);
  Color grey3 = const Color(0xFF2F3035);
  Color grey4 = const Color(0xFF3E3F43);
  Color grey5 = const Color(0xFF5E5F61);
  Color grey6 = const Color(0xFF9F9F9F);
  Color grey7 = const Color(0xFFDBDBDB);
  Color white = const Color(0xFFFFFFFF);
}

class Special {
  Color blue = const Color(0xFF2269BC);
  Color darkBlue = const Color(0xFF00427D);
  Color green = const Color(0xFF3A633B);
  Color darkGreen = const Color(0xFF1E341F);
  Color red = const Color(0xFFFF5E5E);
  Color orange = const Color(0xFFF36E36);
}
