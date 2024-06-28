import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:tickets_search_test/presentation/screens/tickets_search_screen/tickets_search_VM.dart';
import 'package:tickets_search_test/presentation/utils/constants/app_icons_path.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_border_radius.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_colors.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_text_styles.dart';
import 'package:tickets_search_test/presentation/widgets/ticktes_search/app_search_ticket_widget.dart';
import 'package:tickets_search_test/presentation/widgets/common/app_svg_icon_widget.dart';

import '../../utils/theme/app_adaptive_size.dart';

class AppSearchTicketDialogWidget extends ConsumerWidget {
  const AppSearchTicketDialogWidget(
      {super.key,
      required this.controllerFrom,
      required this.controllerWhere,
      // this.onTapWhereField,
      required this.onTapPromt,
      required this.onTapRoute,
      this.onTapSufixIcon2});

  final TextEditingController controllerFrom;
  final TextEditingController controllerWhere;
  // final VoidCallback? onTapWhereField;
  final VoidCallback? onTapSufixIcon2;
  final Function(BuildContext, int) onTapPromt;
  final Function(String) onTapRoute;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final promtColors = [
      AppColors.special.darkGreen,
      AppColors.special.blue,
      AppColors.special.darkBlue,
      AppColors.special.red
    ];
    const promtIcons = [
      AppIconsPath.route,
      AppIconsPath.world,
      AppIconsPath.calendar,
      AppIconsPath.fire
    ];
    const promtTexts = [
      'Сложный маршрут',
      'Куда угодно',
      'Выходные',
      'Горячие билеты'
    ];

    const routeImgs = [
      'assets/images/stambul.png',
      'assets/images/sochi.png',
      'assets/images/phuket.png'
    ];
    const routeTowns = ['Стамбул', 'Сочи', 'Пхукет'];

    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: AppBorderRadius.mediumBorder(context),
      ),
      backgroundColor: AppColors.basic.black,
      insetPadding: EdgeInsets.only(top: AppSize.height(context, 24)),
      child: SingleChildScrollView(
        child: SizedBox(
          height: AppSize.height(context, AppSize.figmaHeight - 24),
          child: Column(
            children: [
              Gap(AppSize.height(context, 16)),
              const _TopDevider(),
              Gap(AppSize.height(context, 24)),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(context, 16)),
                child: AppSearchTicketWidget(
                    onTextField2LeadingIconTap: onTapSufixIcon2,
                    onTextField2Submitted: (value)=> onTapRoute(value),
                    textFieldsWidth: 294,
                    textFieldLeadingIconPath2: AppIconsPath.search,
                    textFieldLeadingIconPath1: AppIconsPath.airplane2,
                    textFieldTrailingIconPath2: AppIconsPath.close,
                    controllerFrom: controllerFrom,
                    controllerWhere: controllerWhere),
              ),
              Gap(AppSize.height(context, 24)),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(context, 16)),
                child: _PromtsRowWidget(
                    onTap: (context, i) => ref
                        .read(ticketsSearchVMprovider.notifier)
                        .onTapPromt(context, i),
                    promtColors: promtColors,
                    promtIcons: promtIcons,
                    promtTexts: promtTexts),
              ),
              Gap(AppSize.height(context, 30)),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: AppSize.width(context, 16)),
                child: _RoutesWidget(
                    onTap: (index) => onTapRoute(routeTowns[index]),
                    routeImgs: routeImgs,
                    routeTowns: routeTowns),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _RoutesWidget extends StatelessWidget {
  const _RoutesWidget(
      {required this.routeImgs, required this.routeTowns, required this.onTap});

  final List<String> routeImgs;
  final List<String> routeTowns;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.basic.grey3,
          borderRadius: AppBorderRadius.mediumBorder(context)),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppSize.width(context, 16),
            vertical: AppSize.height(context, 16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              3,
              (index) => Column(
                    children: [
                      InkWell(
                        key: ValueKey('route_$index'),
                        onTap: () => onTap(index),
                        child: Container(
                          height: AppSize.height(context, 56),
                          decoration: BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(
                                      color: AppColors.basic.grey4))),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius:
                                    AppBorderRadius.smallBorder(context),
                                child: Image.asset(
                                  routeImgs[index],
                                  height: AppSize.height(context, 40),
                                  width: AppSize.width(context, 40),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Gap(AppSize.width(context, 8)),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    routeTowns[index],
                                    style: AppTextStyles.title2(context)
                                        .copyWith(
                                            fontSize:
                                                AppSize.width(context, 16)),
                                  ),
                                  Text(
                                    'Популярное направление',
                                    style: AppTextStyles.title4(context)
                                        .copyWith(color: AppColors.basic.grey5),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Gap(AppSize.height(context, 8))
                    ],
                  )),
        ),
      ),
    );
  }
}

class _PromtsRowWidget extends StatelessWidget {
  const _PromtsRowWidget(
      {required this.promtColors,
      required this.promtIcons,
      required this.promtTexts,
      required this.onTap});

  final List<Color> promtColors;
  final List<String> promtIcons;
  final List<String> promtTexts;
  final Function(BuildContext, int) onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(
          4,
          (index) => InkWell(
                onTap: () => onTap(context, index),
                child: SizedBox(
                  height: AppSize.height(context, 90),
                  width: AppSize.width(context, 70),
                  child: Column(
                    children: [
                      Container(
                        height: AppSize.height(context, 48),
                        width: AppSize.width(context, 48),
                        decoration: BoxDecoration(
                            color: promtColors[index],
                            borderRadius: AppBorderRadius.smallBorder(context)),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: AppSize.width(context, 6),
                              vertical: AppSize.height(context, 6)),
                          child: AppSVGiconWidget(svgPath: promtIcons[index]),
                        ),
                      ),
                      Text(
                        promtTexts[index],
                        style: AppTextStyles.title4(context),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              )),
    );
  }
}

class _TopDevider extends StatelessWidget {
  const _TopDevider();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppSize.width(context, 38),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(AppSize.width(context, 10)),
        child: Container(
          height: AppSize.height(context, 5),
          color: AppColors.basic.grey5,
        ),
      ),
    );
  }
}
