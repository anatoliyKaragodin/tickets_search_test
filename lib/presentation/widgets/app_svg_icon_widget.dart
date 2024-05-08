import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_adaptive_size.dart';

class AppSVGiconWidget extends StatelessWidget {
  const AppSVGiconWidget(
      {super.key, required this.svgPath, this.color, this.size});

  final String svgPath;
  final Color? color;
  final double? size;

  @override
  Widget build(BuildContext context) {
    final appSize = AppAdaptiveSize(context);

    return Padding(
      padding: EdgeInsets.all(appSize.heightInPixels(3)),
      child: SizedBox(
        height: appSize.heightInPixels(size ?? 24),
        width: appSize.widthInPixels(size ?? 24),
        child: SvgPicture.asset(
          'assets/icons/$svgPath',
          width: appSize.widthInPixels(size ?? 24),
          color: color,
        ),
      ),
    );
  }
}
