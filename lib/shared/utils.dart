import 'package:intl/intl.dart';

class Utils {
  static Future<void> delayBy(int seconds) {
    return Future.delayed(Duration(seconds: seconds));
  }

  static DateTime parseDateTime(String incomingDateTime) {
    try {
      return DateTime.parse(incomingDateTime);
    } catch (exception) {
      return DateTime.now();
    }
  }

  static String formatDateTime(DateTime? incomingDateTime) {
    if (incomingDateTime != null) {
      DateFormat dateFormat = DateFormat("dd MMMM yyyy");
      return dateFormat.format(incomingDateTime);
    } else {
      return "N/A";
    }
  }
}
