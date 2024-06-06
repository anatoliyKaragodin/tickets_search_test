import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_colors.dart';

import '../../widgets/app_bottom_navigation_bar_widget.dart';

class MainMenuScreen extends StatefulWidget {
  const MainMenuScreen({super.key, required this.child});

  final StatefulNavigationShell child;

  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.basic.black,
      body: SafeArea(child: SingleChildScrollView(child: widget.child)),
      bottomNavigationBar: AppBottomNavigationBarWidget(
        backgroundColor: AppColors.basic.black,
        onTap: (index) {
          widget.child.goBranch(
            index,
            initialLocation: index == widget.child.currentIndex,
          );
          setState(() {});
        },
      ),
    );
  }
}
