import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:tickets_search_test/presentation/mapper/states_mapper.dart';
import 'package:tickets_search_test/presentation/screens/tickets_search_screen/tickets_search_VM.dart';
import 'package:tickets_search_test/presentation/utils/constants/app_icons_path.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_border_radius.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_colors.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_text_styles.dart';
import 'package:tickets_search_test/presentation/utils/widget_keys/widget_keys.dart';
import 'package:tickets_search_test/presentation/widgets/common/app_svg_icon_widget.dart';

import '../../utils/theme/app_adaptive_size.dart';
import 'app_search_ticket_widget.dart';
import 'app_tickets_offer_widget.dart';

class AppSearchTicktesDirectionChosenWidget extends ConsumerWidget {
  const AppSearchTicktesDirectionChosenWidget({super.key, required this.state});

  final TicketsSearchScreenState state;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final optionsIcons = [
      state.returnDate != null ? '' : AppIconsPath.plus,
      '',
      AppIconsPath.person,
      AppIconsPath.filter
    ];
    final optionsTexts = [
      state.returnDate != null
          ? 'обратно: ${DateFormat('d MMM, EEE', 'ru').format(state.returnDate!)}'
          : 'обратно',
      DateFormat('d MMM, EEE', 'ru').format(state.date),
      '1, эконом',
      'фильтры'
    ];
    final offerColors = [
      AppColors.special.red,
      AppColors.special.darkBlue,
      AppColors.basic.white
    ];

    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Gap(AppSize.height(context, 47)),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: AppSize.height(context, 16)),
          child: AppSearchTicketWidget(
            onLeadingIconTap: () => ref
                .read(ticketsSearchVMprovider.notifier)
                .showSearchTicketsDialog(context),
            onTextField1TrailingIconTap: () =>
                ref.read(ticketsSearchVMprovider.notifier).swapRoutes(),
            onTextField2TrailingIconTap: () =>
                ref.read(ticketsSearchVMprovider.notifier).clearWhereText(),
            controllerFrom: state.controllerFrom,
            controllerWhere: state.controllerWhere,
            textFieldsWidth: 270,
            leadingIconPath: AppIconsPath.leftArrow,
            textFieldTrailingIconPath1: AppIconsPath.sort,
            textFieldTrailingIconPath2: AppIconsPath.close,
          ),
        ),
        Gap(AppSize.height(context, 15)),
        _OptionsRow(
            optionsIcons: optionsIcons,
            optionsTexts: optionsTexts,
            onTapList: [
              () => ref
                  .read(ticketsSearchVMprovider.notifier)
                  .onSelectReturnDate(context),
              () => ref
                  .read(ticketsSearchVMprovider.notifier)
                  .onChangeDate(context),
              null,
              null
            ]),
        Gap(AppSize.height(context, 15)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSize.width(context, 16)),
          child: _TicketsWidget(state: state, offerColors: offerColors),
        ),
        Gap(AppSize.height(context, 18)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppSize.width(context, 16)),
          child: _ShowAllTicketsWidget(
            onTapShowAllTickets: () => ref
                .read(ticketsSearchVMprovider.notifier)
                .onTapShowAllTickets(),
          ),
        )
      ]),
    );
  }
}

class _ShowAllTicketsWidget extends StatelessWidget {
  const _ShowAllTicketsWidget({required this.onTapShowAllTickets});

  final VoidCallback onTapShowAllTickets;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: AppSize.height(context, 42),
      child: TextButton(
        key: ValueKey(WidgetKeys.ticketsSearchScreen.showAllTicketsButton),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(AppColors.special.blue),
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: AppBorderRadius.smallBorder(context),
              ),
            ),
          ),
          onPressed: () => onTapShowAllTickets(),
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
    required this.state,
    required this.offerColors,
  });

  final TicketsSearchScreenState state;
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
                child: Column(
                    children: List.generate(
                        3,
                        (index) => AppTicketsOfferWidget(
                              ticketsOffer: state.ticketsOffers[index],
                              color: offerColors[index],
                            ))),
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
                  key: ValueKey('direction_chosen_option_button$index'),
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
