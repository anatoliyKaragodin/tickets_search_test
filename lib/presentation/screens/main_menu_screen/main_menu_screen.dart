import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tickets_search_test/presentation/router/app_router.dart';
import 'package:tickets_search_test/presentation/utils/theme/app_colors.dart';
import 'package:tickets_search_test/presentation/widgets/all_tickets/app_filter_floating_container_widget.dart';

import '../../widgets/main_menu/app_bottom_navigation_bar_widget.dart';


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
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: AppColors.basic.black,
      body: SafeArea(child: SingleChildScrollView(child: widget.child)),
      floatingActionButton:
          RouterHelper.router.routeInformationProvider.value.uri.toString() ==
                  '/tickets/all_tickets'
              ? const AppFilterFloatingContainerWidget()
              : null,
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
