import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:tickets_search_test/presentation/screens/all_tickets_screen/all_tickets_VM.dart';
import 'package:tickets_search_test/presentation/utils/constants/app_icons_path.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_adaptive_size.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_border_radius.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_colors.dart';
import 'package:tickets_search_test/presentation/widgets/common/app_svg_icon_widget.dart';

import '../../widgets/all_tickets/app_ticket_widget.dart';

class AllTicketsScreen extends ConsumerWidget {
  const AllTicketsScreen(
      {super.key,
      required this.directionFrom,
      required this.directionWhere,
      required this.date,
      required this.passengersCount});

  final String directionFrom;
  final String directionWhere;
  final DateTime date;
  final int passengersCount;


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(allTicketsProvider);

      final ticketsColor = AppColors.special.red;


    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppSize.width(context, 16)),
      child: Column(
        children: [
          Gap(AppSize.height(context, 16)),
          _RouteInfoWidget(
              directionFrom: directionFrom,
              directionWhere: directionWhere,
              date: date,
              passengersCount: passengersCount),
              Gap(AppSize.height(context, 34)),
          Column(
            children: List.generate(
                state.tickets.length,
                (index) => Padding(
                  padding: EdgeInsets.only(bottom: AppSize.height(context, 16)),
                  child: AppTicketWidget(
                      ticket: state.tickets[index], color: ticketsColor),
                )),
          ),
          Gap(AppSize.height(context, 18))
        ],
      ),
    );
  }
}

class _RouteInfoWidget extends ConsumerWidget {
  const _RouteInfoWidget({
    required this.directionFrom,
    required this.directionWhere,
    required this.date,
    required this.passengersCount,
  });

  final String directionFrom;
  final String directionWhere;
  final DateTime date;
  final int passengersCount;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: AppSize.height(context, 56),
      width: double.infinity,
      decoration: BoxDecoration(
          color: AppColors.basic.grey2,
          borderRadius: AppBorderRadius.smallBorder(context)),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.only(
                left: AppSize.width(context, 5),
                right: AppSize.width(context, 14)),
            child: InkWell(
              onTap: () => ref.read(allTicketsProvider.notifier).onTapBack(),
              child: AppSVGiconWidget(
                svgPath: AppIconsPath.leftArrow,
                color: AppColors.special.blue,
              ),
            ),
          ),
          Column(
            children: [
              Text("$directionFrom-$directionWhere"),
              Text(
                  "${DateFormat('d MMMM', 'ru').format(date)}, $passengersCount пассажир")
            ],
          )
        ],
      ),
    );
  }
}
