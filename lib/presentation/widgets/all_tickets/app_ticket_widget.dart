import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:tickets_search_test/domain/entities/mapper/entities_mapper.dart';
import 'package:tickets_search_test/presentation/utils/format/app_format_util.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_adaptive_size.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_border_radius.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_colors.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_text_styles.dart';
import 'package:tickets_search_test/presentation/widgets/common/app_circle_widget.dart';

class AppTicketWidget extends StatefulWidget {
  const AppTicketWidget({super.key, required this.ticket, required this.color});

  final TicketEntity ticket;
  final Color color;

  @override
  State<AppTicketWidget> createState() => _AppTicketWidgetState();
}

class _AppTicketWidgetState extends State<AppTicketWidget> {
  final _badgeKey = GlobalKey();
  double badgeHeight = 0;

  @override
  void initState() {
    super.initState();
    // Вызываем метод вычисления высоты контейнера бейджа
    WidgetsBinding.instance.addPostFrameCallback((_) => updateBadgeHeight());
  }

  // Вычисляет высоту контейнера бейджа, чтобы задать правильную позицию
  void updateBadgeHeight() {
    if (_badgeKey.currentContext != null) {
      final RenderBox renderBox =
          _badgeKey.currentContext!.findRenderObject() as RenderBox;
      final double height = renderBox.size.height;
      if (mounted) {
        setState(() {
          badgeHeight = height;
        });
      }
    } else {
      WidgetsBinding.instance.addPostFrameCallback((_) => updateBadgeHeight());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: AppSize.height(context, widget.ticket.badge.isNotEmpty ? 8 : 0)),
      child: Container(
        key: const ValueKey('ticket_widget'),
        width: double.infinity,
        decoration: BoxDecoration(
            color: AppColors.basic.grey2,
            borderRadius: AppBorderRadius.smallBorder(context)),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            if (widget.ticket.badge.isNotEmpty)
              _BadgeWidget(
                  badgeHeight: badgeHeight,
                  badgeKey: _badgeKey,
                  widget: widget),
            Padding(
              padding: EdgeInsets.only(
                  left: AppSize.width(context, 12),
                  top: AppSize.height(context, 16),
                  bottom: AppSize.height(context, 16)),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        AppFormatUtil.price(widget.ticket.price.value),
                        style: AppTextStyles.title1(context),
                      )),
                  Gap(AppSize.height(context, 16)),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: AppSize.height(context, 38),
                        child: Center(
                          child: AppCircleWidget(color: widget.color)),
                      ),
                      Gap(AppSize.width(context, 7)),
                      _DepartureArrivalWidget(
                        date: widget.ticket.departure.date,
                        airport: widget.ticket.departure.airport,
                      ),
                      Text(
                        ' — ',
                        style: AppTextStyles.title4(context).copyWith(
                            fontStyle: FontStyle.italic,
                            color: AppColors.basic.grey6),
                      ),
                      _DepartureArrivalWidget(
                        date: widget.ticket.arrival.date,
                        airport: widget.ticket.arrival.airport,
                      ),
                      Gap(AppSize.width(context, 8)),
                      Row(
                        children: [
                          Text(
                              "${AppFormatUtil.dateDifference(widget.ticket.departure.date, widget.ticket.arrival.date)}ч в пути",
                              style: AppTextStyles.text2(context)
                                  .copyWith(fontWeight: FontWeight.w400)),
                          if (!widget.ticket.hasTransfer)
                            Text(' / Без пересадок',
                                style: AppTextStyles.text2(context)
                                    .copyWith(fontWeight: FontWeight.w400))
                        ],
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _BadgeWidget extends StatelessWidget {
  const _BadgeWidget({
    required this.badgeHeight,
    required GlobalKey<State<StatefulWidget>> badgeKey,
    required this.widget,
  }) : _badgeKey = badgeKey;

  final double badgeHeight;
  final GlobalKey<State<StatefulWidget>> _badgeKey;
  final AppTicketWidget widget;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: -0.5 * badgeHeight,
      left: 0,
      child: Container(
        key: _badgeKey,
        decoration: BoxDecoration(
          color: AppColors.special.blue,
          borderRadius: AppBorderRadius.bigBorder(context),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: AppSize.width(context, 10),
              vertical: AppSize.height(context, 2)),
          child: Text(
            widget.ticket.badge,
            style: AppTextStyles.title4(context)
                .copyWith(fontWeight: FontWeight.w500),
          ),
        ),
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppFormatUtil.dateHm(date),
          style: AppTextStyles.title4(context)
              .copyWith(fontStyle: FontStyle.italic),
        ),
        Text(
          airport,
          style: AppTextStyles.title4(context).copyWith(
              fontStyle: FontStyle.italic, color: AppColors.basic.grey6),
        )
      ],
    );
  }
}
