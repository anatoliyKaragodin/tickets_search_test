import 'package:flutter/material.dart';

import '../utils/theme/app_adaptive_size.dart';
import '../utils/theme/app_text_styles.dart';

class AppTextFieldWidget extends StatefulWidget {
  const AppTextFieldWidget({
    super.key,
    required this.size,
  });

  final AppAdaptiveSize size;

  @override
  State<AppTextFieldWidget> createState() => _AppTextFieldWidgetState();
}

class _AppTextFieldWidgetState extends State<AppTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 20,
        width: widget.size.widthInPixels(232),
        child: TextField(
          style: AppTextStyles.title3(context)
              .copyWith(fontWeight: FontWeight.w600),
          decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.only(bottom: widget.size.heightInPixels(10)),
              hintText: 'Минск',
              border: InputBorder.none),
        ));
  }
}
