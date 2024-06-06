import 'package:flutter/material.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_adaptive_size.dart';

class AppBorderRadius {
  AppBorderRadius._();
  
  static BorderRadius smallBorder(BuildContext context) =>
      BorderRadius.circular(AppSize.width(context, 8));

  static BorderRadius mediumBorder(BuildContext context) =>
      BorderRadius.circular(AppSize.width(context, 16));

  static BorderRadius bigBorder(BuildContext context) =>
      BorderRadius.circular(AppSize.width(context, 50));
}
