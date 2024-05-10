import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_adaptive_size.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_border_radius.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_colors.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_text_styles.dart';
import 'package:tickets_search_test/presentation/widgets/app_svg_icon_widget.dart';

import '../../../widgets/app_text_field.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppAdaptiveSize(context);

    return Column(
      children: [
        Gap(size.heightInPixels(30)),
        _TextWidget(size: size),
        Gap(size.heightInPixels(33)),
        _SearchContainer(size: size),
      ],
    );
  }
}

class _SearchContainer extends StatelessWidget {
  const _SearchContainer({
    required this.size,
  });

  final AppAdaptiveSize size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.widthInPixels(16)),
      child: Container(
        height: size.heightInPixels(122),
        decoration: BoxDecoration(
            color: AppColors.basic.grey3,
            borderRadius: AppBorderRadius.mediumBorder(context)),
        child: Padding(
          padding: EdgeInsets.all(size.widthInPixels(16)),
          child: _SearchSubContainer(size: size),
        ),
      ),
    );
  }
}

class _SearchSubContainer extends StatelessWidget {
  const _SearchSubContainer({
    required this.size,
  });

  final AppAdaptiveSize size;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: size.widthInPixels(4),
                offset: Offset(0, size.heightInPixels(4)),
                color: const Color(0xFF000000).withOpacity(0.25))
          ],
          color: AppColors.basic.grey4,
          borderRadius: AppBorderRadius.mediumBorder(context)),
      child: Padding(
        padding: EdgeInsets.only(
            left: size.widthInPixels(8),
            right: size.widthInPixels(16),
            top: size.heightInPixels(16),
            bottom: size.heightInPixels(16)),
        child: Row(
          children: [
            AppSVGiconWidget(
              svgPath: 'search.svg',
              color: AppColors.basic.grey7,
            ),
            Gap(size.widthInPixels(10)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppTextFieldWidget(size: size),
                SizedBox(
                  width: size.widthInPixels(232),
                  child: Divider(color: AppColors.basic.grey6),
                ),
                SizedBox(
                    height: 20,
                    width: size.widthInPixels(232),
                    child: TextField(
                      decoration: InputDecoration(
                          contentPadding:
                              EdgeInsets.only(bottom: size.heightInPixels(10)),
                          hintText: 'Куда - Турция',
                          border: InputBorder.none),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _TextWidget extends StatelessWidget {
  const _TextWidget({
    required this.size,
  });

  final AppAdaptiveSize size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: size.widthInPixels(90)),
      child: Center(
          child: Text(
        'Поиск дешевых авиабилетов',
        style: AppTextStyles.title1(context),
        textAlign: TextAlign.center,
      )),
    );
  }
}
