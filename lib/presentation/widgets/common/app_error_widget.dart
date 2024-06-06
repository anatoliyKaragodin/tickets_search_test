import 'package:flutter/material.dart';

class AppErrorWidget extends StatelessWidget {
  const AppErrorWidget({super.key, required this.error, required this.stackTrace});

  final Object error;
  final StackTrace stackTrace;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Error: $error\n StackTrace: $stackTrace'),
      ),
    );
  }
}
