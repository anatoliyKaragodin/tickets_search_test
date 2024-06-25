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
    return SizedBox(
      height: AppSize.height(context, size ?? 24),
      width: AppSize.width(context, size ?? 24),
      child: SvgPicture.asset(
        svgPath,
        width: AppSize.width(context, size ?? 24),
        color: color,
      ),
    );
  }
}
