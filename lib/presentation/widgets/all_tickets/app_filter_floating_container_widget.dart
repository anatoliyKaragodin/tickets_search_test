import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_text_styles.dart';
import 'package:tickets_search_test/presentation/widgets/common/app_svg_icon_widget.dart';

import '../../utils/constants/app_icons_path.dart';
import '../../utils/theme/app_adaptive_size.dart';
import '../../utils/theme/app_border_radius.dart';
import '../../utils/theme/app_colors.dart';

class AppFilterFloatingContainerWidget extends StatelessWidget {
  const AppFilterFloatingContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.special.blue,
          borderRadius: AppBorderRadius.bigBorder(context)),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppSize.width(context, 10),
            vertical: AppSize.height(context, 10)),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const _ButtonWidget(
              svgIconPath: AppIconsPath.filter,
              label: 'Фильтр',
            ),
            Gap(AppSize.width(context, 16)),
            const _ButtonWidget(
              svgIconPath: AppIconsPath.schedule,
              label: 'График цен',
            )
          ],
        ),
      ),
    );
  }
}

class _ButtonWidget extends StatelessWidget {
  const _ButtonWidget(
      {required this.label, required this.svgIconPath});

  final String svgIconPath;
  final String label;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          AppSVGiconWidget(
            svgPath: svgIconPath,
            size: AppSize.width(context, 14),
          ),
          Gap(AppSize.width(context, 1.5)),
          Text(label, style: AppTextStyles.title4(context),)
        ],
      ),
    );
  }
}
