import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:tickets_search_test/presentation/screens/main_menu_screen/home_menu_screen/tickets_search_screen/tickets_search_VM.dart';
import 'package:tickets_search_test/presentation/utils/constants/app_icons_path.dart';

import '../../utils/theme/app_adaptive_size.dart';
import '../../utils/theme/app_border_radius.dart';
import '../../utils/theme/app_colors.dart';
import '../../utils/theme/app_text_styles.dart';
import '../common/app_error_widget.dart';
import 'app_listview_offer_widget.dart';
import 'app_search_ticket_widget.dart';

class AppSearchTicketsStartWidget extends ConsumerWidget {
  const AppSearchTicketsStartWidget({
    super.key,
    required this.vm,
  });

  final ITicketsSearchVM vm;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gap(AppSize.height(context, 30)),
        const Center(
          child: _TextWidget(
            textAlign: TextAlign.center,
            horizontalPadding: 90,
            value: 'Поиск дешевых авиабилетов',
          ),
        ),
        Gap(AppSize.height(context, 33)),
        _SearchContainer(
          onTapWhereField: () => vm.onTapWhereField(context, ref),
          controllerFrom: ref.watch(vm.controllerFromProvider),
          controllerWhere: ref.watch(vm.controllerWhereProvider),
        ),
        Gap(AppSize.height(context, 32)),
        const _TextWidget(horizontalPadding: 16, value: 'Музыкально отлететь'),
        Gap(AppSize.height(context, 25)),
        SizedBox(
            height: AppSize.height(context, 214),
            child: switch (ref.watch(vm.offersProvider)) {
              AsyncData(:final value) => ListView.builder(
                  itemCount: value.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Padding(
                        padding: EdgeInsets.only(
                            left: AppSize.width(context, 16),
                            right: AppSize.width(context, 50)),
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
  const _SearchContainer(
      {required this.controllerFrom,
      required this.controllerWhere,
      required this.onTapWhereField});

  final VoidCallback? onTapWhereField;
  final TextEditingController controllerFrom;
  final TextEditingController controllerWhere;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSize.width(context, 16)),
      child: Container(
        height: AppSize.height(context, 128),
        decoration: BoxDecoration(
            color: AppColors.basic.grey3,
            borderRadius: AppBorderRadius.mediumBorder(context)),
        child: Padding(
          padding: EdgeInsets.all(AppSize.width(context, 16)),
          child: AppSearchTicketWidget(
            prefixIcon: AppIconsPath.search,
            textFieldsWidth: 232,
            textFieldHint1: 'Откуда - Москва',
            textFieldHint2: 'Куда - Турция',
            onTapWhereField: onTapWhereField,
            controllerFrom: controllerFrom,
            controllerWhere: controllerWhere,
          ),
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
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: AppSize.width(context, horizontalPadding)),
      child: Text(
        value,
        style: AppTextStyles.title1(context),
        textAlign: textAlign,
      ),
    );
  }
}