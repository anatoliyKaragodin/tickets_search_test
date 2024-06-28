import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../utils/theme/app_adaptive_size.dart';
import '../../utils/theme/app_border_radius.dart';
import '../../utils/theme/app_colors.dart';
import '../common/app_svg_icon_widget.dart';
import '../common/app_text_field.dart';

/// Виджет для поиска билетов с двумя текстовыми полями и иконками.
class AppSearchTicketWidget extends StatelessWidget {
  const AppSearchTicketWidget({
    super.key,
    this.onTapWhereField,
    required this.controllerFrom,
    required this.controllerWhere,
    this.leadingIconPath,
    this.textFieldLeadingIconPath1,
    this.textFieldLeadingIconPath2,
    this.textFieldTrailingIconPath1,
    this.textFieldTrailingIconPath2,
    required this.textFieldsWidth,
    this.textFieldHint1,
    this.textFieldHint2,
    this.textFieldText1,
    this.textFieldText2,
    this.onLeadingIconTap,
    this.onTextField1LeadingIconTap,
    this.onTextField1TrailingIconTap,
    this.onTextField2LeadingIconTap,
    this.onTextField2TrailingIconTap,
    this.onTextField1Submitted,
    this.onTextField2Submitted,
  });

  /// Callback вызывается при нажатии на текстовое поле "куда".
  final VoidCallback? onTapWhereField;

  /// Callback вызывается при нажатии на основную иконку.
  final VoidCallback? onLeadingIconTap;

  /// Callback вызывается при нажатии на иконку в первом текстовом поле.
  final VoidCallback? onTextField1LeadingIconTap;

  /// Callback вызывается при нажатии на суффиксную иконку в первом текстовом поле.
  final VoidCallback? onTextField1TrailingIconTap;

  /// Callback вызывается при нажатии на иконку во втором текстовом поле.
  final VoidCallback? onTextField2LeadingIconTap;

  /// Callback вызывается при нажатии на суффиксную иконку во втором текстовом поле.
  final VoidCallback? onTextField2TrailingIconTap;

  /// Callback вызывается при отправке текста в первом текстовом поле.
  final Function(String)? onTextField1Submitted;

  /// Callback вызывается при отправке текста во втором текстовом поле.
  final Function(String)? onTextField2Submitted;

  /// Контроллер текстового поля "откуда".
  final TextEditingController controllerFrom;

  /// Контроллер текстового поля "куда".
  final TextEditingController controllerWhere;

  /// Путь к основной иконке.
  final String? leadingIconPath;

  /// Путь к иконке в первом текстовом поле.
  final String? textFieldLeadingIconPath1;

  /// Путь к иконке во втором текстовом поле.
  final String? textFieldLeadingIconPath2;

  /// Путь к суффиксной иконке в первом текстовом поле.
  final String? textFieldTrailingIconPath1;

  /// Путь к суффиксной иконке во втором текстовом поле.
  final String? textFieldTrailingIconPath2;

  /// Ширина текстовых полей.
  final double textFieldsWidth;

  /// Текст подсказки в первом текстовом поле.
  final String? textFieldHint1;

  /// Текст подсказки во втором текстовом поле.
  final String? textFieldHint2;

  /// Текст в первом текстовом поле.
  final String? textFieldText1;

  /// Текст во втором текстовом поле.
  final String? textFieldText2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: AppSize.width(context, 4),
            offset: Offset(0, AppSize.height(context, 4)),
            color: const Color(0xFF000000).withOpacity(0.25),
          ),
        ],
        color: AppColors.basic.grey4,
        borderRadius: AppBorderRadius.mediumBorder(context),
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: AppSize.width(context, 8),
          right: AppSize.width(context, 16),
          top: AppSize.height(context, 16),
          bottom: AppSize.height(context, 16),
        ),
        child: Row(
          children: [
            if (leadingIconPath != null)
              InkWell(
                key: const ValueKey('search_ticket_icon'),
                onTap: onLeadingIconTap,
                child: AppSVGiconWidget(
                  svgPath: leadingIconPath!,
                  color: AppColors.basic.grey7,
                ),
              ),
            Gap(AppSize.width(context, 10)),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AppTextFieldWidget(
                  leadingIconKey: 'text_field_1_leading_icon',
                  trailingIconKey: 'text_field_1_trailing_icon',
                  textFieldValueKey: 'text_field_1',
                  widgetWidth: textFieldsWidth,
                  textController: controllerFrom,
                  leadingIconPath: textFieldLeadingIconPath1,
                  trailingIconPath: textFieldTrailingIconPath1,
                  onLeadingIconTap: onTextField1LeadingIconTap,
                  onTrailingIconTap: onTextField1TrailingIconTap,
                  hintText: textFieldHint1 ?? '',
                  onTextSubmitted: (value) => onTextField1Submitted != null
                      ? onTextField1Submitted!(value)
                      : null,
                ),
                SizedBox(
                  width: AppSize.width(context, textFieldsWidth),
                  child: Divider(color: AppColors.basic.grey6),
                ),
                AppTextFieldWidget(
                  leadingIconKey: 'text_field_2_leading_icon',
                  trailingIconKey: 'text_field_2_trailing_icon',
                  textFieldValueKey: 'text_field_2',
                  widgetWidth: textFieldsWidth,
                  textController: controllerWhere,
                  leadingIconPath: textFieldLeadingIconPath2,
                  trailingIconPath: textFieldTrailingIconPath2,
                  onFieldTap: onTapWhereField,
                  onLeadingIconTap: onTextField2LeadingIconTap,
                  onTrailingIconTap: onTextField2TrailingIconTap,
                  onTextSubmitted: (value) => onTextField2Submitted != null
                      ? onTextField2Submitted!(value)
                      : null,
                  hintText: textFieldHint2 ?? '',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
