import 'package:json_annotation/json_annotation.dart';

class DateTimeMillisecondsConverter implements JsonConverter<DateTime, int> {
  const DateTimeMillisecondsConverter();

  @override
  DateTime fromJson(final int milliseconds) =>
      DateTime.fromMillisecondsSinceEpoch(milliseconds);

  @override
  int toJson(final DateTime dateTime) => dateTime.millisecondsSinceEpoch;
}
