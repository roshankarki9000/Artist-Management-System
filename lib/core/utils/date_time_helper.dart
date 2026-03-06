import 'package:artist_management/core/utils/extensions/date_time_extension.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

class DateTimeConverter implements JsonConverter<DateTime, String> {
  const DateTimeConverter();

  @override
  DateTime fromJson(String json) {
    var defaultFormat = 'yyyy-MM-dd';
    return DateFormat(defaultFormat).parse(json);
  }

  @override
  String toJson(DateTime object) {
    var defaultFormat = 'yyyy-MM-dd';
    return object.formatToDateTimeString(format: defaultFormat);
  }
}
