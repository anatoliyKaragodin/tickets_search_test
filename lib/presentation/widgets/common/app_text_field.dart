import 'package:flutter/material.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_colors.dart';
import 'package:tickets_search_test/presentation/widgets/common/app_svg_icon_widget.dart';
import '../../utils/theme/app_adaptive_size.dart';
import '../../utils/theme/app_text_styles.dart';

/// Виджет текстового поля с иконками
class AppTextFieldWidget extends StatelessWidget {
  const AppTextFieldWidget(
      {super.key,
      this.onTextChanged,
      this.onTextSubmitted,
      this.onFieldTap,
      required this.hintText,
      this.leadingIconPath,
      required this.textController,
      this.trailingIconPath,
      required this.widgetWidth,
      this.onTrailingIconTap,
      this.onLeadingIconTap,
      required this.textFieldValueKey,
      required this.leadingIconKey,
      required this.trailingIconKey});

  /// Callback вызывается при изменении текста.
  final Function(String)? onTextChanged;

  /// Callback вызывается при отправке текста.
  final Function(String)? onTextSubmitted;

  /// Callback вызывается при нажатии на текстовое поле.
  final VoidCallback? onFieldTap;

  /// Текст подсказки.
  final String hintText;

  /// Путь к иконке, отображаемой слева.
  final String? leadingIconPath;

  /// Путь к иконке, отображаемой справа.
  final String? trailingIconPath;

  /// Контроллер текстового поля.
  final TextEditingController textController;

  /// Ширина виджета.
  final double widgetWidth;

  /// Callback вызывается при нажатии на правую иконку.
  final VoidCallback? onTrailingIconTap;

  /// Callback вызывается при нажатии на левую иконку.
  final VoidCallback? onLeadingIconTap;

  /// Ключ текстфилда для тестирования
  final String textFieldValueKey;

  /// Ключ правой иконки
  final String trailingIconKey;

  /// Ключ левой иконки
  final String leadingIconKey;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.height(context, 23),
      width: AppSize.width(context, widgetWidth),
      child: TextField(
        key: ValueKey(textFieldValueKey),
        onTap: onFieldTap,
        controller: textController,
        onChanged: onTextChanged,
        onSubmitted: onTextSubmitted,
        textAlignVertical: TextAlignVertical.top,
        style: AppTextStyles.buttonText1(context).copyWith(
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          hintStyle: AppTextStyles.buttonText1(context).copyWith(
            fontWeight: FontWeight.w600,
            color: AppColors.basic.grey6,
          ),
          prefixIcon: leadingIconPath != null
              ? GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  key: ValueKey(leadingIconKey),
                  onTap: onLeadingIconTap,
                  child: AppSVGiconWidget(
                    svgPath: leadingIconPath!,
                    color: AppColors.basic.grey6,
                  ),
                )
              : null,
          suffixIcon: trailingIconPath != null
              ? GestureDetector(
                  behavior: HitTestBehavior.translucent,
                  key: ValueKey(trailingIconKey),
                  onTap: onTrailingIconTap,
                  child: AppSVGiconWidget(
                    svgPath: trailingIconPath!,
                    color: AppColors.basic.grey6,
                  ),
                )
              : null,
          prefixIconConstraints: leadingIconPath != null
              ? BoxConstraints.tight(
                  Size(AppSize.width(context, 24), AppSize.height(context, 24)))
              : null,
          suffixIconConstraints: trailingIconPath != null
              ? BoxConstraints.tight(
                  Size(AppSize.width(context, 24), AppSize.height(context, 24)))
              : null,
          contentPadding: EdgeInsets.only(
              bottom: AppSize.height(context, 14)), // Сдвиг текста
          hintText: textController.text.isEmpty ? hintText : null,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
