import 'package:get/get.dart';
import 'package:intl/intl.dart';

class DateUtil {
  static String getOrderTimeFormat(
      DateTime startDateTime, DateTime endDateTime) {
    return DateFormat('dd MMMM HH:mm', checkLocale).format(startDateTime) +
        ' - ${DateFormat('HH:mm').format(endDateTime)}';
  }

  static String getDefaultTimeFormat(DateTime dateTime) {
    return DateFormat('dd MMMM HH:mm', checkLocale).format(dateTime);
  }

  static String getHHmm(DateTime dateTime) {
    return DateFormat('HH:mm', 'ru').format(dateTime);
  }

  static String get checkLocale => 'ru_RU';
}
