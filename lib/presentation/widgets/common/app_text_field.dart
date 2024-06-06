import 'package:flutter/material.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_colors.dart';
import 'package:tickets_search_test/presentation/widgets/common/app_svg_icon_widget.dart';

import '../../utils/theme/app_adaptive_size.dart';
import '../../utils/theme/app_text_styles.dart';

class AppTextFieldWidget extends StatefulWidget {
  const AppTextFieldWidget(
      {super.key,
      required this.onChanged,
      this.onTap,
      required this.hint,
      this.iconPath,
      required this.controller,
      this.trailingIconPath,
      required this.width});

  final Function(String) onChanged;
  final VoidCallback? onTap;
  final String hint;
  final String? iconPath;
  final String? trailingIconPath;
  final TextEditingController controller;
  final double width;

  @override
  State<AppTextFieldWidget> createState() => _AppTextFieldWidgetState();
}

class _AppTextFieldWidgetState extends State<AppTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: AppSize.height(context, 23),
        width: AppSize.width(context, widget.width),
        child: TextField(
          onTap: widget.onTap,
          controller: widget.controller,
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
              suffixIcon: widget.trailingIconPath != null
                  ? AppSVGiconWidget(
                      svgPath: widget.trailingIconPath!,
                      color: AppColors.basic.grey6,
                    )
                  : null,
              prefixIconConstraints: widget.iconPath != null
                  ? BoxConstraints.tight(Size(
                      AppSize.width(context, 24), AppSize.height(context, 24)))
                  : null,
              suffixIconConstraints: widget.trailingIconPath != null
                  ? BoxConstraints.tight(Size(
                      AppSize.width(context, 24), AppSize.height(context, 24)))
                  : null,
              contentPadding:
                  EdgeInsets.only(bottom: AppSize.height(context, 10)),
              hintText: widget.controller.text.isEmpty ? widget.hint : null,
              border: InputBorder.none),
        ));
  }
}
