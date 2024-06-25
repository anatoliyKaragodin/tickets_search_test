import 'package:flutter/material.dart';
import 'package:tickets_search_test/presentation/router/app_router.dart';

class DifficultRouteScreen extends StatelessWidget {
  const DifficultRouteScreen({super.key});

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
    ));
  }
}
