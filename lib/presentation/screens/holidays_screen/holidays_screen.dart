import 'package:flutter/material.dart';

import '../../router/app_router.dart';

class HolidaysScreen extends StatelessWidget {
  const HolidaysScreen({super.key});

  @override
  Widget build(BuildContext context) {
return Scaffold(
        appBar: AppBar(
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          RouterHelper.router.go(RouterHelper.ticketsPath);
        },
      ),
    ));  }
}