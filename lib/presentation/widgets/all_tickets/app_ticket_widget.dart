import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:tickets_search_test/domain/entities/mapper/entities_mapper.dart';
import 'package:tickets_search_test/presentation/utils/format/app_format_util.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_adaptive_size.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_border_radius.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_colors.dart';
import 'package:tickets_search_test/presentation/widgets/common/app_circle_widget.dart';

class AppTicketWidget extends StatelessWidget {
  const AppTicketWidget({super.key, required this.ticket, required this.color});

  final TicketEntity ticket;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSize.height(context, 117),
      decoration: BoxDecoration(
          color: AppColors.basic.grey2,
          borderRadius: AppBorderRadius.smallBorder(context)),
      child: Column(
        children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Text(AppFormatUtil.price(ticket.price.value))),
          Row(
            children: [
              AppCircleWidget(color: color),
              _DepartureArrivalWidget(
                date: ticket.departure.date,
                airport: ticket.departure.airport,
              ),
              const Text('—'),
              _DepartureArrivalWidget(
                date: ticket.arrival.date,
                airport: ticket.arrival.airport,
              ),
              Row(
                children: [
                  Text(
                      "${AppFormatUtil.dateDifference(ticket.departure.date, ticket.arrival.date)}ч в пути"),
                  if (!ticket.hasTransfer) const Text('/Без пересадок')
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}

class _DepartureArrivalWidget extends StatelessWidget {
  const _DepartureArrivalWidget({required this.date, required this.airport});

  final DateTime date;
  final String airport;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Text(AppFormatUtil.dateHm(date)), Text(airport)],
    );
  }
}
