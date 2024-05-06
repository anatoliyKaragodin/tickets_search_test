import 'package:flutter/material.dart';
import 'package:tickets_search_test/app.dart';
import 'package:tickets_search_test/domain/di/di_container.dart';

void main() async {
  
  await setupDI();

  runApp(const App());
}
