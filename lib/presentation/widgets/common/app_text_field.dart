import 'package:flutter/material.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_colors.dart';
import 'package:tickets_search_test/presentation/widgets/common/app_svg_icon_widget.dart';

import '../../utils/theme/app_adaptive_size.dart';
import '../../utils/theme/app_text_styles.dart';

class AppTextFieldWidget extends StatelessWidget {
  const AppTextFieldWidget(
      {super.key,
      this.onChanged,
      this.onSubmitted,
      this.onTap,
      required this.hint,
      this.iconPath,
      required this.controller,
      this.trailingIconPath,
      required this.width,
      this.onTapTrailingIcon,
      this.onTapIcon});

  final Function(String)? onChanged;
  final Function(String)? onSubmitted;
  final VoidCallback? onTap;
  final String hint;
  final String? iconPath;
  final String? trailingIconPath;
  final TextEditingController controller;
  final double width;
  final VoidCallback? onTapTrailingIcon;
  final VoidCallback? onTapIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: AppSize.height(context, 23),
        width: AppSize.width(context, width),
        child: TextField(
          onTap: onTap,
          controller: controller,
          onChanged: onChanged,
          onSubmitted: onSubmitted,
          textAlignVertical: TextAlignVertical.top,
          style: AppTextStyles.buttonText1(context)
              .copyWith(fontWeight: FontWeight.w600),
          decoration: InputDecoration(
              hintStyle: AppTextStyles.buttonText1(context).copyWith(
                  fontWeight: FontWeight.w600, color: AppColors.basic.grey6),
              prefixIcon: iconPath != null
                  ? GestureDetector(
                      onTap: onTapIcon,
                      child: AppSVGiconWidget(
                        svgPath: iconPath!,
                        color: AppColors.basic.grey6,
                      ),
                    )
                  : null,
              suffixIcon: trailingIconPath != null
                  ? GestureDetector(
                      onTap: onTapTrailingIcon,
                      child: AppSVGiconWidget(
                        svgPath: trailingIconPath!,
                        color: AppColors.basic.grey6,
                      ),
                    )
                  : null,
              prefixIconConstraints: iconPath != null
                  ? BoxConstraints.tight(Size(
                      AppSize.width(context, 24), AppSize.height(context, 24)))
                  : null,
              suffixIconConstraints: trailingIconPath != null
                  ? BoxConstraints.tight(Size(
                      AppSize.width(context, 24), AppSize.height(context, 24)))
                  : null,
              contentPadding:
                  EdgeInsets.only(bottom: AppSize.height(context, 14)),
              hintText: controller.text.isEmpty ? hint : null,
              border: InputBorder.none),
        ));
  }
}
