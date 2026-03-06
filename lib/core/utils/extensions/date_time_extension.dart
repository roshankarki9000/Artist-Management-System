import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  DateTime formatToDateTime({String? format}) {
    var defaultFormat = format ?? 'yyyy-MM-dd';
    return DateFormat(
      defaultFormat,
    ).parse(formatToDateTimeString(format: defaultFormat));
  }

  String formatToDateTimeString({String? format}) {
    try {
      var defaultFormat = format ?? 'yyyy-MM-dd';
      String initialData = '';

      if (defaultFormat.contains('dth')) {
        var suffix = "th";
        var digit = day % 10;
        if ((digit > 0 && digit < 4) && (day < 11 || day > 13)) {
          suffix = ["st", "nd", "rd"][digit - 1];
        }
        defaultFormat = defaultFormat.replaceAll('dth', "d'$suffix'");
      }

      initialData = DateFormat(defaultFormat).format(this);
      return initialData.toString();
    } catch (e) {
      return 'could not format date';
    }
  }
}
