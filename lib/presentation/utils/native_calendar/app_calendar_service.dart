import 'package:flutter/services.dart';

class AppCalendarService {
  const AppCalendarService._();

  static const platform = MethodChannel('calendar_channel');

  static Future<String?> openCalendar() async {
    try {
      return platform.invokeMethod('openCalendar');
    } on PlatformException catch (e) {
      print("Failed to open calendar: '${e.message}'.");
    }
    return null;
  }

  // static Future<String?> getSelectedDate() async {
  //   try {
  //     return await platform.invokeMethod('getSelectedDate');
  //   } on PlatformException catch (e) {
  //     print("Failed to get selected date: '${e.message}'.");
  //     return null;
  //   }
  // }

  // static Future<void> closeCalendar() async {
  //   try {
  //     await platform.invokeMethod('closeCalendar');
  //   } on PlatformException catch (e) {
  //     print("Failed to close calendar: '${e.message}'.");
  //   }
  // }
}
