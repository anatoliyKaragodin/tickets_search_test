import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:tickets_search_test/presentation/providers/offers_provider.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_adaptive_size.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_border_radius.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_colors.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_text_styles.dart';
import 'package:tickets_search_test/presentation/widgets/app_listview_offer_widget.dart';
import 'package:tickets_search_test/presentation/widgets/app_svg_icon_widget.dart';

import '../../../widgets/app_error_widget.dart';
import '../../../widgets/app_text_field.dart';

class TicketsScreen extends ConsumerWidget {
  const TicketsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = AppAdaptiveSize(context);
    final offers = ref.watch(offersProvider);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(size.heightInPixels(30)),
        const Center(
          child: _TextWidget(
            textAlign: TextAlign.center,
            horizontalPadding: 90,
            value: 'Поиск дешевых авиабилетов',
          ),
        ),
        Gap(size.heightInPixels(33)),
        _SearchContainer(size: size),
        Gap(size.heightInPixels(32)),
        const _TextWidget(horizontalPadding: 16, value: 'Музыкально отлететь'),
        Gap(size.heightInPixels(25)),
        SizedBox(
            height: size.heightInPixels(214),
            child: switch (offers) {
              AsyncData(:final value) => ListView.builder(
                  itemCount: value.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(
                            left: size.widthInPixels(16),
                            right: size.widthInPixels(50)),
                        child: AppListviewOfferWidget(offer: value[index]),
                      )),
              AsyncError(:final error, :final stackTrace) => AppErrorWidget(
                  error: error,
                  stackTrace: stackTrace,
                ),
              _ => const Center(child: CircularProgressIndicator())
            })
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
                AppTextFieldWidget(
                  value: 'Минск',
                  hint: 'Откуда - Москва',
                  // iconPath: 'airplane.svg',
                  onChanged: (value) => null,
                ),
                SizedBox(
                  width: size.widthInPixels(232),
                  child: Divider(color: AppColors.basic.grey6),
                ),
                AppTextFieldWidget(
                    onChanged: (value) => null, hint: 'Куда - Турция')
              ],
            )
          ],
        ),
      ),
    );
  }
}

class _TextWidget extends StatelessWidget {
  const _TextWidget(
      {required this.horizontalPadding, required this.value, this.textAlign});

  final double horizontalPadding;
  final String value;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final AppAdaptiveSize size = AppAdaptiveSize(context);

    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: size.widthInPixels(horizontalPadding)),
      child: Text(
        value,
        style: AppTextStyles.title1(context),
        textAlign: textAlign,
      ),
    );
  }
}
