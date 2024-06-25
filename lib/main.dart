import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:tickets_search_test/app.dart';
import 'package:tickets_search_test/domain/di/di_container.dart';
import 'package:tickets_search_test/presentation/router/app_router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  RouterHelper.instance;

  await initializeDateFormatting('ru', null);
  
  await setupDI();

  runApp(const ProviderScope(child: App()));
}
