import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:tickets_search_test/presentation/screens/main_menu_screen/home_menu_screen/tickets_search_screen/tickets_search_VM.dart';
import 'package:tickets_search_test/presentation/utils/constants/app_icons_path.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_border_radius.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_colors.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_text_styles.dart';
import 'package:tickets_search_test/presentation/widgets/common/app_svg_icon_widget.dart';

import '../../utils/theme/app_adaptive_size.dart';
import '../common/app_error_widget.dart';
import 'app_search_ticket_widget.dart';
import 'app_tickets_offer_widget.dart';

class AppSearchTicktesDirectionChosenWidget extends ConsumerWidget {
  const AppSearchTicktesDirectionChosenWidget({super.key, required this.vm});

  final ITicketsSearchVM vm;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final optionsIcons = [
      AppIconsPath.plus,
      '',
      AppIconsPath.person,
      AppIconsPath.filter
    ];
    final optionsTexts = [
      'обратно',
      DateFormat('d MMM, EEE', 'ru').format(ref.watch(vm.date)),
      '1, эконом',
      'фильтры'
    ];
    final offerColors = [
      AppColors.special.red,
      AppColors.special.darkBlue,
      AppColors.basic.white
    ];

    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Gap(AppSize.height(context, 47)),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.height(context, 16)),
        child: AppSearchTicketWidget(
          controllerFrom: ref.watch(vm.controllerFromProvider),
          controllerWhere: ref.watch(vm.controllerWhereProvider),
          textFieldsWidth: 270,
          prefixIcon: AppIconsPath.leftArrow,
          textFieldTrailingIcon1: AppIconsPath.sort,
          textFieldTrailingIcon2: AppIconsPath.close,
        ),
      ),
      Gap(AppSize.height(context, 15)),
      _OptionsRow(
          optionsIcons: optionsIcons,
          optionsTexts: optionsTexts,
          onTapList: [null, () => vm.onChangeDate(context, ref), null, null]),
      Gap(AppSize.height(context, 15)),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.width(context, 16)),
        child: _TicketsWidget(vm: vm, offerColors: offerColors),
      ),
      Gap(AppSize.height(context, 18)),
      Padding(
        padding: EdgeInsets.symmetric(horizontal: AppSize.width(context, 16)),
        child: const _ShowAllTicketsWidget(),
      )
    ]);
  }
}

class _ShowAllTicketsWidget extends StatelessWidget {
  const _ShowAllTicketsWidget();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: AppSize.height(context, 42),
      child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.special.blue),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: AppBorderRadius.smallBorder(context),
              ),
            ),
          ),
          onPressed: null,
          child: Text(
            'Посмотреть все билеты',
            style: AppTextStyles.title3(context)
                .copyWith(color: AppColors.basic.white),
          )),
    );
  }
}

class _TicketsWidget extends ConsumerWidget {
  const _TicketsWidget({
    required this.vm,
    required this.offerColors,
  });

  final ITicketsSearchVM vm;
  final List<Color> offerColors;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
        decoration: BoxDecoration(
            color: AppColors.basic.grey2,
            borderRadius: AppBorderRadius.mediumBorder(context)),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppSize.width(context, 16),
              vertical: AppSize.height(context, 16)),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Прямые рейсы',
                  style: AppTextStyles.title2(context),
                ),
              ),
              SizedBox(
                child: switch (ref.watch(vm.ticketsOffersProvider)) {
                  AsyncData(:final value) => Column(
                      children: List.generate(
                          3,
                          (index) => AppTicketsOfferWidget(
                                ticketsOffer: value[index],
                                color: offerColors[index],
                              ))),
                  AsyncError(:final error, :final stackTrace) => AppErrorWidget(
                      error: error,
                      stackTrace: stackTrace,
                    ),
                  _ => const Center(child: CircularProgressIndicator())
                },
              ),
            ],
          ),
        ));
  }
}

class _OptionsRow extends StatelessWidget {
  const _OptionsRow({
    required this.optionsIcons,
    required this.optionsTexts,
    required this.onTapList,
  });

  final List<String> optionsIcons;
  final List<String> optionsTexts;
  final List<VoidCallback?> onTapList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.height(context, 33),
      child: ListView.builder(
          padding: EdgeInsets.only(left: AppSize.width(context, 16)),
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) => Padding(
                padding: EdgeInsets.only(right: AppSize.width(context, 8)),
                child: InkWell(
                  onTap: onTapList[index],
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors.basic.grey3,
                        borderRadius: AppBorderRadius.bigBorder(context)),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: AppSize.width(context, 10)),
                      child: Row(
                        children: [
                          if (optionsIcons[index].isNotEmpty)
                            AppSVGiconWidget(
                              svgPath: optionsIcons[index],
                              size: 16,
                            ),
                          if (optionsIcons[index].isNotEmpty)
                            Gap(AppSize.width(context, 8)),
                          Text(
                            optionsTexts[index],
                            style: AppTextStyles.title3(context)
                                .copyWith(fontSize: AppSize.width(context, 14)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )),
    );
  }
}
