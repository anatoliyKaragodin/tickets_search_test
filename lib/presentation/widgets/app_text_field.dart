import 'package:flutter/material.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_colors.dart';
import 'package:tickets_search_test/presentation/widgets/app_svg_icon_widget.dart';

import '../utils/theme/app_adaptive_size.dart';
import '../utils/theme/app_text_styles.dart';

class AppTextFieldWidget extends StatefulWidget {
  const AppTextFieldWidget(
      {super.key,
      required this.onChanged,
      required this.hint,
      this.value,
      this.iconPath});

  final Function(String) onChanged;
  final String hint;
  final String? value;
  final String? iconPath;

  @override
  State<AppTextFieldWidget> createState() => _AppTextFieldWidgetState();
}

class _AppTextFieldWidgetState extends State<AppTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    final size = AppAdaptiveSize(context);
    final controller = TextEditingController.fromValue(
        widget.value != null ? TextEditingValue(text: widget.value!) : null);

    return SizedBox(
        height: size.heightInPixels(20),
        width: size.widthInPixels(232),
        child: TextField(
          controller: controller,
          onChanged: widget.onChanged,
          style: AppTextStyles.title3(context)
              .copyWith(fontWeight: FontWeight.w600),
          decoration: InputDecoration(
              prefixIcon: widget.iconPath != null
                  ? AppSVGiconWidget(
                      svgPath: widget.iconPath!,
                      color: AppColors.basic.grey6,
                    )
                  : null,
              prefixIconConstraints: widget.iconPath != null
                  ? BoxConstraints.tight(
                      Size(size.widthInPixels(24), size.heightInPixels(24)))
                  : null,
              contentPadding: EdgeInsets.only(bottom: size.heightInPixels(12)),
              hintText: widget.value == null ? widget.hint : null,
              border: InputBorder.none),
        ));
  }
}
