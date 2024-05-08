import 'package:flutter/material.dart';
import 'package:tickets_search_test/app.dart';
import 'package:tickets_search_test/domain/di/di_container.dart';
import 'package:tickets_search_test/presentation/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  RouterHelper.instance;

  await setupDI();

  runApp(const App());
}
