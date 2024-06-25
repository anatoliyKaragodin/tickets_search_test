import 'package:flutter/material.dart';

import '../../utils/theme/app_adaptive_size.dart';

class AppCircleWidget extends StatelessWidget {
  const AppCircleWidget({super.key, required this.color, this.size = 24});

  final Color color;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.width(context, 24),
      height: AppSize.height(context, 24),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
      ),
    );
  }
}
