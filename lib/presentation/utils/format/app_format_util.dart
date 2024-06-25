import 'package:intl/intl.dart';

class AppFormatUtil {
  const AppFormatUtil._();

  static String price(int value) {
    return NumberFormat.currency(locale: 'ru', symbol: '₽', decimalDigits: 0)
        .format(value);
  }

  static String dateHm(DateTime date) {
    return DateFormat.Hm().format(date);
  }

  static String dateDifference(DateTime departureDate, DateTime arrivalDate) {
    double differenceInHours = arrivalDate.difference(departureDate).inMinutes / 60;

    // Округление до ближайшего целого или половины
    double roundedDifference = (differenceInHours * 2).round() / 2;

    String formattedDifference = roundedDifference.toStringAsFixed(1);
    
    // Удаление десятичной части, если она равна 0
    if (formattedDifference.endsWith('.0')) {
      formattedDifference = formattedDifference.split('.')[0];
    }

    return formattedDifference;
  }
}
