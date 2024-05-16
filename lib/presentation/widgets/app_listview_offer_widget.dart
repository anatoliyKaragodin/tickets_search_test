import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:tickets_search_test/domain/entities/mapper/entities_mapper.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_adaptive_size.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_border_radius.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_text_styles.dart';
import 'package:tickets_search_test/presentation/widgets/app_svg_icon_widget.dart';
import 'package:intl/intl.dart';

class AppListviewOfferWidget extends StatelessWidget {
  const AppListviewOfferWidget({super.key, required this.offer});

  final OfferEntity offer;

  @override
  Widget build(BuildContext context) {
    final size = AppAdaptiveSize(context);

    return SizedBox(
      height: size.heightInPixels(214),
      width: size.widthInPixels(132),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: AppBorderRadius.mediumBorder(context),
            child: Image.asset(
              'assets/images/${offer.id}.png',
              fit: BoxFit.cover,
              height: size.heightInPixels(120),
            ),
          ),
          Gap(size.heightInPixels(8)),
          Text(
            offer.title,
            style: AppTextStyles.title3(context).copyWith(fontSize: 16),
          ),
          Gap(size.heightInPixels(8)),
          Text(offer.town, style: AppTextStyles.title4(context)),
          Gap(size.heightInPixels(4)),
          Row(
            children: [
              const AppSVGiconWidget(svgPath: 'airplane.svg'),
              Text(
                  'от ${NumberFormat.currency(locale: 'ru', symbol: 'Р', decimalDigits: 0).format(offer.price.value)}',
                  style: AppTextStyles.title4(context))
            ],
          )
        ],
      ),
    );
  }
}
