import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/theme/app_adaptive_size.dart';
import '../../utils/theme/app_border_radius.dart';
import '../../utils/theme/app_colors.dart';
import '../common/app_svg_icon_widget.dart';
import '../common/app_text_field.dart';

class AppSearchTicketWidget extends StatelessWidget {
  const AppSearchTicketWidget(
      {super.key,
      this.onTapWhereField,
      required this.controllerFrom,
      required this.controllerWhere,
      this.prefixIcon,
      this.textFieldPrefixIcon1,
      this.textFieldPrefixIcon2,
      this.textFieldTrailingIcon1,
      this.textFieldTrailingIcon2,
      required this.textFieldsWidth,
      this.textFieldHint1,
      this.textFieldHint2,
      this.textFieldText1,
      this.textFieldText2});

  final VoidCallback? onTapWhereField;
  final TextEditingController controllerFrom;
  final TextEditingController controllerWhere;
  final String? prefixIcon;
  final String? textFieldPrefixIcon1;
  final String? textFieldPrefixIcon2;
  final String? textFieldTrailingIcon1;
  final String? textFieldTrailingIcon2;
  final double textFieldsWidth;
  final String? textFieldHint1;
  final String? textFieldHint2;
  final String? textFieldText1;
  final String? textFieldText2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: AppSize.width(context, 4),
                offset: Offset(0, AppSize.height(context, 4)),
                color: const Color(0xFF000000).withOpacity(0.25))
          ],
          color: AppColors.basic.grey4,
          borderRadius: AppBorderRadius.mediumBorder(context)),
      child: Padding(
        padding: EdgeInsets.only(
            left: AppSize.width(context, 8),
            right: AppSize.width(context, 16),
            top: AppSize.height(context, 16),
            bottom: AppSize.height(context, 16)),
        child: Row(
          children: [
            if (prefixIcon != null)
              AppSVGiconWidget(
                svgPath: prefixIcon!,
                color: AppColors.basic.grey7,
              ),
            Gap(AppSize.width(context, 10)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppTextFieldWidget(
                  width: textFieldsWidth,
                  controller: controllerFrom,
                  iconPath: textFieldPrefixIcon1,
                  trailingIconPath: textFieldTrailingIcon1,
                  onTap: () {},
                  hint: textFieldHint1 ?? '',
                  onChanged: (value) => null,
                ),
                SizedBox(
                  width: AppSize.width(context, textFieldsWidth),
                  child: Divider(color: AppColors.basic.grey6),
                ),
                AppTextFieldWidget(
                    width: textFieldsWidth,
                    controller: controllerWhere,
                    iconPath: textFieldPrefixIcon2,
                    trailingIconPath: textFieldTrailingIcon2,
                    onTap: onTapWhereField,
                    onChanged: (value) => null,
                    hint: textFieldHint2 ?? '')
              ],
            )
          ],
        ),
      ),
    );
  }
}
