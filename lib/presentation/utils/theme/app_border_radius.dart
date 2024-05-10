import 'package:flutter/material.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_adaptive_size.dart';

class AppBorderRadius {
  static BorderRadius smallBorder(BuildContext context) =>
      BorderRadius.circular(AppAdaptiveSize(context).widthInPixels(8));

  static BorderRadius mediumBorder(BuildContext context) =>
      BorderRadius.circular(AppAdaptiveSize(context).widthInPixels(16));

  static BorderRadius bigBorder(BuildContext context) =>
      BorderRadius.circular(AppAdaptiveSize(context).widthInPixels(50));
}
