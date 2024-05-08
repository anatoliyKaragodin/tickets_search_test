import 'package:flutter/material.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_colors.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_text_styles.dart';
import 'package:tickets_search_test/presentation/widgets/app_svg_icon_widget.dart';

class AppBottomNavigationBarWidget extends StatefulWidget {
  const AppBottomNavigationBarWidget(
      {super.key,
      this.iconPaths = const [
        'airplane.svg',
        'car.svg',
        'geopoint.svg',
        'bell.svg',
        'person.svg'
      ],
      this.labels = const [
        'Авиабилеты',
        'Отели',
        'Короче',
        'Подписки',
        'Профиль'
      ],
      required this.onTap,
      this.backgroundColor
      });

  final List<String> iconPaths;
  final List<String> labels;
  final Function(int) onTap;
  final Color? backgroundColor;

  @override
  State<AppBottomNavigationBarWidget> createState() =>
      _AppBottomNavigationBarWidgetState();
}

class _AppBottomNavigationBarWidgetState
    extends State<AppBottomNavigationBarWidget> {
  final Color _selectedColor = AppColors.special.darkBlue;
  final Color _unselectedColor = AppColors.basic.grey5;

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: widget.backgroundColor,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        unselectedItemColor: _unselectedColor,
        selectedItemColor: _selectedColor,
        selectedLabelStyle:
            AppTextStyles.tabText(context).copyWith(color: _selectedColor),
        unselectedLabelStyle:
            AppTextStyles.tabText(context).copyWith(color: _unselectedColor),
        showUnselectedLabels: true,
        onTap: (int index) {
          _currentIndex = index;
          setState(() {
            widget.onTap(index);
          });
        },
        items: List.generate(
            widget.iconPaths.length,
            (index) => BottomNavigationBarItem(
                icon: AppSVGiconWidget(
                  svgPath: widget.iconPaths[index],
                  color: _currentIndex == index
                      ? _selectedColor
                      : _unselectedColor,
                ),
                label: widget.labels[index])));
  }
}
