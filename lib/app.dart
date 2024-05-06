import 'package:flutter/material.dart';
import 'package:tickets_search_test/presentation/screens/main_screen/main_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        // useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}