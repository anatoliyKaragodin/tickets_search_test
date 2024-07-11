import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:tickets_search_test/domain/entities/mapper/entities_mapper.dart';
import 'package:tickets_search_test/presentation/utils/constants/app_icons_path.dart';
import 'package:tickets_search_test/presentation/utils/format/app_format_util.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_adaptive_size.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_colors.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_text_styles.dart';
import 'package:tickets_search_test/presentation/utils/widget_keys/widget_keys.dart';
import 'package:tickets_search_test/presentation/widgets/common/app_circle_widget.dart';
import 'package:tickets_search_test/presentation/widgets/common/app_svg_icon_widget.dart';

class AppTicketsOfferWidget extends StatelessWidget {
  const AppTicketsOfferWidget(
      {super.key, required this.ticketsOffer, required this.color});

  final TicketsOfferEntity ticketsOffer;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: ValueKey(WidgetKeys.ticketsSearchScreen.ticketsOfferWidget),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: AppColors.basic.grey1),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppSize.height(context, 8)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppCircleWidget(color: color),
            Gap(AppSize.width(context, 14)),
            Column(
              children: [
                SizedBox(
                  width: AppSize.width(context, 258),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(ticketsOffer.title,
                          style: AppTextStyles.title3(context).copyWith(
                            fontSize: AppSize.width(context, 14),
                          )),
                      Row(
                        children: [
                          Text(
                            AppFormatUtil.price(ticketsOffer.price.value),
                            style: AppTextStyles.title3(context).copyWith(
                                fontSize: AppSize.width(context, 14),
                                color: AppColors.special.blue),
                          ),
                          AppSVGiconWidget(
                              svgPath: AppIconsPath.rightArrow,
                              size: AppSize.width(context, 11))
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: AppSize.width(context, 258),
                  child: Text(
                    ticketsOffer.timeRange.join(' '),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                    style: AppTextStyles.title4(context),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
